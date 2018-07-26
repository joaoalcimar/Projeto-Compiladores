package main;

func println(x int) {
    
};


func main(){

    var i, j int;

    var k, l, count int;

    for ; l < 12; l = l+1 {

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
    };

    println(j);
   /* i=2;
    {
        {
        i=100;
        };
    };
    i=21;*/
    
}; 