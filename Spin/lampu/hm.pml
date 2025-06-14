// 1: W -> E (Merah)
// 2: N -> E (Oranye)
// 3: E -> S (Biru)
// 4: S -> N (Hitam)
// 5: S -> W (Ungu)
// 6: Pedestrian (Ped)
//===========================================================================

//Konflik
//(W -> E) berkonflik dengan (E-> S), (S -> W), (S -> N), dan (Ped).
//(N -> E) berkonflik dengan (E -> S), (S -> N), (Ped).
//(E -> S) berkonflik dengan (Ped), (S -> N), (N -> E), (S -> W), dan (W -> E).
//(S -> N) berkonflik dengan (W-> E), (N -> E), (E -> S).
//(S -> W) berkonflik dengan (W -> E), (E -> S)
//(Ped) berkonflik dengan (W -> E), (N -> E), (E -> S)

#define WE_DIRECTION 1  // W -> E
#define NE_DIRECTION 2  // N -> E
#define ES_DIRECTION 3  // E -> S
#define SN_DIRECTION 4  // S -> N
#define SW_DIRECTION 5  // S -> W
#define PED_DIRECTION 6 // Pedestrian

chan WE_LIGHT = [1] of {byte};
chan NE_LIGHT = [1] of {byte};
chan ES_LIGHT = [1] of {byte};
chan SN_LIGHT = [1] of {byte};
chan SW_LIGHT = [1] of {byte};
chan PED_LIGHT = [1] of {byte};

byte n = 10;
byte currentTurn = WE_DIRECTION; // Mulai dari giliran pertama
byte queue [6]  = {0,0,0,0,0,0};
short requests [7]  = {0,0,0,0,0,0,0}; 
bool statuses [6]  = {false, false, false, false, false, false};

proctype TrafficLight (byte now; byte next; byte fProblem; byte sProblem; byte tProblem; byte uProblem; byte vProblem; chan tlChan){
    short fValue=0;
    short sValue=0;
    short tValue=0;
    short uValue=0;
    short vValue=0;
    short nValue = 0;
//Jumlah masalah konflik ada 5

    byte temp = 0;
    do
        ::  currentTurn == now  ->
        if
        ::   tlChan?temp->
                requests[0] = 0;
                queue[now-1] = temp;
                atomic {
                    printf("\n\n");
                    printf("Proses :%d\n", now);
                    printf("Status Hijau = %d\n", statuses[now-1]);
                    printf("Mobil? %d\n", queue[now-1]);
                    printf("Permintaan: %d\n", requests[now]);
                }

                if
                    :: statuses[now-1] == true ->
                            requests [now] =0;
                            statuses[now-1] = false;
                            printf ("Set warna menjadi merah di %d\n", now);
                            printf("Dan sekarang permintaannya adalah: %d\n", requests[now]);
                    :: else -> skip;
                fi;

                if
                :: requests[now] > 0  ->
                        if
                        :: (requests[fProblem] == 0) &&
                           (requests[sProblem] == 0) &&
                           (requests[tProblem] == 0) &&
                           (requests[uProblem] == 0) &&
                           (requests[vProblem] == 0)
                           ->
                                statuses[now-1] = true;
                                queue[now-1] = 0;
                                printf ("Set warna hijau (tidak ada konflik) di %d\n", now);
                                currentTurn = next;

                        :: else ->
                                if :: requests[fProblem] > 0 -> fValue = requests[fProblem]; :: else -> fValue = 0; fi;
                                if :: requests[sProblem] > 0 -> sValue = requests[sProblem]; :: else -> sValue = 0; fi;
                                if :: requests[tProblem] > 0 -> tValue = requests[tProblem]; :: else -> tValue = 0; fi;
                                if :: requests[uProblem] > 0 -> uValue = requests[uProblem]; :: else -> uValue = 0; fi;
                                if :: requests[vProblem] > 0 -> vValue = requests[vProblem]; :: else -> vValue = 0; fi;

                                nValue = requests[now];
                                atomic {
                                    printf("(%d) jalur konflik: %d,%d,%d,%d,%d\n", now, fProblem, sProblem, tProblem, uProblem, vProblem);
                                    printf("Dan nilai untuk #%d : (%d) dan untuk konflik: %d,%d,%d,%d,%d\n", now, nValue, fValue, sValue, tValue, uValue, vValue);
                                }

                                if
                                    :: fValue > nValue || sValue > nValue || tValue > nValue || uValue > nValue || vValue > nValue ->
                                            requests[now] =  nValue + n;
                                            if :: fValue>0 -> requests[fProblem] = fValue + n; :: else -> skip; fi;
                                            if :: sValue>0 -> requests[sProblem] = sValue + n; :: else -> skip; fi;
                                            if :: tValue>0 -> requests[tProblem] = tValue + n; :: else -> skip; fi;
                                            if :: uValue>0 -> requests[uProblem] = uValue + n; :: else -> skip; fi;
                                            if :: vValue>0 -> requests[vProblem] = vValue + n; :: else -> skip; fi;
                                            printf ("Set warna merah karena ada konflik di jalur %d\n", now);// jika ada konflik, menunggu
                                            printf ("(%d) akan menunggu jalur konflik\n", now);
                                            skip
                                    :: else ->
                                            printf ("Set warna hijau karena (%d) adalah MAX\n", now);
                                            statuses[now-1] = true;
                                            queue[now-1] = 0;
                                            requests[now] = 999 + now;
                                fi;
                        atomic{
                            printf("Permintaan: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", requests[1],requests[2],requests[3],requests[4],requests[5],requests[6]);
                            printf("Status: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", statuses[0],statuses[1],statuses[2],statuses[3],statuses[4],statuses[5]);
                            printf("Antrian mobil: 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", queue[0],queue[1],queue[2],queue[3],queue[4],queue[5]);
                        }
                        currentTurn = next;
                        requests[0] = 0;
                        fi

                :: else ->
                        requests[now] = now;
                        currentTurn = next;
                fi;
        fi;
    od
}

// Generator hanya untuk lalu lintas mobil
proctype CarTrafficGenerator(){
    do
        :: WE_LIGHT!1
        :: NE_LIGHT!1
        :: ES_LIGHT!1
        :: SN_LIGHT!1
        :: SW_LIGHT!1
    od
}
// Generator terpisah untuk permintaan pejalan kaki
proctype PedTrafficGenerator(){
    do
        :: PED_LIGHT!1
    od
}
// ==========================================================

init {
    run  TrafficLight (WE_DIRECTION, NE_DIRECTION, ES_DIRECTION, SW_DIRECTION, SN_DIRECTION, PED_DIRECTION, 0, WE_LIGHT);
    run  TrafficLight (NE_DIRECTION, ES_DIRECTION, ES_DIRECTION, SN_DIRECTION, PED_DIRECTION, 0, 0, NE_LIGHT);
    run  TrafficLight (ES_DIRECTION, SN_DIRECTION, WE_DIRECTION, NE_DIRECTION, SN_DIRECTION, SW_DIRECTION, PED_DIRECTION, ES_LIGHT);
    run  TrafficLight (SN_DIRECTION, SW_DIRECTION, WE_DIRECTION, NE_DIRECTION, ES_DIRECTION, 0, 0, SN_LIGHT);
    run  TrafficLight (SW_DIRECTION, PED_DIRECTION, WE_DIRECTION, ES_DIRECTION, 0, 0, 0, SW_LIGHT);
    run  TrafficLight (PED_DIRECTION, WE_DIRECTION, WE_DIRECTION, NE_DIRECTION, ES_DIRECTION, 0, 0, PED_LIGHT);

    // Jalankan kedua generator
    run CarTrafficGenerator();
    run PedTrafficGenerator();
}



//1. Safety ==
ltl sWE { [] ( !(statuses[WE_DIRECTION-1] && (statuses[ES_DIRECTION-1] || statuses[SW_DIRECTION-1] || statuses[SN_DIRECTION-1] || statuses[PED_DIRECTION-1])) ) };
ltl sNE { [] ( !(statuses[NE_DIRECTION-1] && (statuses[ES_DIRECTION-1] || statuses[SN_DIRECTION-1] || statuses[PED_DIRECTION-1])) ) };
ltl sES { [] ( !(statuses[ES_DIRECTION-1] && (statuses[PED_DIRECTION-1] || statuses[SN_DIRECTION-1] || statuses[NE_DIRECTION-1] || statuses[SW_DIRECTION-1] || statuses[WE_DIRECTION-1])) ) };
ltl sSN { [] ( !(statuses[SN_DIRECTION-1] && (statuses[WE_DIRECTION-1] || statuses[NE_DIRECTION-1] || statuses[ES_DIRECTION-1])) ) };
ltl sSW { [] ( !(statuses[SW_DIRECTION-1] && (statuses[WE_DIRECTION-1] || statuses[ES_DIRECTION-1])) ) };
ltl sPED { [] ( !(statuses[PED_DIRECTION-1] && (statuses[WE_DIRECTION-1] || statuses[NE_DIRECTION-1] || statuses[ES_DIRECTION-1])) ) };


//2. Liveness ==
ltl l1 { []( ( (queue[WE_DIRECTION-1] == 1 && statuses[WE_DIRECTION-1]==false) -> (<>(statuses[WE_DIRECTION-1]==true) )) ) };
ltl l2 { []( ( (queue[NE_DIRECTION-1] == 1 && statuses[NE_DIRECTION-1]==false) -> (<>(statuses[NE_DIRECTION-1]==true) )) ) };
ltl l3 { []( ( (queue[ES_DIRECTION-1] == 1 && statuses[ES_DIRECTION-1]==false) -> (<>(statuses[ES_DIRECTION-1]==true) )) ) };
ltl l4 { []( ( (queue[SN_DIRECTION-1] == 1 && statuses[SN_DIRECTION-1]==false) -> (<>(statuses[SN_DIRECTION-1]==true) )) ) };
ltl l5 { []( ( (queue[SW_DIRECTION-1] == 1 && statuses[SW_DIRECTION-1]==false) -> (<>(statuses[SW_DIRECTION-1]==true) )) ) };
ltl l6 { []( ( (queue[PED_DIRECTION-1] == 1 && statuses[PED_DIRECTION-1]==false) -> (<>(statuses[PED_DIRECTION-1]==true) )) ) };

//3. Fairness ==
ltl f1 { [](<>(statuses[WE_DIRECTION-1] == false)) };
ltl f2 { [](<>(statuses[NE_DIRECTION-1] == false)) };
ltl f3 { [](<>(statuses[ES_DIRECTION-1] == false)) };
ltl f4 { [](<>(statuses[SN_DIRECTION-1] == false)) };
ltl f5 { [](<>(statuses[SW_DIRECTION-1] == false)) };
ltl f6 { [](<>(statuses[PED_DIRECTION-1] == false)) };

// ./spim.exe -a hm.pml
// gcc -o pan pan.c 
// ./pan -a -N sWE