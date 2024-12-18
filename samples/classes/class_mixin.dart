// 定義 mixin 存提款功能
mixin DepositWithdraw{
  double balance=0.0;

  void deposit(double money){
    if(money>0){
      balance+=money;
      print("[deposit] 存入 \$${money}");
    }
  }
  void withdraw(double money){
    if(money>0 && balance>=money){
      balance-=money;
      print("[withdraw] 提款 \$${money}");
    }else{
      print("餘額不足");
    }
  }
}

// 定義利率功能
mixin InterestCalculator{
  //預設利率:
  double interestRate=0.02;
  double calculateInterest(double balance){
    return balance*interestRate;
  }
  void changeInterestRate(double rate){
    interestRate=rate;
  }

}
// 定義交易紀錄:
mixin TransactionHistory{
  List<String> transactions=[];

  void recordTransaction(String transact){
    transactions.add(transact);
  }

}


// 透過 mixin實作多重繼承:

class TaiwanBANK with DepositWithdraw, InterestCalculator, TransactionHistory{
  String BANKTITLE="台灣銀行";
  int acc_id;
  TaiwanBANK(this.acc_id);
}

void main(){
  //建立帳戶
  var account1=TaiwanBANK(123);
  // 存款
  account1.deposit(5000);
  account1.recordTransaction("存入: \$${5000}");

  // 提款
  account1.withdraw(1000);
  account1.recordTransaction("提款: \$${1000}");

  // 查詢
  print("${account1.BANKTITLE}, ${account1.acc_id}帳戶明細 ");
  account1.transactions.forEach((e)=>print(e));

}