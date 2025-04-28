 byte x;
 active proctype A() { 
x=1;
 do
 :: select(x:0..10)
 od
 }

    ltl p1 {x==0}; //first state x = 0 Correct
    ltl p2 {x!=0}; //state x != 0 Incorrect
    ltl p3 {(x==0)-> X (x!=0)}; //first state x != 0 or right after that x != 0 Correct
    ltl p4 {(x==0) ->  <> (x!=0)}; //first state x != 0 or later will meet x != 0 Correct
    ltl p5 {[] ((x==0) ->  X (x!=0))}; //always (first state x != 0 or later x != 0) = next value not guaranted to be != 0  =Incorrect
    ltl p6 {[] ((x==0)-> <> (x!=0))}; // always (first state x != 0 or later will meet x != 0) x can remain 0 forever = incorrect
