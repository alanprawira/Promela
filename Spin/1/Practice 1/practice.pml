short a = 2
short b = 5
short c = 3
short i = 0

init {

        // if
        // :: (a < b) -> printf("good\n");
        // :: else -> skip
        // fi

        
        // if
        // :: (a < b) -> printf("good\n");
        // :: else -> printf("bad\n");
        // fi

        
        // if 
        // :: b > c -> b = c
        // :: else -> a = c
        // fi

        do
        :: a < b -> break
        :: else -> a++
        od 


        //do
            //:: (i < 100) -> printf("i = %d\n",i); i++
            //:: else -> break
        //od 
}