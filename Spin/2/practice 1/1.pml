//chan glob = [0] of {byte};

chan glob = [26] of {byte};

active proctype A() {
    byte x = 'a';
    do
        :: (x > 'z') -> break
        :: else -> printf("Send %c\n", x); glob!x; x++
    od
}

//byte x;
//active proctype B() {
//    byte y = 'a';
//    do
//        :: (y > 'z') -> break
//        :: else -> glob?x; printf("Receive %c\n", x); y++
// }    od


 byte res
 active proctype B() {
    do
        :: (res != 'z') -> break
        :: else -> glob?res; printf("Receive %c\n", res); res

ltl p1 { <> (res == 'z')}