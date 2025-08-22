
/// 클래스에는 함수가 들어갈 수도 있고, 변수가 들어갈 수도 있음.
class Person {
  String name;
  int age;
  double weight;
  String nickName = "깜토";

  Person(this.name, this.age, this.weight);

  void talk(){
    print('$name이 김창수님을 좋아합니다.');
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age, weight: $weight}';
  }
}