import UIKit

//함수 function
//함수의 용도
//1. 코드를 기능별로 분리하고, (복잡한 코드를 간결하게 함)
//2. 코드블럭에 이름을 붙일 수 있고,
//3. 코드를 재사용할 수 있다. 코드중복을 피할 수 있다.

//func 함수이름( 매개변수 이름: 타입 ) -> 반환형타입 {
// 수행문...
//}

func myFunc() {
    print("myFunc() 호출됨")
}
myFunc()

//함수의 4가지 패턴
//1. 매개변수 없고, 반환형 없음
func myFunc1() -> Void{ //Void 생략가능
    print("myFunc1() 호출됨")
}
myFunc1()

//2. 매개변수 있고, 반환형 없음
func myFunc2( name: String) {
    print("myFunc2() 호출됨 " + name)
}
myFunc2(name: "홍길동") // 매개변수이름과 값을 동시에 넣어줌.

//3. 매개변수 없고, 반환형 있음
func myFunc3() -> Int {
    print("myFunc() 호출됨")
    return 10
}
let result = myFunc3()

//4. 매개변수 있고, 반환형 있음
func myFunc4(name: String) -> String {
    print("myFunc() 호출됨")
    return name + " 반환됨"
}
myFunc4(name: "홍길동")

//함수의 고급 문법

//매개변수를 여러개 넣을 때
func printMyName(name1: String, name2: String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName(name1: "홍길도", name2: "변사또")

//매개변수의 기본값을 넣을 수 있음
func printMyName2(name1: String, name2: String="춘항이") {
    print("name1: \(name1), name2: \(name2)")
}
printMyName2(name1: "홍길동")
printMyName2(name1: "홍길동", name2: "변사또") // 기본값 무시 가능

//호출시 매개변수이름 생략 가능
func printMyName3(_ name1: String, _ name2: String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName3("홍길동", "변사또")

//매개변수이름에 별명(레이블)을 줄 수 있음
/*
func printMyName4(hero name1: String, actor name2: String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName4(hero: "홍길동", actor: "변사또")

//가변 매개변수 - 매개변수를 배열로 입력할 수 있음.
func printMyName5(name1: String, name2: String...) {
    print("name1: \(name1), name2: \(name2)")
    for name in name2  {
        print( name )
    }
}
printMyName5(name1: "홍길동", name2: "변사도", "춘향이", "이몽룡")
*/

func printMyName5(name1: String, name2: String...) -> [String] {
    print("name1: \(name1), name2: \(name2)")
//    for name in name2  {
//        print( name )
//    }
    return name2
}

let names = printMyName5(name1: "홍길동", name2: "변사도", "춘향이", "이몽룡")
if let chunhyangIndex = names.firstIndex(of: "춘향이") { // 첫번째 인자부터 찾기
    print("춘향이만 출력 : "+names[chunhyangIndex])
}
