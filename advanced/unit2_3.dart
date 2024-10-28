import 'dart:math';
void main(){
  List num=[2,4,6,8,10];
  final l = [];

  for(final x in num){
    print(pow(x,2) ~/ 3);
    l.add(pow(x,2) ~/ 3);
  }
  
  List<String> Lstr=['1','3','5','7','9'];
  // final l2=[];

  for(String x in Lstr){
    print(x);
  }
  
// ============= Map
final num_map = num.map((e) => pow(e,2));
print(num_map.runtimeType);
List map_list = num_map.toList();
print(map_list);


}