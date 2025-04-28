/*****************************************************************************
 *
 * leader.pml : A small example of the leader election algorithm for
 *  synchronous ring networks from Schneider, 'Distributed Systems.'
 *  Addison Wesley, 1990
 * 
 *  N identical processes arranged in a ring
 *
 *****************************************************************************/

#define N 4
mtype = {token, elect, leader}

chan LtoR[N] = [0] of { mtype, byte }; /* from left neighbor */
chan RtoL[N] = [0] of { mtype, byte }; /* from right neighbor */

proctype Node(byte id)
{
	byte maxid;
	mtype action;

	printf("proc %d starts\n", id);

	do
	:: LtoR[id]? action(maxid) ->
		/* message from the left neighbor */
		if
		:: (action == elect) ->
			/* if the recd id is larger or same, pass it on */
			if
			:: (maxid >= id) ->
				RtoL[(id+1) % N]! elect(maxid);
			:: else ->
				/* else pass on my own id */
				RtoL[(id+1) % N]! elect(id);
			fi
		:: else /* (action == leader) */
			printf("Proc %d: leader is %d\n", id, maxid);
			break
		fi

	:: RtoL[id]? action(maxid) ->
		/* message from the right neighbor */
		if
		:: (action == token) ->
			/* start the election by sending 'elect(id)' left */
			printf("Proc %d: start election\n", id);
			LtoR[(id+N-1) % N]! elect(id);
		:: else ->
			skip /* ignore all other msgs from right */
		fi
	od
}

init {
	byte i;

	/* initialization */
	printf("Number of procs = %d\n", N);
	atomic {
		/* create N node processes
		 * processes are arranged in a ring
		 *   left neighbor is (i+1) % N
		 *   right neighbor is (i+N-1) % N
		 */
		i = 0;
		do
		:: (i < N) ->
			run Node(i);
			i++
		:: else ->
			break
		od
	}

	/* start the election by sending 'token' from left neighbor
	   of the 0th process */
	RtoL[0]! token(0);
}
