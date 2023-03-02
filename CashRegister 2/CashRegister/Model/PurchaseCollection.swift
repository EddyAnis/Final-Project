

import Foundation
class PurchaseCollection{
    var allPurchase : [PurchasedProduct] = [PurchasedProduct]()
    
    //Add purchased product details
    func addPurchase(p : String, q : Int, d : Date, a : Double){
        allPurchase.append(PurchasedProduct(productName: p, productQuantity: q, purchaseTime: d, purchaseAmount: a))
    }
}
