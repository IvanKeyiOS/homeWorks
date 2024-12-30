import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
/*
 Давайте отправим корабль в круиз.

 Создайте тип, который будет описывать наш корабль.+
 Создайте перечисление, для описания должности члена экипажа: капитан, помощник капитана, механик, боцман, доктор, матрос и т.д.+
 Создайте перечисление для описания должностей сервисного персонала: повар, горничная, артист и т.д.+
 Создайте тип для описания члена экипажа. Должен содержать имя, фамилию, должность, опыт работы.+

 Добавьте в корабль свойство, которое будет содержать членов экипажа. Свойство должно быть доступно только для чтения (private(set)).+
 Реализуйте метод для посадки члена экипажа.+
 Повторите для сервисного персонала+

 Реализуйте метод проверки корабля перед отплытием, с обработкой следующих ошибок:
     ⁃    Если не хватает членов экипажа, выведите сообщение сколько не хватает.+
     ⁃    Если на корабле нет капитана или механика, корабль отплыть не может. Сообщите, кого еще ждем.+
     ⁃    Если у кого-то из членов экипажа стаж меньше 3-х лет, сообщите кто это.+

 Создайте перечисление для описания класса кают.+
 Создайте тип, который будет описывать пассажира.+
 Добавьте в корабль свойства с данными о количестве кают каждого класса.+
 Добавьте в корабль свойство для чтения - массив, содержащий пассажиров.+
 Реализуйте метод посадки пассажира на корабль. Если у пассажира нет билета, он не может сесть на корабль. Сообщите об этом.+
 
 Измените метод проверки корабля перед отплытием так, чтобы если количество пассажиров с билетами определенного класса превышает количество кают данного класса, он возвращал сообщение о том, каких кают и в каком количестве недостаточно.
 Измените метод проверки корабля перед отплытием так, чтобы если количество пассажиров превышает количество сервисного персонала больше чем на 30% отплытие было невозможно по причине неукомплектованности персонала. Выведите сообщение сколько человек еще нужно нанять.

 Если корабль готов к отплытию, выведите сообщение о старте путешествия.
 */

enum ShipError: Error {
    case missingCrewMember(roles: [CrewPosition])
    case notEnoughExperiencedCrew(members: [CrewMember])
    case notEnoughNumbersOfCrewMembers(required: Int, current: Int)
    case notEnoughNumbersOfCabins(shortages: [Cabin: Int])
    case notEnoughNumbersServiceStaff(required: Int, current: Int)
    case invalidPassengerTicket
}

enum CrewPosition: String {
    case captain = "Captain"
    case mechanic = "Mechanic"
    case mate = "Mate"
    case boatswain = "Boatswain"
    case doctor = "Doctor"
    case sailor = "Sailor"
}

enum ServiceCrewPosition {
    case cook
    case maid
    case artist
}

enum Cabin: String {
    case standard = "Standard"
    case deluxe = "Deluxe"
    case suite = "Suite"
    case economy = "Economy"
    case firstClass = "First Class"
    case vip = "VIP Suite"
}

struct ServiceCrew {
    let name: String
    let surname: String
    let position: ServiceCrewPosition
    let workExperience: Int
}

struct CrewMember {
    let name: String
    let surname: String
    let position: CrewPosition
    let workExperience: Int
}

struct Passenger {
    let name: String
    let surname: String
    let whatCabinTheyHave: Cabin
    let ticket: String
}

struct Ship {
    private(set) var crew: [CrewMember] = []
    private(set) var serviceCrew: [ServiceCrew] = []
    private(set) var passengers: [Passenger] = []
    
    var minimumCrewRequired: Int = 30
    
    var cabins: [Cabin: Int] = [.standard: 50,
                                .deluxe: 20,
                                .suite: 10,
                                .economy: 15,
                                .firstClass: 20,
                                .vip: 5
    ]
    
    // MARK: Add new member of crew
    mutating func addCrewMember(_ member: CrewMember) {
           crew.append(member)
       }

    // MARK: Add new member of service crew
    mutating func addServiceMember(_ member: ServiceCrew) {
        serviceCrew.append(member)
       }

    // MARK: Add new passenger on board
    mutating func addPassenger(_ passenger: Passenger)  {
        guard !passenger.ticket.isEmpty else {
            return print("Ошибка: у пассажира нет билета.")
        }
        passengers.append(passenger)
    }

    // MARK: Check wether ship has a captain and a mechanic
       func checkBeforeDeparture() throws {
           let requiredCrew = [
               CrewPosition.captain,
               CrewPosition.mechanic
           ]

           let missingRoles = requiredCrew.filter { role in
               !crew.contains(where: { $0.position == role })
           }

           if !missingRoles.isEmpty {
               throw ShipError.missingCrewMember(roles: missingRoles)
           }

           // MARK: Check enough work experience members of crew
           let inexperiencedCrew = crew.filter { $0.workExperience < 3 }
           if !inexperiencedCrew.isEmpty {
               throw ShipError.notEnoughExperiencedCrew(members: inexperiencedCrew)
           }

           // MARK: Check minimum numbers of crew members
           let minimumCrewCount = 10
           if crew.count < minimumCrewCount {
               throw ShipError.notEnoughNumbersOfCrewMembers(required: minimumCrewCount, current: crew.count)
           }

           // MARK: Check enough numbers cabins on the board
           var cabinShortages: [Cabin: Int] = [:]
           for cabinClass in cabins.keys {
               let requiredCabins = passengers.filter { $0.whatCabinTheyHave == cabinClass }.count
               if requiredCabins > cabins[cabinClass, default: 0] {
                   cabinShortages[cabinClass] = requiredCabins - cabins[cabinClass, default: 0]
               }
           }

           if !cabinShortages.isEmpty {
               throw ShipError.notEnoughNumbersOfCabins(shortages: cabinShortages)
           }

           // MARK: Check passengers and numbers service crew
           let maxPassengersPerServiceStaff = Int(Double(serviceCrew.count) * 1.3)
           if passengers.count > maxPassengersPerServiceStaff {
               let additionalStaffNeeded = Int(ceil(Double(passengers.count) / 1.3)) - serviceCrew.count
               throw ShipError.notEnoughNumbersServiceStaff(required: additionalStaffNeeded, current: serviceCrew.count)
           }

           print("Корабль готов к отплытию. Начинаем путешествие!")
       }
   }

var ship = Ship()

ship.addCrewMember(CrewMember(name: "John", surname: "Smith", position: .captain, workExperience: 25))
ship.addCrewMember(CrewMember(name: "Mike", surname: "Brown", position: .mechanic, workExperience: 10))
ship.addCrewMember(CrewMember(name: "Cris", surname: "Evans", position: .boatswain, workExperience: 22))
ship.addCrewMember(CrewMember(name: "Jared", surname: "Dadly", position: .doctor, workExperience: 15))
ship.addCrewMember(CrewMember(name: "Ben", surname: "Simons", position: .mate, workExperience: 11))
ship.addCrewMember(CrewMember(name: "Bruce", surname: "Hartly", position: .sailor, workExperience: 18))
ship.addCrewMember(CrewMember(name: "Adam", surname: "Bennet", position: .sailor, workExperience: 3))
ship.addCrewMember(CrewMember(name: "Adam", surname: "Bennet", position: .sailor, workExperience: 5))
ship.addCrewMember(CrewMember(name: "Adam", surname: "Bennet", position: .sailor, workExperience: 5))
ship.addCrewMember(CrewMember(name: "Adam", surname: "Bennet", position: .sailor, workExperience: 5))

ship.addServiceMember(ServiceCrew(name: "Harry", surname: "Cruse", position: .artist, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Drew", surname: "Bill", position: .cook, workExperience: 20))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))
ship.addServiceMember(ServiceCrew(name: "Derek", surname: "Carter", position: .maid, workExperience: 5))

ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
//ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: ""))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))
ship.addPassenger(Passenger(name: "Nicole", surname: "Lowrance", whatCabinTheyHave: .deluxe, ticket: "D20"))

do {
    try ship.checkBeforeDeparture()
} catch ShipError.missingCrewMember(let roles) {
    print("Корабль не может отплыть. Отсутствуют: \(roles.map { $0.rawValue }.joined(separator: ", "))")
} catch ShipError.notEnoughExperiencedCrew(let members) {
    let names = members.map { "\($0.name) \($0.surname)" }.joined(separator: ", ")
    print("На корабле есть члены экипажа с опытом менее 3 лет: \(names)")
} catch ShipError.notEnoughNumbersOfCrewMembers(let required, let current) {
    print("Не хватает \(required - current) членов экипажа.")
} catch ShipError.notEnoughNumbersOfCabins(let shortages) {
    for (cabinClass, shortage) in shortages {
        print("Недостаточно кают класса \(cabinClass.rawValue): требуется еще \(shortage) кают.")
    }
} catch ShipError.notEnoughNumbersServiceStaff(let required, let current) {
    print("Корабль не может отплыть. Необходимо нанять еще \(required) членов сервисного персонала.")
}

/*
 TODO: - ❓ Вопросы к изучению:
 - Какую функцию называют генерирующей и какие ключевые слова используются при ее написании?
 - Как вызвать генерирующую функцию?
 - Зачем нам нужен do-catch блок?
 - Как использовать тип Result?
 - Что делает defer?
 */


