#include "ll_cycle.h"
#include <stddef.h>

int ll_has_cycle(node *head)
{
    if (head == NULL)
        return 0;

    node *tortoise = head;
    node *hare = head;
    do {
        if (hare->next == NULL || hare->next->next == NULL)
            return 0;

        hare = hare->next->next;
        tortoise = tortoise->next;
    } while (hare != tortoise);
    return 1;
}