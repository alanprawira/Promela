#define N   3               // Jumlah katak per warna
#define PAD (2*N+1)         // Total lily pad (3G + 1E + 3P = 7)
#define EMPTY   0           // Lily pad kosong
#define GREEN   1           // Katak hijau
#define PURPLE  2           // Katak ungu

byte pad[PAD];
bit  done  = 0; // Flag penanda goal tercapai
int  moves = 0; //Counter total langkah

chan lock = [1] of { byte };    //Channel untuk sinkronisasi (mutual exclusion)

inline show_state() {
    printf("move %d:  %d %d %d %d %d %d %d\n",
           moves,
           pad[0], pad[1], pad[2], pad[3], pad[4], pad[5], pad[6])
}

inline goal_reached() {             //goal we want
    pad[0]==PURPLE && pad[1]==PURPLE && pad[2]==PURPLE &&
    pad[3]==EMPTY  &&
    pad[4]==GREEN  && pad[5]==GREEN  && pad[6]==GREEN
}

proctype Frog(byte idx; byte frogType) //idx = posisi awal katak
{
    byte pos = idx;
    byte tok;

    pad[pos] = frogType; //warna kodok

    do
    :: done -> break // finish stop

    :: lock ? tok -> //to lock only 1 frog jump // waiting available token
        if
        :: (pos+1 < PAD && pad[pos+1]==EMPTY) -> //// Geser kanan ke pad kosong
            pad[pos]   = EMPTY;
            pad[pos+1] = frogType;
            pos        = pos + 1;
            moves      = moves + 1;
            show_state()



        :: (pos+2 < PAD && pad[pos+1]!=EMPTY && pad[pos+2]==EMPTY) -> //// Loncat kanan
            pad[pos]   = EMPTY;
            pad[pos+2] = frogType;
            pos        = pos + 2;
            moves      = moves + 1;
            show_state()

        :: (pos > 0 && pad[pos-1]==EMPTY) -> //// Geser kiri ke pad kosong
            pad[pos]   = EMPTY;
            pad[pos-1] = frogType;
            pos        = pos - 1;
            moves      = moves + 1;
            show_state()

        :: (pos >= 2 && pad[pos-1]!=EMPTY && pad[pos-2]==EMPTY) -> //// Loncat kiri
            pad[pos]   = EMPTY;
            pad[pos-2] = frogType;
            pos        = pos - 2;
            moves      = moves + 1;
            show_state()

        :: else -> skip
        fi;

        if
        :: goal_reached() ->
            show_state();
             printf("goal reached after %d moves\n", moves);
             done = 1
        :: else -> skip
        fi;

        lock ! tok
    od
}

init {
    byte tok = 1;

    atomic {
        pad[0]=GREEN; pad[1]=GREEN; pad[2]=GREEN;
        pad[3]=EMPTY;
        pad[4]=PURPLE; pad[5]=PURPLE; pad[6]=PURPLE;

        lock ! tok;

        run Frog(0, GREEN);
        run Frog(1, GREEN);
        run Frog(2, GREEN);

        run Frog(4, PURPLE);
        run Frog(5, PURPLE);
        run Frog(6, PURPLE);
    }
}

ltl p1 { [] (!done) }








// spin frog.pml
// spin -search -bfs -ltl p1 frog.pml
// spin -t -p frog.pml
// spin -t frog.pml
