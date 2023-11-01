import UIKit

// 스위프의 객체 타입
// Any, AnyObject, nil

// Any 타입 : 모든 데이터 타입을 담을 수 있음. 자바 최상위 오브젝트 Object
//           기본 데이터 : Int, Float, Double, Bool, String
//           Class, Struct, Enum, Array
var myAny : Any = 100; // 정수데이타
myAny = "문자열"
myAny = true

//AnyObject 타입 : 모든 클래스 타입을 담을 수 있음.
class Myclass1 {
    var name = "홍길동"
}
class Myclass2{
    var age = 30
}
var myAnyObect : AnyObject = Myclass1()
myAnyObect = Myclass2()

// nil 타입 : 널 비어있음 NULL null 비어있는 객체변수(참조변수)
// var myNil = nil
var myNil : Int? = nil

// nil(null) : 수많은 참조 에러가 생김!
// null 체크를 편하게 해보자!
// NULL Exception의 발생빈도를 줄여보자~!
