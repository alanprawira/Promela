#define N 6
active proctype ARRAY() {
    int a[N];
    int i = 0;
    do
    :: (i >= N) -> break
    :: else -> 
        if
        :: a[i] = 0
        :: a[i] = 1
        :: a[i] = 2
        :: a[i] = 3
        :: a[i] = 4
        :: a[i] = 5
        fi; 
        i++
    od

    short sum = 0;
    i = 0;
    do
    :: (i >= N) -> break
    :: else -> if
          :: ((i % 2) == 0) -> sum = sum + a[i];
          :: else -> sum = sum - a[i];
          fi;
          i++;
    od;
    printf("Array a: ");
    i = 0;
    do
    :: (i < N) ->
          printf("%d ", a[i]);
          i++;
    :: else -> break
    od;
    printf("\n");

    printf("Sum = %d\n", sum);

}