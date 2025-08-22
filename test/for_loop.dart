class ForLoop {

  ForLoop(){
    normalForLoop();
    enhancedForLoop();
    forEachForLoop();
    practice();
  }

  void normalForLoop(){
    for(int i = 0; i<5; i++) {
      print("forloop: $i ");
    }

    List<int> ageList = [30, 10, 23, 18];
    
    for(int i = 0; i<ageList.length; i++) {
      print("ageList indew: $i, value: ${ageList[i]} ${ageList[i]}");
    }
  }

  void enhancedForLoop(){
    List<int> ageList = [30, 10, 23, 18];
    for(int value in ageList){
      print('enhanceForLoop $value');
    }
  }

  void forEachForLoop() {
    List<int> ageList = [30, 10, 23, 18];

    ageList.forEach((element){
      print("$element");
    });
  }

  void practice(){
    List<double> ageList = [30.2, 18.8, 82.2, 2.27];

    for (int i = 0; i < ageList.length; i++){
      print(ageList[i]);
    }

    for(int i = 0; i<ageList.length; i++) {
      print("ageList index: $i, value: ${ageList[i]} ${ageList[i]}");
    }

    for(double value in ageList){
      print('enhanceForLoop $value');
    }

    ageList.forEach((element){
      print("$element");
    });

  }

}