/*
Modelkan array yang terdiri dari k-1 elemen yang diinisialisasi dengan 0 
dan satu elemen acak yang diinisialisasi dengan 1. 
Kembangkan algoritma, yang mencari 1 dan berhenti setelah ditemukan. 
Setiap kali algoritma mengakses elemen array apa pun, dan sebelum akses berikutnya, 
salah satu dari tiga langkah berikut terjadi secara non-deterministik:

• 1 dipindahkan dari i ke (i + 1)%k,
• 1 dipindahkan dari i ke (i - 1)%k,
• 1 tidak dipindahkan.
Benarkah algoritma pencarian berhenti saat k=11?
*/

#define K 11

byte A[K];        //11 element
byte pos;         //Posisi yang sedang diakses oleh pencari
bool found = false; //Flag penanda apakah 1 ditemukan

init {
    int rand_id;
    select(rand_id:0..(K-1))
    A[rand_id] = 1;

    run Search();
}

proctype Search() {
    byte old;       //untuk mencari posisi 1
    do
    :: 
       if
       :: A[pos] == 1 -> found = true; printf("Found at %d\n", pos); break
       :: else -> skip
       fi;
//stop after found
       pos = (pos + 1) % K;

       {
         old = 0;       //posisi di 0
         do
         :: (old < K && A[old] != 1) -> old++
         :: else -> break
         od;
         A[old] = 0;
         if
         :: A[(old + 1) % K] = 1  //1 dipindahkan dari i ke (i + 1)%k (kanan)
         :: A[(old + K - 1) % K] = 1  //• 1 dipindahkan dari i ke (i - 1)%k (kiri)
         :: A[old] = 1 //• 1 tidak dipindahkan. stay di index old
         fi;
       }
    od;
}

ltl p1 {<> ([] found )} //pada suatu saat akan true

//there is only 1 posibility we found 1

//1 is always infinitive at right 
//or always skip