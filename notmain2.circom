pragma circom 2.0.3;

template Example () {
    signal input a;
    signal input b;
    signal d;
    signal e;
    signal input array[50];
    signal output c;
    signal output res[50];
    res[0] <== b;

    d <== a * b;
    for (var i = 1; i < 50; i ++) {
        res[i] <== array[i] * d;
    } 

    c <== d * b;
   

    d === 5;

}

component main { public [ a ] } = Example();
