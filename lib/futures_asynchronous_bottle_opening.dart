/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/futures_asynchronous_bottle_opening_base.dart';

/*
Practice Question 1: Asynchronous Bottle Opening

Task:

Create an interface called AsyncBottle with an asynchronous method open that returns a Future<String>.

Create a concrete class called SodaBottle that implements AsyncBottle and 
returns “Fizz fizz” after a delay when open is called.

Add a factory constructor to AsyncBottle that returns a SodaBottle instance.

Instantiate SodaBottle using the AsyncBottle factory constructor and call open on the object.

 */

abstract class AsyncBottle {
  Future<String> open();

  factory AsyncBottle.create() {
    return SodaBottle();
  }
}

class SodaBottle implements AsyncBottle {

  @override
  Future<String> open() {
    return Future.delayed(
      Duration(seconds: 5),
      () => "Fizz fizz"
    );
  }
}