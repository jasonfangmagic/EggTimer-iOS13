
//If it meet the first condition, else if will be skipped

func loveCalculator(){
    let loveScore = Int.random(in:1 ... 100)
    
    if loveScore > 80{
        print("love is love")
    } //do A
    else if loveScore > 40 {
        print("gg")
    } //do B
    else {
        print("you'll be forever alone")
    } //do C
}

loveCalculator()

//If it meet the first condition, else if will be skipped

func loveCalculator2(){
    let loveScore = Int.random(in:1 ... 100)
    
    if loveScore > 80{
        print("love is love")
    } //do A
    if loveScore > 40 && loveScore <= 80 {
        print("gg")
    } //do B
    else {
        print("you'll be forever alone")
    } //do C
}

loveCalculator2()

// Switch is better when if else cont

func loveCalculator3() {
    let loveScore = Int.random(in:1 ... 100)
    
    switch loveScore {
    case 81 ... 100 :
        print("love is love")
        
    case 41 ... 80 :
        print("gg")
        
    case ...40 :
        print("haha")
        
    default:print("you'll be forever alone")
    }
}

loveCalculator3()

// Dictionary

var dict : [String : Int] = ["Angela" : 892139, "Philipp" : 81273432]

print(dict["Angela"])

//Optional

var player1Username : String? = nil

player1Username = "Jack"

player1Username = nil

//safty check
if player1Username != nil {
    print(player1Username!)
}

