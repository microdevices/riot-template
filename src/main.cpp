#include <board.h>
#include <thread.h>
#include <periph_conf.h>
#include <periph/gpio.h>
#include <xtimer.h>


char threadStack[THREAD_STACKSIZE_MAIN];

void *threadHandler(void *)
{
    while (true) {
        gpio_toggle(LED0_PIN);
        xtimer_sleep(3);
    }
}

int main()
{
    board_init();

    thread_create(
            threadStack,
            sizeof(threadStack),
            0,
            THREAD_CREATE_WOUT_YIELD,
            threadHandler,
            NULL,
            "thread"
        );

    return 0;
}