
$$N=16

algorithm main(output uint8 leds)
{

  // This array contains the values inserted as a stream in the sort pipeline
  uint8 in_values[$N$] = {
$$for i=0,N-1 do
     $math.random(254)$,
$$end  
  };

  // Here, we create for each pipeline stage the result value of the sort (sorted_n)
$$for n=0,N do
  uint8 sorted_$n$ = 0;
$$end
  // NOTE: It would be more convenient for 'sorted' to be an array,
  //       however Silice will reject the pipeline as it will consider
  //       it is arbitrarily read/written at every stage.

  uint8 to_insert = 0;
  
  // insert values, one each clock cycle
  uint8 i = 0;
  while (i<$2*N$) { // As the pipeline has depth N, we have to iterate for 2.N 
                    // to ensure the sort is fully propagated

    // pipeline stages, generated by the pre-processor
    // the syntax is 
    // {
    //    stage 0
    // } -> {
    //    stage 1
    // } -> {
    //    ...
    // } -> {
    //    final stage
    // } 
    {
      // the streamed value to insert is placed at the top of the pipeline    
      to_insert = i < $N$ ? in_values[i] : 0;
      __display("to_insert at [%d] = %d",i,to_insert);
    } ->
$$for n=0,N-1 do
    {
      // at stage n we compare the value to insert to the current value
      if (to_insert > sorted_$n$) {  // if the value to insert is smaller, we insert here
        uint8 tmp = uninitialized;
        tmp        = sorted_$n$;
        sorted_$n$ = to_insert;
        to_insert  = tmp;    // the current value is evicted and becomes the next one to insert
      }
      __display("stage %d, stored %d, to_insert next = %d",$n$,sorted_$n$,to_insert);
    }
$$if n < N-1 then
    -> // pipe to next stage (if not last)
$$end    
$$end

    i = i + 1;
  } 
  
$$for n=0,N-1 do
   __display("[%d] = %d",$n$,sorted_$n$);
$$end   

}
