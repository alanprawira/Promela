chan control = [0] of { byte };
byte state[5];
int steps = 0;
bool done = false;

init {
    state[1] = 1; state[3] = 1; state[4] = 1;
}

active proctype Pillar(byte id) {
    byte left = (id + 4) % 5;
    byte right = (id + 1) % 5;  
    do
    :: control?id ->
         state[id] = 1 - state[id];
         state[left] = 1 - state[left];
         state[right] = 1 - state[right];
         steps++;
    :: (done == true) -> break
    od
}

active proctype Commander() {
    byte id;
    do
    :: (state[0] == 1 && state[1] == 1 && state[2] == 1 && state[3] == 1 && state[4] == 1) ->
         printf(">> Gate opened in %d steps\n", steps);
         done = true;
         break
    :: else -> select(id:0..4)
         control!id
    od
}

ltl p1 { []!(done) }