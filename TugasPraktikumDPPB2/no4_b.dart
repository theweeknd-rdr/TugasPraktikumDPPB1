void main(){
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];

  print(list1);
  print(list2);
  print(list2.length);

  List<int?> list_1 = List<int?>.from(list1);
  list_1[1] = null;
  print(list_1);
  
  var list3 = [0, ...?list_1];
  print(list3);
  print(list3.length);

}