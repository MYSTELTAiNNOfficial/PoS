import Foundation

public class item{
    var name: String
    var total: Int
    private var list = [String: Int]()
    
    init(name: String = "",total:Int = 0){
        self.name = name
        self.total = total
    }
    
    public var namegs: String{
        get{
            return name
        }
        set(datas){
            name = datas
        }
    }
    public var totalgs: Int{
        get{
            return total
        }
        set(datas){
            total = datas
        }
    }
}
