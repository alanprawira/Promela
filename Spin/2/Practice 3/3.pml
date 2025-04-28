/*
 * Le Lann, Chang and Roberts leader election algorithm for a ring of
 * processes
 *
 */

#define N 5
#define BUFSIZE 10

mtype = { candidate, leader };
chan c[N] = [BUFSIZE] of { mtype, byte };

byte num_leaders = 0;

proctype node(chan prev, next; byte my_id)
{
    byte in_id;
    byte leader_id;

    // начало: отправить id процесса своему соседу
    next!candidate(my_id);

    do
        :: prev?candidate(in_id) ->
            if
                :: in_id > my_id ->
                    next!candidate(in_id);
                :: in_id < my_id ->
                    skip;
                :: else ->
                    printf("I am the leader! (pid: %d, id: %d)\n", _pid, my_id);
                    num_leaders++;
                    next!leader(my_id);
            fi
        :: prev?leader(leader_id) ->
            if
                :: leader_id > my_id ->
                    next!leader(leader_id);
                    break;
                :: else ->
                    assert(my_id == leader_id);
                    break;
            fi
    od;
    assert(num_leaders == 1); // NOTE: if more than one node
                              // declares itself as leader, then
                              // this assertion will fail for
                              // at least one node!
}

init {
    byte proc;
    byte i;

    // atomic используеются для того, чтобы обеспечить 
    // полноценный запуск всех процессов
    atomic {
        chan prev, next;
        byte id;
        do
            :: i < N -> i++;
            :: true -> break;
        od;
        do
            :: proc < N ->
                prev = c[proc];
                next = c[(proc+1)%N];
                id = (N+i-proc)%N;/*
 * Le Lann, Chang and Roberts leader election algorithm for a ring of
 * processes
 *
 */

#define N 5
#define BUFSIZE 10

mtype = { candidate, leader };
chan c[N] = [BUFSIZE] of { mtype, byte };

byte num_leaders = 0;

proctype node(chan prev, next; byte my_id)
{
    byte in_id;
    byte leader_id;

    // начало: отправить id процесса своему соседу
    next!candidate(my_id);

    do
        :: prev?candidate(in_id) ->
            if
                :: in_id > my_id ->
                    next!candidate(in_id);
                :: in_id < my_id ->
                    skip;
                :: else ->
                leader_chosen:
                    printf("I am the leader! (pid: %d, id: %d)\n", _pid, my_id);
                    num_leaders++;
                    next!leader(my_id);
            fi
        :: prev?leader(leader_id) ->
            if
                :: leader_id > my_id ->
                    next!leader(leader_id);
                    break;
                :: else ->
                    assert(my_id == leader_id);
                    break;
            fi
    od;
    assert(num_leaders == 1); // NOTE: if more than one node
                              // declares itself as leader, then
                              // this assertion will fail for
                              // at least one node!
}

init {
    byte proc;
    byte i;

    // atomic используеются для того, чтобы обеспечить 
    // полноценный запуск всех процессов
    atomic {
        chan prev, next;
        byte id;
        do
            :: i < N -> i++;
            :: true -> break;
        od;
        do
            :: proc < N ->
                prev = c[proc];
                next = c[(proc+1)%N];
                id = (N+i-proc)%N;
                printf("Starting process with id %d.\n", id);
                run node(prev, next, id);
                proc++
            :: else ->
                break;
        od;
    }
}

/* P1 A leader will be eventually elected */
ltl p1   { <> (num_leaders == 1) };

/* P2 – There can be at most one leader */
ltl p2  { [] (num_leaders <= 1) };

/* P3 – After a process is elected, it will remain the leader forever.
 */
ltl p3 {
    [] ( 
        (  node[0]@leader_chosen || node[1]@leader_chosen || node[2]@leader_chosen || node[3]@leader_chosen || node[4]@leader_chosen ) -> 
        [] (
            (node[0]@leader_chosen -> !(node[1]@leader_chosen || node[2]@leader_chosen || node[3]@leader_chosen || node[4]@leader_chosen)) &&
            (node[1]@leader_chosen -> !(node[0]@leader_chosen || node[2]@leader_chosen || node[3]@leader_chosen || node[4]@leader_chosen)) &&
            (node[2]@leader_chosen -> !(node[0]@leader_chosen || node[1]@leader_chosen || node[3]@leader_chosen || node[4]@leader_chosen)) &&
            (node[3]@leader_chosen -> !(node[0]@leader_chosen || node[1]@leader_chosen || node[2]@leader_chosen || node[4]@leader_chosen)) &&
            (node[4]@leader_chosen -> !(node[0]@leader_chosen || node[1]@leader_chosen || node[2]@leader_chosen || node[3]@leader_chosen))
        )
    )
}
                printf("Starting process with id %d.\n", id);
                run node(prev, next, id);
                proc++
            :: else ->
                break;
        od;
    }
}

