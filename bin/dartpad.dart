void main(List<String> args) {
  ltm();
  print(listToMap);
  print(listToMap[1]![1]);
}

List list1 = [1, 2, 3];
List list2 = ["a", "b", "x"];
List list3 = ["sfdsfsfd", "wetrwgtre", "dgerb"];
List listAll = [list1, list2, list3];

Map<int, List> listToMap = {};

ltm() {
  for (int x = 0; x < list1.length; x++) {
    Map<int, List> _newEntries = {
      list1[x]: [list2[x], list3[x]]
    };

    listToMap.addEntries(_newEntries.entries);
  }
}

bool isSort1 = true;

void listSort() {
  isSort1 = !isSort1;
  list3.sort((a, b) => isSort1 ? a.compareTo(b) : b.compareTo(a));
}
