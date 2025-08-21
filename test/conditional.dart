class Conditional{
  void simpleIf(){
    int age = 30;
    if(age < 20) {
      print("아앙재경아");
    } else {
      print("아앙재경이는깜토야");
    }
  }


  void simpleSwitch(){
    int age = 30;

    switch(age){
      case 10:
        print("아앙재경앙");
        break;

      case 20:
        print("아앙재경앙");
        break;

      case 30:
        print("아앙재경앙");
        break;

    }
  }

  void connectionIf(int score){
    //int score = 82;
    if(score >= 90){
      print("A");
    } else if(score >= 80){
      print("B");
    } else if(score >= 70){
      print("C");
    } else if(score >= 60){
      print("D");
    } else {
      print("F");
    }
  }

  void connectionSwitch(int age){
    //int age = 82;

    switch (age) {
      case >= 90:
        print('A');
      case >= 80 && < 90:
        print('B');
      case >= 70 && < 80:
        print('C');
      default:
        print('F');
    }
  }
}