#include "defines.h"
#include "kozos.h"
#include "intr.h"
#include "interrupt.h"
#include "syscall.h"
#include "lib.h"

  static void thread_intr(softvec_type_t type, unsigned long sp);

#define THREAD_NUM 6
#define THREAD_NAME_SIZE 15

/* �����åɡ������ƥ����� */
typedef struct _kz_context {
  uint32 sp; /* �����å����ݥ����� */
} kz_context;

/* �������������ȥ����롦�֥��å�(TCB) */
typedef struct _kz_thread {
  struct _kz_thread *next;
  char name[THREAD_NAME_SIZE + 1]; /* �����å�̾ */
  char *stack;    /* �����å� */

  struct { /* �����åɤΥ������ȡ����å�(thread_init())���Ϥ��ѥ��᡼�� */
    kz_func_t func; /* �����åɤΥᥤ���ؿ� */
    int argc;       /* �����åɤΥᥤ���ؿ����Ϥ� argc */
    char **argv;    /* �����åɤΥᥤ���ؿ����Ϥ� argv */
  } init;

  struct { /* �����ƥࡦ�������ѥХåե� */
    kz_syscall_type_t type;
    kz_syscall_param_t *param;
  } syscall;

  kz_context context; /* �����ƥ����Ⱦ��� */
} kz_thread;

/* �����åɤΥ��ǥ��������塼 */
static struct {
  kz_thread *head;
  kz_thread *tail;
} readyque;

static kz_thread *current; /* �������ȡ������å� */
static kz_thread threads[THREAD_NUM]; /* �������������ȥ����롦�֥��å� */
static kz_handler_t handlers[SOFTVEC_TYPE_NUM]; /* �����ߥϥ��ɥ� */

extern void dispatch1(kz_context *context);
extern void dispatch2(kz_context *context);

/* �������ȡ������åɤ����ǥ��������塼����ȴ���Ф� */
static int getcurrent(void)
{
  if (current == NULL) {
    return -1;
  }

  /* �������ȡ������åɤ�ɬ����Ƭ�ˤ����Ϥ��ʤΤǡ���Ƭ����ȴ���Ф� */
  readyque.head = current->next;
  if (readyque.head == NULL) {
    readyque.tail = NULL;
  }
  current->next = NULL;

  return 0;
}

/* �������ȡ������åɤ����ǥ��������塼�˷Ҥ��� */
static int putcurrent(void)
{
  if (current == NULL) {
    return -1;
  }

  /* ���ǥ��������塼����������³���� */
  if (readyque.tail) {
    readyque.tail->next = current;
  } else {
    readyque.head = current;
  }
  readyque.tail = current;

  return 0;
}

static void thread_end(void)
{
  kz_exit();
}

/* �����åɤΥ������ȡ����å� */
static void thread_init(kz_thread *thp)
{
  /* �����åɤΥᥤ���ؿ����ƤӽФ� */
  thp->init.func(thp->init.argc, thp->init.argv);
  thread_end();
}

void start_dispatch(void){
  puts("diapatch_start");
}

/* �����ƥࡦ�������ν���(kz_run():�����åɤε�ư) */
static kz_thread_id_t thread_run(kz_func_t func, char *name,
				 int stacksize, int argc, char *argv[])
{
  int i;
  kz_thread *thp;
  uint32 *sp;
  extern char _userstack; /* ���󥫡��������ץȤ����������륹���å��ΰ� */
  static char *thread_stack = 0xA0007000;//&_userstack;

  /* �����Ƥ��륿�����������ȥ����롦�֥��å��򸡺� */
  for (i = 0; i < THREAD_NUM; i++) {
    thp = &threads[i];
    if (!thp->init.func) /* ���Ĥ��ä� */
      break;
  }
  if (i == THREAD_NUM) /* ���Ĥ����ʤ��ä� */
    return -1;

  memset(thp, 0, sizeof(*thp));

  /* �������������ȥ����롦�֥��å�(TCB)������ */
  strcpy(thp->name, name);
  thp->next     = NULL;

  thp->init.func = func;
  thp->init.argc = argc;
  thp->init.argv = argv;
  /* �����å��ΰ������� */
  memset(thread_stack, 0, stacksize);
  thread_stack += stacksize;

  thp->stack = thread_stack; /* �����å������� */

  /* �����å��ν����� */
  sp = (uint32 *)thp->stack;
//  *(--sp) = (uint32)thread_end;

  /*
   * �ץ������ࡦ�����󥿤����ꤹ�롥
   */
   *(--sp) = 0; /* C0_status */
   *(--sp) = (uint32)thread_init;/*C0_EPC $12 for eret*/
putxval(sp,0);
puts(" ");
   *(--sp) = 0; /* Hi */
   *(--sp) = 0; /* Lo */

   *(--sp) = (uint32)thread_end; /* $31 */
   *(--sp) = 0; /* $30 */
 //skip $29
   *(--sp) = 0; /* $28 */
 //skip $27
 //skip $26
   *(--sp) = 0; /* $25 */
   *(--sp) = 0; /* $24 */
   *(--sp) = 0; /* $23 */
   *(--sp) = 0; /* $22 */
   *(--sp) = 0; /* $21 */
   *(--sp) = 0; /* $20 */
   *(--sp) = 0; /* $19 */
   *(--sp) = 0; /* $18 */
   *(--sp) = 0; /* $17 */
   *(--sp) = 0; /* $16 */
   *(--sp) = 0; /* $15 */
   *(--sp) = 0; /* $14 */
   *(--sp) = 0; /* $13 */
   *(--sp) = 0; /* $12 */
   *(--sp) = 0; /* $11 */
   *(--sp) = 0; /* $10 */
   *(--sp) = 0; /* $9 */
   *(--sp) = 0; /* $8 */
   *(--sp) = 0; /* $7 */
   *(--sp) = 0; /* $6 */
   *(--sp) = 0; /* $5 */
   *(--sp) = (uint32)thp;  /* $4 $a0 */
   *(--sp) = 0; /* $3 */
   *(--sp) = 0; /* $2 */
   *(--sp) = 0; /* $1 */
   putxval(sp,0);
   puts(" ");
  /* �����åɤΥ������ȡ����å�(thread_init())���Ϥ����� */
//  *(--sp) = (uint32)thp;  /* ER0 */
  /* �����åɤΥ����ƥ����Ȥ����� */
  thp->context.sp = (uint32)sp;

  /* �����ƥࡦ���������ƤӽФ��������åɤ����ǥ��������塼���᤹ */
  putcurrent();

  /* �����������������åɤ򡤥��ǥ��������塼����³���� */
  current = thp;
  putcurrent();
  putxval(thp->context.sp,0);
  puts(" ");
  return (kz_thread_id_t)current;
}

/* �����ƥࡦ�������ν���(kz_exit():�����åɤν�λ) */
static int thread_exit(void)
{
  /*
   * �����ʤ饹���å����������ƺ����ѤǤ����褦�ˤ��٤�������ά��
   * ���Τ��ᡤ�����åɤ����ˤ��������õ���褦�ʤ��Ȥϸ����ǤǤ��ʤ���
   */
  puts(current->name);
  puts(" EXIT.\n");
  memset(current, 0, sizeof(*current));
  return 0;
}

/* �����ߥϥ��ɥ�����Ͽ */
static int setintr(softvec_type_t type, kz_handler_t handler)
{


  /*
   * �����ߤ������դ��뤿���ˡ����եȥ������������ߥ٥�����
   * OS�γ����߽����������Ȥʤ��ؿ�����Ͽ���롥
   */
  softvec_setintr(type, thread_intr);

  handlers[type] = handler; /* OS¦�����ƤӽФ������ߥϥ��ɥ�����Ͽ */

  return 0;
}

static void call_functions(kz_syscall_type_t type, kz_syscall_param_t *p)
{
  /* �����ƥࡦ�������μ¹�����current���񤭴������Τ����� */
  switch (type) {
  case KZ_SYSCALL_TYPE_RUN: /* kz_run() */
    p->un.run.ret = thread_run(p->un.run.func, p->un.run.name,
			       p->un.run.stacksize,
			       p->un.run.argc, p->un.run.argv);
    break;
  case KZ_SYSCALL_TYPE_EXIT: /* kz_exit() */
    /* TCB���õ�����Τǡ������ͤ��񤭹����ǤϤ����ʤ� */
    thread_exit();
    break;
  default:
    break;
  }
}

/* �����ƥࡦ�������ν��� */
static void syscall_proc(kz_syscall_type_t type, kz_syscall_param_t *p)
{
  /*
   * �����ƥࡦ���������ƤӽФ��������åɤ����ǥ��������塼����
   * ���������֤ǽ����ؿ����ƤӽФ������Τ��᥷���ƥࡦ��������
   * �ƤӽФ��������åɤ򤽤Τޤ�ư����³�������������ˤϡ�
   * �����ؿ��������� putcurrent() ���Ԥ�ɬ�פ����롥
   */
  getcurrent();
  call_functions(type, p);
}

/* �����åɤΥ������塼������ */
static void schedule(void)
{
  if (!readyque.head) /* ���Ĥ����ʤ��ä� */
    kz_sysdown();

  current = readyque.head; /* �������ȡ������åɤ����ꤹ�� */
}

static void syscall_intr(void)
{
  syscall_proc(current->syscall.type, current->syscall.param);
}

static void softerr_intr(void)
{
  puts(current->name);
  puts(" DOWN.\n");
  getcurrent(); /* ���ǥ������塼���鳰�� */
  thread_exit(); /* �����åɽ�λ���� */
}

/* �����߽����������ؿ� */
static void thread_intr(softvec_type_t type, unsigned long sp)
{
  /* �������ȡ������åɤΥ����ƥ����Ȥ���¸���� */
  current->context.sp = sp;

  /*
   * �����ߤ��Ȥν������¹Ԥ��롥
   * SOFTVEC_TYPE_SYSCALL, SOFTVEC_TYPE_SOFTERR �ξ�����
   * syscall_intr(), softerr_intr() ���ϥ��ɥ�����Ͽ�����Ƥ����Τǡ�
   * �����餬�¹Ԥ����롥
   */
  if (handlers[type])
    handlers[type]();

  schedule(); /* �����åɤΥ������塼������ */

  /*
   * �����åɤΥǥ����ѥå�
   * (dispatch()�ؿ������Τ�startup.s�ˤ��ꡤ�������֥��ǵ��Ҥ����Ƥ���)
   */
   current->context.sp-=8;
  dispatch2(0xa0007280);
  /* �����ˤ��֤äƤ��ʤ� */
}

void kz_start(kz_func_t func, char *name, int stacksize,
	      int argc, char *argv[])
{
  /*
   * �ʹߤǸƤӽФ������åɴ�Ϣ�Υ饤�֥����ؿ��������� current ��
   * ���Ƥ������礬�����Τǡ�current �� NULL �˽��������Ƥ�����
   */
  current = NULL;

  readyque.head = readyque.tail = NULL;
  memset(threads,  0, sizeof(threads));
  memset(handlers, 0, sizeof(handlers));

  /* �����ߥϥ��ɥ�����Ͽ */
  setintr(SOFTVEC_TYPE_SYSCALL, syscall_intr); /* �����ƥࡦ������ */
  setintr(SOFTVEC_TYPE_SOFTERR, softerr_intr); /* �������װ�ȯ�� */

  /* �����ƥࡦ������ȯ���ԲĤʤΤ�ľ�ܴؿ����ƤӽФ��ƥ����åɺ������� */
  current = (kz_thread *)thread_run(func, name, stacksize, argc, argv);
  /* �ǽ��Υ����åɤ���ư */

  putxval(current->context.sp,0);
  puts(" ");
  dispatch1(current->context.sp);
  /* �����ˤ��֤äƤ��ʤ� */
}

void kz_sysdown(void)
{
  puts("system error!\n");
  while (1)
    ;
}

/* �����ƥࡦ�������ƤӽФ��ѥ饤�֥����ؿ� */
void kz_syscall(kz_syscall_type_t type, kz_syscall_param_t *param)
{
  current->syscall.type  = type;
  current->syscall.param = param;
  asm volatile ("syscall"); /* �ȥ��å׳�����ȯ�� */
}
