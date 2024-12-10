
Stream<int> asyncStream() async*{
  for(int i=0; i<10;i++){
    await Future.delayed(Duration(seconds: 2)); // 模擬延遲2秒才產生事件/值
    yield i;
  }
}

void main(List<String> args){
  asyncStream().listen((data){print(data);});
}