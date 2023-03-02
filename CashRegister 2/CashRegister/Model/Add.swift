import Foundation
class Add{
    var products = ProductList()
    
    //add quantity to the products
    func addQuantity(name: String, quantity: Int) -> ProductList {
        for product in products.allProducts {
            if product.productName == name {
                product.productQuantity += quantity
            }
        }
        return products
    }
}
