import Foundation

public class invent: item, inventbp{
    
    private var list = [String: Int]()
    
    func getInvent(){
        if (list.isEmpty){
            print("\nYour shopping cart is empty. Please buy something!\n")
        }else{
            print("\nShopping Cart (\(list.count) items):")
            for (key, value) in list {
                print(value, key)
            }
        }
    }
    func addItem(item: String, qtt: Int){
        if (!list.isEmpty) {
            for (key,value) in list{
                if (key == item){
                    list[item] = qtt + value
                }else{
                    list[item] = qtt
                }
            }
        }else{
            list[item] = qtt
        }
    }
}
