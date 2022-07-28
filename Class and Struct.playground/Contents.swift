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
    var lastName: String
    let isAlive: Bool
}

let personStruct = PersonStruct(firstName: "Steve",
                                lastName: "Jobs",
                                isAlive: false)

class PersonClass {
    let firstName: String
    var lastName: String
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

/// Cópia e referência
var personStruct2 = personStruct
var personClass2 = personClass

personClass2.lastName = "Wozniak"
personStruct2.lastName = "Wozniak"

// Struct, quando mudada/copiada, a cópia é diferente do original. O Class, quando mudada/copiada, muda o original também:

print(personStruct2.lastName)
print(personStruct.lastName)

print(personClass.lastName)
print(personClass2.lastName)

///Herança - dois pontos e o nome do class q ta herdando:
class AdultPerson: PersonClass {
    let boleto: Int
    init(boleto: Int, firstName: String, lastName: String, isAlive: Bool) {
        self.boleto = boleto
        super.init(firstName: firstName, lastName: lastName, isAlive: isAlive)
    }
    
    func sleep() {
        print("Bora dormir")
    }
    
    override func play() {
        print("Bingo")
    }
}

let adultPerson = AdultPerson(boleto: 2000,
                              firstName: "Leo",
                              lastName: "Cunha",
                              isAlive: true)
adultPerson.boleto
adultPerson.play()
adultPerson.sleep()

//
