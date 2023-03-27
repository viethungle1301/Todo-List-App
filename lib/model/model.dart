// class Todo{
//    late int _id;
//  late String _content;
//   Todo.fromData(id, content){
//     _id = id;
//     _content = content;
//   }
//   String get content => _content;
//   set content(String value){
//     _content = content;
//   }
//   int get id => _id;
//   set id(int value){
//     _id = id;
//   }
// }
class Todo{
  final int id;
  final String name;
  Todo({required this.id, required this.name});
}