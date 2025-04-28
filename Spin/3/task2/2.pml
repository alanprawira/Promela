int sum = 0; //starter equal 0

active proctype Oscillator() {
    byte v;
    do
    :: (sum > 0) ->     //jika positive maka substrack dari sum akan di kurangi
         if :: v = 1        //angka random 1,2,3
            :: v = 2
            :: v = 3
         fi;
         sum = sum - v

    :: else ->          
         if :: v = 1
            :: v = 2                    //jika negative maka add dari sum akan di tambah
            :: v = 3                 /* sum ≤ 0 */
         fi;
         sum = sum + v
    od
}

ltl p1 {
    [](<> (sum == 0))  //selalu eventually sum setara 0
}

ltl p2 {
    [] (sum >= -3 && sum <= 3)      //selalu angka lebih dari -3 dan kurang dari 3
}

ltl p3 {
    [] ( (sum > 0)  ->  <> (sum < 0) ) //selalu jika sum lebih dari 0 maka eventually sum kurang dari 0
 && [] ( (sum < 0)  ->  <> (sum > 0) )  //selalu jika sum kurang dari 0 maka eventually sum lebih dari 0
}