byte TARGET_LEN = 13 //tobeornottobe
//target yang ingin di capai yaitu "tobeornottobe"

bool match = false; //if matched system stop
byte pos;
chan ch = [0] of { byte }; 

byte target[TARGET_LEN] = {
    't','o','b','e','o','r','n','o','t','t','o','b','e'
};
//target yang ingin di capai yaitu "tobeornottobe"

proctype Monkey(byte c) {
    do
    :: match        -> break;
    :: !match       -> ch!c;
    od;
} //bagaimana monkey, jika matched system akan stop, jika tidak matched akan mengirim kode c ke channel ch

proctype Reviewer() {
    byte received;
    pos = 0;
    do
    :: ch?received -> 
        if
        :: received == target[pos] -> 
            pos++;
            if
            :: pos == TARGET_LEN -> //tobeornottobe is target
                match = true; //jika matched true maka system break
                break
            :: else -> skip 
            fi
        :: else ->
            pos = 0;
            if
            :: received == target[0] -> pos = 1
            :: else -> skip
            fi
        fi
    od
}

init {

    atomic {
        byte c;
        for (c: 'a'..'z') {
            run Monkey(c)
        }
        run Reviewer();
    }
}
////setiap monyet memiliki 1 tombol a-z


//Menyatakan bahwa matched tidak pernah menjadi true. 
//Spin akan mencoba menemukan counterexample untuk membuktikan bahwa matched bisa menjadi true karena always not matched. 
//menemukan 1 error
ltl p1 { []! match } 