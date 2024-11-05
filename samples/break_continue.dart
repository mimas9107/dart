void main(){

  var j=0;
  var count=0;
  if(j%2 != 0){
    count +=1;
  }
  for(j=0; j<=20; j++){
   if(j%2 == 0){
      continue; // 終止此次迴圈, 直接跳下一輪
   }
   count+=1; 
   print("count: $count");
  }

  // 標籤 + break:
  outerloop:
  for(var i=0; i<5; i++){
    print("outerloop i: $i");
    innerloop:
    for(var j=0; j<5; j++){
      if(j>3) break;
      if(i==2) break innerloop;
      if(i==4) break outerloop;
      print("\tinnerloop j: $j");

    }
  }
}
  