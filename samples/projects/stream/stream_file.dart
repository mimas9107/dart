import 'dart:io';
import 'dart:convert';
void main() async{

var file=File('stream_sample.txt');
print(File);

Stream<List> inputStream=file.openRead();

var linesStream=inputStream.transform(utf8.decoder).transform(LineSplitter());

await for(var line in linesStream){
  print(line);
}

print("read file finished");

}