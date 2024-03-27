import Foundation

// 1. შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)

enum Gender {
    case male
    case female
}

// 2. შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender

protocol SuperBeing {
    var name: String { get }
    var strength: Int { get }
    var speed: Int { get }
    var weakness: String { get }
    var gender: Gender { get }
}

// 3. SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა

extension SuperBeing {
    var strength: Int {
        100
    }
    var speed: Int {
        40
    }
}

// 4. შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
// 5. გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String

class SuperHero: SuperBeing {
    var name: String
    var weakness: String
    var gender: Gender
    
    init(name: String, weakness: String, gender: Gender) {
        self.name = name
        self.weakness = weakness
        self.gender = gender
    }
}

class SuperVilllain: SuperBeing {
    var name: String
    var weakness: String
    var gender: Gender
    
    init(name: String, weakness: String, gender: Gender) {
        self.name = name
        self.weakness = weakness
        self.gender = gender
    }
}
// 5. გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String

extension SuperHero {
    var outfitColor: String {
        "შავი"
    }
    var equipment: String {
        "მაგიური ქამარი"
    }
    var vehicle: String {
        "მფრინავი მანქანა"
    }
}

// 6. გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს - “‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).
// 7. გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს - “‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”)

extension SuperHero {
    func rescue(victimsName: String) {
        print("\(self.name) არ შეუშინდა სახიფათო სიტუაციას და \(victimsName) გადაარჩინა სიკვდილს")
    }
    
    func combat(villainName: SuperVilllain) {
        print("\(self.name) შეერკინა და დაამარცხა \(villainName.name)")
    }
}

// 8. გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String

extension SuperVilllain {
    var evilScheme: String {
        "კვარას დამტვრევა"
    }
    var obsession: String {
        "ევროპის ჩემპიონატი"
    }
    var rivalry: String {
        "საქართველო"
    }
}

// 9. გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს - “ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)

// 10. გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს - “‘ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა)

extension SuperVilllain {
    func attack(heroName: SuperHero) {
        print("ბოროტმოქმედმა \(self.name) გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა \(heroName.name) მის შეჩერებას თუ შეძლებს")
    }
    
    func experimentation(subject: String) {
        print("\(self.name) ექსპერიმენტებს ატარებს დაუცველ მოქალაქეებზე, მისი მსვერპლი ამჟამად \(subject)")
    }
}

// 11. შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან

//MARK: საქართველოს გმირები
let mamarda = SuperHero(name: "მამარდა", weakness: "არ აქვს", gender: .male)
let kvara = SuperHero(name: "კვარა", weakness: "არ აქცს", gender: .male)
let kochorashvili = SuperHero(name: "ქოჩო", weakness: "არ აქვს", gender: .male)
let chakve = SuperHero(name: "ჩაკვე", weakness: "იღლება 90 წუთის შემდეგ", gender: .male)
let kasho = SuperHero(name: "კაშო", weakness: "ასაკი", gender: .male)


//MARK: ბოროტმოქმედები საბერძნეთიდან
let georgios = SuperVilllain(name: "Georgios Giakoumakis", weakness: "ცუდად ურტყამს პენლებს", gender: .male)
let ioanidis = SuperVilllain(name: "ioaniddis", weakness: "უჭირს გოლის გატანა", gender: .male)
let pelkas = SuperVilllain(name: "pelkas", weakness: "უჭირს გოლის გატანა", gender: .male)
let masouras = SuperVilllain(name: "masouras", weakness: "უჭირს გოლის გატანა", gender: .male)
let viachodimos = SuperVilllain(name: "viachodimos", weakness: "უჭირს პენლების აღება", gender: .male)

mamarda.combat(villainName: georgios)
kvara.rescue(victimsName: "ბუდუ")
ioanidis.experimentation(subject: "გელაა")
