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
    
    deinit {
        print("C'est fini")
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

/// deInit (codigo add no PersonClass)
for _ in 1...3 {
    let person = PersonClass(firstName: "Brenno",
                             lastName: "Silva",
                             isAlive: true)
    person.play()
}

//Optionals

var age: Int?
age = 10
// print(age)

// 1) Optional Binding:
if let unrappedAge = age { //poderia nomear o unrappedAge como age que não teria problema
    print(unrappedAge + 1)
} else {
    print("Tem nada aqui não")
}

// 2) Optional Chaining:
var name: String?
print(name?.last) // o próprio xcode coloca o ? pra dizer q é um optional (se existir, ele imprime; se não, é nulo).
name = "Isabora<3"
print(name?.last)

if let lastName = name?.last {
    print(lastName)
}

// 3) Guard let:
func auth(password: Int?) { // O password é uma string/inteiro opcional ou nulo
    guard let password = password else { return }
    password / 2
}

auth(password: nil)
auth(password: 2000)

// 4) Coalescing Operator:
func setName(name: String?) -> String {
    name ?? "Não tem nome aqui"
}

let concreteName = setName(name: nil)
print(concreteName)

// 5) Outra forma não legal de fazer funcionar (forced wrap):
func setAge(age: Int?) -> Int {
    age!
}

setAge(age: nil)
