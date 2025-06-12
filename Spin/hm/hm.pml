// ==========================================================
// == Pemetaan Arus Lalu Lintas ke Nomor ==
// ==========================================================
// 1: W -> E (Merah)
// 2: N -> E (Oranye)
// 3: E -> S (Biru)
// 4: S -> N (Hitam)
// 5: S -> W (Ungu)
// 6: Pedestrian (Ped)
// ==========================================================

chan TL1 = [1] of {byte};
chan TL2 = [1] of {byte};
chan TL3 = [1] of {byte};
chan TL4 = [1] of {byte};
chan TL5 = [1] of {byte};
chan TL6 = [1] of {byte};


byte n = 10;

byte currentTurn = 1;
byte queue [6]  = {0,0,0,0,0,0};
short requests [7]  = {0,0,0,0,0,0,0}; // Ukuran 7 untuk mengakomodasi indeks 1-6
bool statuses [6]  = {false, false, false, false, false, false};

// Modifikasi: Menambahkan 'vProblem' untuk menangani hingga 5 konflik
proctype TrafficLight (byte number; byte nextNum; byte fProblem; byte sProblem; byte tProblem; byte uProblem; byte vProblem; chan tlChan){
    short fValue=0;
    short sValue=0;
    short tValue=0;
    short uValue=0;
    short vValue=0; // Variabel baru untuk konflik ke-5
    short nValue = 0;

    byte temp = 0;
    do
        ::  currentTurn == number  ->
        if
        // Ada lalu lintas untuk lampu ini
        ::   tlChan?temp->

                requests[0] = 0;
                queue[number-1] = temp;
                atomic {
                printf("\n\n");
                printf("Proc :%d\n", number);
                printf("Is green = %d\n", statuses[number-1]);
                printf("Cars? %d\n", queue[number-1]);
                printf("Request: %d\n", requests[number]);
                }

                if
                    :: statuses[number-1] == true ->
                            requests [number] =0;
                            statuses[number-1] = false;
                            printf ("Set color as red at %d\n", number);
                            printf("And now its request is: %d\n", requests[number]);
                    :: else -> skip;
                fi;

                if
                :: requests[number] > 0  ->
                        if
                        // Cek jika tidak ada konflik yang aktif
                        :: (requests[fProblem] == 0) &&
                           (requests[sProblem] == 0) &&
                           (requests[tProblem] == 0) &&
                           (requests[uProblem] == 0) &&
                           (requests[vProblem] == 0) // Cek konflik ke-5
                           ->
                                statuses[number-1] = true;
                                queue[number-1] = 0;
                                printf ("Set color as green (no enemies) at %d\n", number);
                                currentTurn = nextNum

                        :: else ->
                                // Dapatkan nilai request dari semua jalur konflik
                                if :: requests[fProblem] > 0 -> fValue = requests[fProblem]; :: else -> fValue = 0; fi;
                                if :: requests[sProblem] > 0 -> sValue = requests[sProblem]; :: else -> sValue = 0; fi;
                                if :: requests[tProblem] > 0 -> tValue = requests[tProblem]; :: else -> tValue = 0; fi;
                                if :: requests[uProblem] > 0 -> uValue = requests[uProblem]; :: else -> uValue = 0; fi;
                                if :: requests[vProblem] > 0 -> vValue = requests[vProblem]; :: else -> vValue = 0; fi; // Dapatkan nilai konflik ke-5

                                nValue = requests[number];
                                atomic {
                                printf("(%d) enemies are: %d,%d,%d,%d,%d\n", number, fProblem, sProblem, tProblem, uProblem, vProblem);
                                printf("And values for #%d : (%d) and for enemies are: %d,%d,%d,%d,%d\n", number, nValue, fValue, sValue, tValue, uValue, vValue);
                                }

                                if
                                    // Jika ada konflik dengan request lebih rendah, tunggu
                                    :: fValue > nValue || sValue > nValue || tValue > nValue || uValue > nValue || vValue > nValue ->
                                            requests[number] =  nValue + n;
                                            // Kode teman Anda juga meningkatkan request musuh, kita pertahankan logika itu
                                            if :: fValue>0 -> requests[fProblem] = fValue + n; :: else -> skip; fi;
                                            if :: sValue>0 -> requests[sProblem] = sValue + n; :: else -> skip; fi;
                                            if :: tValue>0 -> requests[tProblem] = tValue + n; :: else -> skip; fi;
                                            if :: uValue>0 -> requests[uProblem] = uValue + n; :: else -> skip; fi;
                                            if :: vValue>0 -> requests[vProblem] = vValue + n; :: else -> skip; fi;

                                            printf ("(%d) will wait for enemies \n", number);
                                            skip
                                    :: else ->
                                            printf ("Set color as green as (%d) was MAX \n", number);
                                            statuses[number-1] = true;
                                            queue[number-1] = 0;
                                            requests[number] = 999 + number;
                                fi;
                        atomic{
                        printf("Requests are 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", requests[1],requests[2],requests[3],requests[4],requests[5],requests[6]);
                        printf("Statuses are 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", statuses[0],statuses[1],statuses[2],statuses[3],statuses[4],statuses[5]);
                        printf("Cars waiting at 1(%d), 2(%d), 3(%d), 4(%d), 5(%d), 6(%d)\n", queue[0],queue[1],queue[2],queue[3],queue[4],queue[5]);
                        }
                        currentTurn = nextNum;
                        requests[0] = 0;
                        fi

                :: else ->
                        requests[number] = number;
                        currentTurn = nextNum;
                fi;
        fi;
    od
}

proctype TrafficGenerator(){
    do
        :: TL1!1
        :: TL2!1
        :: TL3!1
        :: TL4!1
        :: TL5!1
        :: TL6!1
    od
}


init {
    // Jalankan proses untuk setiap lampu lalu lintas sesuai skenario Anda
    // Format: TrafficLight(nomor, nomor_berikutnya, konflik1, konflik2, konflik3, konflik4, konflik5, channel)
    // Gunakan 0 jika tidak ada konflik lagi

    // Arus 1 (W->E) konflik dengan 3, 5, 4, 6
    run  TrafficLight (1, 2, 3, 5, 4, 6, 0, TL1);
    // Arus 2 (N->E) konflik dengan 3, 4, 6
    run  TrafficLight (2, 3, 3, 4, 6, 0, 0, TL2);
    // Arus 3 (E->S) konflik dengan 1, 2, 4, 5, 6
    run  TrafficLight (3, 4, 1, 2, 4, 5, 6, TL3);
    // Arus 4 (S->N) konflik dengan 1, 2, 3
    run  TrafficLight (4, 5, 1, 2, 3, 0, 0, TL4);
    // Arus 5 (S->W) konflik dengan 1, 3
    run  TrafficLight (5, 6, 1, 3, 0, 0, 0, TL5);
    // Arus 6 (Ped) konflik dengan 1, 2, 3
    run  TrafficLight (6, 1, 1, 2, 3, 0, 0, TL6);

    run TrafficGenerator();

}


// ==========================================================
// == Properti Verifikasi (LTL Formulas) ==
// ==========================================================

// == 1. Safety (Keamanan) - Tidak ada lampu hijau yang berkonflik secara bersamaan ==
//    [] !(A && B) berarti "selalu tidak benar bahwa A dan B hijau bersamaan"

// Konflik untuk W->E (1)
ltl s1 { [] (!(statuses[0] == true && statuses[2] == true)) }; // W->E (1) dan E->S (3)
ltl s2 { [] (!(statuses[0] == true && statuses[4] == true)) }; // W->E (1) dan S->W (5)
ltl s3 { [] (!(statuses[0] == true && statuses[3] == true)) }; // W->E (1) dan S->N (4)
ltl s4 { [] (!(statuses[0] == true && statuses[5] == true)) }; // W->E (1) dan Ped (6)

// Konflik untuk N->E (2)
ltl s5 { [] (!(statuses[1] == true && statuses[2] == true)) }; // N->E (2) dan E->S (3)
ltl s6 { [] (!(statuses[1] == true && statuses[3] == true)) }; // N->E (2) dan S->N (4)
ltl s7 { [] (!(statuses[1] == true && statuses[5] == true)) }; // N->E (2) dan Ped (6)

// Konflik lain yang belum tercakup
ltl s8 { [] (!(statuses[2] == true && statuses[3] == true)) }; // E->S (3) dan S->N (4)
ltl s9 { [] (!(statuses[2] == true && statuses[4] == true)) }; // E->S (3) dan S->W (5)


// == 2. Liveness - Jika ada permintaan (mobil menunggu), lampu akhirnya akan hijau ==
//    []( (kondisi) -> <>(hasil) ) berarti "selalu, jika kondisi terpenuhi, maka pada akhirnya hasil akan terjadi"

ltl l1 { []( ( (queue[0] == 1 && statuses[0]==false) -> (<>(statuses[0]==true) )) ) }; // Untuk W -> E
ltl l2 { []( ( (queue[1] == 1 && statuses[1]==false) -> (<>(statuses[1]==true) )) ) }; // Untuk N -> E
ltl l3 { []( ( (queue[2] == 1 && statuses[2]==false) -> (<>(statuses[2]==true) )) ) }; // Untuk E -> S
ltl l4 { []( ( (queue[3] == 1 && statuses[3]==false) -> (<>(statuses[3]==true) )) ) }; // Untuk S -> N
ltl l5 { []( ( (queue[4] == 1 && statuses[4]==false) -> (<>(statuses[4]==true) )) ) }; // Untuk S -> W
ltl l6 { []( ( (queue[5] == 1 && statuses[5]==false) -> (<>(statuses[5]==true) )) ) }; // Untuk Ped

// == 3. Fairness (Keadilan) - Tidak ada lampu yang hijau selamanya ==
//    []<> (kondisi) berarti "selalu, pada akhirnya kondisi akan terpenuhi" (kondisi terjadi berulang kali)

ltl f1 { [](<>(statuses[0] == false)) }; // W -> E akan merah sesekali
ltl f2 { [](<>(statuses[1] == false)) }; // N -> E akan merah sesekali
ltl f3 { [](<>(statuses[2] == false)) }; // E -> S akan merah sesekali
ltl f4 { [](<>(statuses[3] == false)) }; // S -> N akan merah sesekali
ltl f5 { [](<>(statuses[4] == false)) }; // S -> W akan merah sesekali
ltl f6 { [](<>(statuses[5] == false)) }; // Ped akan merah sesekali

