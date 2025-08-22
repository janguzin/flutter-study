// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smwu_202508/main.dart';

import 'collections.dart';
import 'conditional.dart';
import 'method.dart';
import 'for_loop.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  //ForLoop();]

  List<Product> productList = [];
  Product pr1 = Product(name: 'phone', company: 'samsung');
  Product pr2 = Product(name: 'waatch', company: 'apple');
  productList.addAll([pr1, pr2]);

  for (var product in productList) {
    print(product);
  }
  pr1.sale();
  print(pr2);

  Person person = Person("장재경", 37, 65);

  //person : Instance of 'Person'
  // Person 클래스의 인스턴스
  // 인스턴스 => 클래스를 생성해서, 메모리에 올라간 상태
  print("person: $person");
  print("person name: ${person.name}");
  print("person age: ${person.age}");
  print("person weight: ${person.weight}");
  print("person nickname: ${person.nickName}");
  person.talk();

   List<Person> personList = [];

   Person p1 = Person("눈송이", 37, 65.5);
   Person p2 = Person("눈덩이", 42, 69.7);

   personList.add(p1);
   personList.add(p2);

   for (var person in personList) {
     print(person);

  }









  // Method();
  //
  // var collecion = Collections();
  //
  // collecion.listAdd();
  // collecion.listRemove();
  // collecion.mapController();
  // collecion.practice();
  //
  // var conditional = Conditional(); //alt+enter
  // conditional.simpleSwitch();
  // conditional.connectionIf(82);
  // conditional.connectionSwitch(82);
  //
  // void main () {
  //   conditional.connectionIf(82);
  //   conditional.connectionSwitch(90);
  // }




}
