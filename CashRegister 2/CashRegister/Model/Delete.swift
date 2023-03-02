
import Foundation
class Delete{
    var products = ProductList()
    
    //Delete quantity from a product
    func updateQuantity(name n: String, quantity q: Int) -> ProductList{
        for product in products.allProducts {
              if product.productName == n {
                  product.productQuantity -= q
              }
          }
          return products
      }
   
}

