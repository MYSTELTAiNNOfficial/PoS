var menuinput: String
var foodinput: String
var many: Int

let menu = menulist()
var inventory = invent()

repeat{
    menu.mainmenu()
    print("\nYour choice?",terminator: " ")
    menuinput = readLine() ?? ""
    
    if (menuinput == "1"){
        repeat{
            menu.foodmenu()
            print("\nYour F&B choice?",terminator: " ")
            foodinput = readLine() ?? ""
            if (foodinput.lowercased() == "f03"){
                inventory.namegs = "Gado-Gado"
                repeat{
                    print("How many \"\(inventory.namegs)\" you want to buy?",terminator: " ")
                    many = Int(readLine(strippingNewline: true)!)!
                    if (many > 0){
                        inventory.totalgs = many
                        inventory.addItem(item: inventory.namegs, qtt: inventory.totalgs)
                        inventory.getInvent()
                    } else if (many == 0){
                        print ("\nCancelling the Order")
                    } else if (many < 0){
                        print("\nPlease input the number above 0. Input 0 for cancel the order\n")
                    }
                } while many < -1
            }else if (foodinput.lowercased() == "f02"){
                inventory.namegs = "Chicken Satay"
                repeat{
                    print("How many \"\(inventory.namegs)\" you want to buy?",terminator: " ")
                    many = Int(readLine(strippingNewline: true)!)!
                    if (many > 0){
                        inventory.totalgs = many
                        inventory.addItem(item: inventory.namegs, qtt: inventory.totalgs)
                        inventory.getInvent()
                    } else if (many == 0){
                        print ("Cancelling the Order")
                    } else {
                        print("Please input the number above 0. Input 0 for cancel the order")
                    }
                } while many < -1
            }else if (foodinput.lowercased() == "f01"){
                inventory.namegs = "Nasi Padang"
                repeat{
                    print("How many \"\(inventory.namegs)\" you want to buy?",terminator: " ")
                    many = Int(readLine(strippingNewline: true)!)!
                    if (many > 0){
                        inventory.totalgs = many
                        inventory.addItem(item: inventory.namegs, qtt: inventory.totalgs)
                        inventory.getInvent()
                    } else if (many == 0){
                        print ("Cancelling the Order")
                    } else {
                        print("Please input the number above 0. Input 0 for cancel the order")
                    }
                } while (many < -1)
            }else if (foodinput.lowercased() == "b02"){
                inventory.namegs = "Mineral Water"
                repeat{
                    print("How many \"\(inventory.namegs)\" you want to buy?",terminator: " ")
                    many = Int(readLine(strippingNewline: true)!)!
                    if (many > 0){
                        inventory.totalgs = many
                        inventory.addItem(item: inventory.namegs, qtt: inventory.totalgs)
                        inventory.getInvent()
                    } else if (many == 0){
                        print ("Cancelling the Order")
                    }else {
                        print("Please input the number above 0. Input 0 for cancel the order")
                    }
                } while many < -1
            }else if (foodinput.lowercased() == "b01"){
                inventory.namegs = "Ice Tea"
                repeat{
                    print("How many \"\(inventory.namegs)\" you want to buy?",terminator: " ")
                    many = Int(readLine(strippingNewline: true)!)!
                    if (many > 0){
                        inventory.totalgs = many
                        inventory.addItem(item: inventory.namegs, qtt: inventory.totalgs)
                        inventory.getInvent()
                    } else if (many == 0){
                        print ("Cancelling the Order")
                    }else {
                        print("Please input the number above 0. Input 0 for cancel the order")
                    }
                } while many < -1
            }else if ((foodinput.lowercased() != "q")
                      && (foodinput.lowercased() != "b01")
                      && (foodinput.lowercased() != "b02")
                      && (foodinput.lowercased() != "f01")
                      && (foodinput.lowercased() != "f02")
                      && (foodinput.lowercased() != "f03")){
                print("\nI don't know what do you mean")
            }
        }while foodinput.lowercased() != "q"
    }else if (menuinput == "2"){
        inventory.getInvent()
    }else if ((menuinput.lowercased() != "x")
              && (menuinput.lowercased() != "2")
              && (menuinput.lowercased() != "1")){
        print("\nI don't know what do you mean")
    }
} while menuinput.lowercased() != "x"
