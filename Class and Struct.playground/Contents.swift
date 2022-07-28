import Foundation

///Struct e Class - o nome inicia com maiúscula
class Steve { //poderia usar o struct ao invés de class
    let lastName: String = "Jobs"
    let birthdayYear: Int = 1955
    let isAlive: Bool = false
    
    func makeMoney(idea: String) -> String {
        "I transform \(idea) in money"
    }
}

// Instância da estrutura Steve
var steve = Steve()

steve.isAlive
steve.birthdayYear
let money = steve.makeMoney(idea: "iPad")
print(money)

let number: Int = 30

struct PersonStruct {
    let firstName: String
    let lastName: String
    let isAlive: Bool
}

let personStruct = PersonStruct(firstName: "Steve",
                                lastName: "Jobs",
                                isAlive: false)

class PersonClass {
    let firstName: String
    let lastName: String
    let isAlive: Bool
    
    init(firstName: String, lastName: String, isAlive: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.isAlive = isAlive
    }
    
    func play() {
        print("Jogando bola")
    }
}

var personClass: PersonClass = PersonClass(firstName: "Steve",
                                           lastName: "Jobs",
                                           isAlive: false)
personClass.firstName
personClass.play()
