// Write a function that when given a number >= 0, returns an Array of ascending length subarrays.

// pyramid(0) => [ ] , length=0
// pyramid(1) => [ [1] ] , length=1
// pyramid(2) => [ [1], [1, 1] ] , length=2
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
// Note: the subarrays should be filled with 1s



List<List<int>> pyramid(int n) {
  // your code here
  // Solution1:
  List<List<int>> result =[];
  for(int i=0; i<n; i++){
    List<int> out = List<int>.generate(i+1, (index)=>1);
    result.add(out);
  }
  // Solution2:
  List<List<int>> result2 = List<List<int>>.generate(n, (i)=>List<int>.filled(i+1,1));
  return result2;
}

void main(){
  List<List<int>> result = pyramid(3);
  
  print(result);
}