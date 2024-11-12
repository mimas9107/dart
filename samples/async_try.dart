Future<void> main() async{
  print("main() async start");
  try{
    await Future.delayed(Duration(seconds:5), 
                        ()=>throw Exception("error from async-await")
                        );


  }catch(error){
    print("error: $error");
  }

  print("main() end.");
}