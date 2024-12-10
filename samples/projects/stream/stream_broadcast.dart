import 'dart:async';

void main() async {
  var controller= StreamController.broadcast();

  // no.1 訂閱者
  controller.stream.listen((data){
    print("no.1: $data");

  }, onDone: (){print("no.1 stream done!");});

  // no.2 訂閱者
  controller.stream.listen((data){
      print("no.2: ${data}");

  }, onDone: (){print("no.2 stream done!");});

  controller.add(11);
  controller.add(22);
  await Future.delayed(Duration(seconds: 3),() { controller.add(333);});
  

  controller.close();
}