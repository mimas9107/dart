/*題目#01：請撰寫一個 Dart 函數 isPrime，
此函數接收一個整數 n，並回傳該數是否為質數。
如果 n 是質數，回傳 true；
如果不是質數，回傳 false。*/


bool isPrime(int num){
  // 創一個array紀錄每個數字是否為prime.
  List<bool> knownprime=List.generate(100000, (index)=>false);
  //List<int> prime=[];
  knownprime[1]=true; // 大質數表中: true 表示不是質數, 是質數為 false
  for(int i=2; i<=num; i++){
    if(knownprime[i]==false){
      //prime.add(i); 
      for(int j=2; i*j<=num; j++){
        knownprime[i*j] = true;
      }
    }
  }

//print(knownprime);
//從大質數表中查
return !knownprime[num];
}


void main() {
  print(isPrime(7));  // 應該輸出 true
  print(isPrime(10)); // 應該輸出 false
}
