import UIKit

//클로저의 변형(유연성)

//일반함수의 매개변수로 클로저변수를 받는다
func calc(a:Int, b:Int, method:(Int, Int)->Int) ->Int {
    return method(a, b)
}

//실행시 코드블럭(클로저)를 바로 선언하는 방법(자바: 익명함수)
var result = calc(a:10, b:20, method: {
    (a:Int, b:Int) -> Int in
    return a + b
}) // 이렇게 작성하기! 생략하면 가독성 Down

//반환형 생략 가능: 타입추정으로
result = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) /* -> Int */ in
    return a + b
})

//매개변수도 생략 가능
result = calc(a: 10, b: 20, method: {
    /* (a:Int, b:Int) in */
    return $0 + $1 // $0는 첫번째 매개변수, $1은 두번째 매개변수
})

//return도 생략가능
result = calc(a: 10, b: 20, method: {
    /* return */ $0 + $1 //코드의 제 마지막 줄은 반환값으로 생각함.
})
//너무 생략하면 가독성이 떨어진다. 그냥 귀찮더라고 정석으로 작성

//후행 클로저(Trailing Closure) : 함수를 소괄호로 미리 닫고, 클로저를 마지막으로 매개변수로 선언
result = calc(a: 10, b: 20) {
    (a:Int, b:Int) -> Int in
    return a + b
}

//후행 클로저에서 반환형 생략 가능
result = calc(a: 10, b: 20) {
    (a:Int, b:Int) /*-> Int*/ in
    return a + b
}
//후행 클로저에서 매개변수도 가능
result = calc(a: 10, b: 20) {
    /* (a:Int, b:Int) -> Int in */
    return $0 + $1
}
//후행 클로저에서 return키워드 생략가능
result = calc(a: 10, b: 20) {
    $0 + $1
}
