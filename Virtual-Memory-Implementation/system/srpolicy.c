/* srpolicy.c - srpolicy */

#include <xinu.h>

int page_replacement_policy;

/*------------------------------------------------------------------------
 *  srplicy  -  Set the page replacement policy.
 *------------------------------------------------------------------------
 */
syscall srpolicy(int policy)
{
	switch (policy) {
	case FIFO:
		/* LAB5TODO */
		page_replacement_policy = policy;   /* set the page replacement policy */
        return OK;

	case GCA:
		/* LAB5TODO - Bonus Problem */
		page_replacement_policy = policy;
        return OK;

	default:
		return SYSERR;
	}
}

/* function returns the replacement policy set */
int get_replacement_policy() {
    return page_replacement_policy;
}
