package main;

func println(x int) {
    
};

func max(y, nm int) (int){

    if  y > nm  {
        return y;
    } ;

    return nm;
};

func min(y, nm int) (int){

    if  y > nm  {
        return nm;
    } ;

    return y;
};

func main(){
    var a, b int;
    a = 9;
    b = 560;

    var maxi, mini int;

    maxi = max(a, b);

    println(a);
    println(b);
    println(maxi);

    mini = min();

    println(a);
    println(b);
    println(mini);

    // var i, j int;

     // if i == i+1 { i++; break; };
   /* i = 1;

    for i < 5 { i = i+4; break; i--;};       // go's while loop
    
    for  { i = i+9; };
*/
    // var j, k, l, count int;

  /*  for ; l < 12; l = l+1 {

        here:
        for k = 0; k < 10; k = k+1 {
            for i = 0; i < 10; i = i+1 { 

                count = count+1;

                 if ( l < 10 ) {
                    j = j+5;
                };
                 if ( i == k ){
                    j = j+2;
                    continue;
                 } else if ( i < k ){
                    j = j+3;
                 } else if ( i > 2*k ) {
                    j = j+4;
                    continue here;
                 } else{
                    j = j+1;
                 };
                j=j+3;
                
            };
        };
    };*/
   /* i=2;
    {
        {
        i=100;
        };
    };
    i=21;*/
    
}; 