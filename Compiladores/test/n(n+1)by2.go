package main;
import "fmt";


func main(){
    var i int;
     // if i == i+1 { i++; break; };
   /* i = 1;

    for i < 5 { i = i+4; break; i--;};       // go's while loop
    
    for  { i = i+9; };
*/
    var j, k int;

    here:
    for k = 0; k < 10; k = k+1 {
        for i = 0; i < 10; i = i+1 { 

             if ( i == k ){
                j = j+1;
                continue here;
             } else{
                j = j+1;
             };
             println(j);
        };
    };
   /* i=2;
    {
        {
        i=100;
        };
    };
    i=21;*/
    
}; 