class Collections {
  /// List, Map, Set
  ///


  void listAdd() {
    List<String> listInt = [];
    listInt.add("깜토");
    listInt.add("깜댕");
    listInt.add("호랑이");
    listInt.addAll(["깜토", "호랑이", "깜댕"]);
    //listInt.insert(0, 50);
    print(listInt);

  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.remove("기린");

    nameList.removeLast();

    nameList.removeAt(0);

    nameList.removeWhere((element) {
      return element == "호랑이";
    });

    print(nameList);
    nameList.clear();
    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 5, 2, 6, 7, 4, 8];
    int length = ageList.length;
    print('Collections.listController : $length');

    int two = ageList[2];
    print('Collections.listController two : $two');

    /// ageList가 비어있는 경우 isEmpty = true
    bool isEmpty = ageList.isEmpty;

    /// ageList가 비어있지 않은 경우 isNotEmpty = true
    bool isNotEmpty = ageList.isNotEmpty;
  }

  /// Map이라는 타입은 => key, value
  void mapController() {
    Map m = {
      "a" : 10,
      "b" : 11,
      "c" : 12,
      50: 61,
      1111:4444,
    };

    var maValue = m["a"];
    print('Collections.mapController : $maValue');
  }

  void practice(){
    List<String> animals = [];
    animals.addAll(["깜토", "깜댕", "송아지", "고양이", "깜냥"]);
    print('$animals');
    animals.removeAt(1);
    print('$animals');

    Map<String, int> ageMap = {"장재경": 37};
    ageMap["김창수"] = 33;
    ageMap["차요한"] = 42;
    ageMap["박경원"] = 35;

    ageMap.removeWhere((key, value) {
      return key == "김창수";
    });
    print('$ageMap');


    Set nation = {};
    nation.add("이탈리아");
    nation.add("하와이");
    nation.add("체코");
    nation.add("오스트리아");
    nation.add("헝가리");
    print('$nation');
    nation.remove("하와이");
    print('$nation');

  }
}