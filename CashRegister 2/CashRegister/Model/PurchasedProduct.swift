
import Foundation

//purchased product class to contain delails of products purchased
class PurchasedProduct {
var productName: String
var productQuantity: Int
var purchaseTime: Date
var purchaseAmount: Double
    
    init(productName: String, productQuantity: Int, purchaseTime: Date, purchaseAmount: Double) {
        self.productName = productName
        self.productQuantity = productQuantity
        self.purchaseTime = purchaseTime
        self.purchaseAmount = purchaseAmount
    }

    }

