var menuinput: String
var foodinput: String
var menufoodinput: String
var lists: [String] = []
var many: Int
var menulist: [String] = ["Gado-Gado", "Chicken Satay", "Nasi Padang", "Mineral Water", "Ice Tea"]

func menu(){
  print("\n============================================")
  print("Point of Sales (PoS)")
  print("============================================\n")
  print("Options:")
  print("[1] Buy Food")
  print("[2] Shopping List")
  print("[x] Exit")
}
func foodmenu(){
  print("\n============================================")
  print("Hi, we've 5 Food & Beverage options for you!")
  print("============================================\n")
  print("Options:")
  print("[F03] Gado-Gado")
  print("[F02] Chicken Satay")
  print("[F01] Nasi Padang")
  print("[B02] Mineral Water")
  print("[B01] Ice Tea")
  print("[Q] Exit")
}

repeat{
  menu()
  print("\nYour choice?",terminator: " ")
  menuinput = readLine() ?? ""

  if (menuinput == "1"){
    repeat{
      foodmenu()
      print("\nYour F&B choice?",terminator: " ")
      foodinput = readLine() ?? ""
      if (foodinput.lowercased() == "f03"){
        repeat{
          print("How many \"Gado-Gado\" you want to buy?",terminator: " ")
          many = Int(readLine() ?? "0")!
          if (many > 0){
            lists += ["\(many) Gado-Gado"]
            print("\nShopping Cart (\(lists.count) items):")
            for list in lists {
              print(list)
            }
          } else {
            print("Please input the number above 0")
          }
        } while many < 1
      }else if (foodinput.lowercased() == "f02"){
        repeat{
          print("How many \"Chicken Satay\" you want to buy?",terminator: " ")
          many = Int(readLine() ?? "0")!
          if (many > 0){
            lists += ["\(many) Chicken Satay"]
            print("\nShopping Cart (\(lists.count) items):")
            for list in lists {
              print(list)
            }
          } else {
            print("Please input the number above 0")
          }
        } while many < 1
      }else if (foodinput.lowercased() == "f01"){
        repeat{
          print("How many \"Nasi Padang\" you want to buy?",terminator: " ")
          many = Int(readLine() ?? "0")!
          if (many > 0){
            lists += ["\(many) Nasi Padang"]
            print("\nShopping Cart (\(lists.count) items):")
            for list in lists {
              print(list)
            }
          } else {
            print("Please input the number above 0")
          }
        } while many < 1
      }else if (foodinput.lowercased() == "b02"){
        repeat{
          print("How many \"Mineral Water\" you want to buy?",terminator: " ")
          many = Int(readLine() ?? "0")!
          if (many > 0){
            lists += ["\(many) Mineral Water"]
            print("\nShopping Cart (\(lists.count) items):")
            for list in lists {
              print(list)
            }
          } else {
            print("Please input the number above 0")
          }
        } while many < 1
      }else if (foodinput.lowercased() == "b01"){
        repeat{
          print("How many \"Ice Tea\" you want to buy?",terminator: " ")
          many = Int(readLine() ?? "0")!
          if (many > 0){
            lists += ["\(many) Ice Tea"]
            print("\nShopping Cart (\(lists.count) items):")
            for list in lists {
              print(list)
            }
          } else {
            print("Please input the number above 0")
          }
        } while many < 1
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
    if (lists.count == 0){
      print("\nYour shopping cart is empty. Please buy something!\n")
    } else {
      print("\nShopping Cart (\(lists.count) items):")
      for list in lists {
        print(list)
      }
    }
  }else if ((menuinput.lowercased() != "x")
            && (menuinput.lowercased() != "2") 
            && (menuinput.lowercased() != "1")){
    print("\nI don't know what do you mean")
  }
} while menuinput.lowercased() != "x"