void main() {
  Bag bag = BigBag();
  
  bag.put(1);
  bag.put(2);
  bag.put(3);
  bag.put(4);
  bag.put(5);
 
  print(bag.hasNext()); // true
  print(bag.size()); // 5
  
  print(bag.hasNext()); // true
  print(bag.get()); // 5
  print(bag.hasNext()); // true
  print(bag.get()); // 4
  print(bag.hasNext()); // true
  print(bag.get()); // 3
  print(bag.hasNext()); // true
  print(bag.get()); // 2
  print(bag.hasNext()); // true
  print(bag.get()); // 1
  
  print(bag.hasNext()); // false
  print(bag.size()); // 0
}

abstract class Bag {
  void put(int i);
  
  int get();
  
  int size();
  
  bool hasNext();
}

class BigBag extends Bag {
  List<int> list = List<int>();

@override
  int get() {
    if (list.length > 0) {
      int res = list[list.length - 1];
      list.remove(list[list.length - 1] );
      return res;
    }
    return null;
  }

  @override
  bool hasNext() {
    if (list.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void put(int i) {
    list.add(i);
  }

  @override
  int size() {
    return list.length;
  }
}