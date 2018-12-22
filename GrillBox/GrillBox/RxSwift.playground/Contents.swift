import UIKit
import RxSwift
import RxAtomic
import RxCocoa



let view = UIView()
let bag = DisposeBag()


let variable = Observable<String>.of("Привет")
variable.subscribe(onNext: { (event) in
    for i in event {
        print(i)
    }
}).disposed(by: bag)
