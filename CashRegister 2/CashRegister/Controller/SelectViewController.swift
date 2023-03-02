
import UIKit

class SelectViewController: UIViewController {

    var productListFromVC = [PurchasedProduct]()
    var pListFromVC = [Product]()
    var prodTypeFromRVC : String = ""
    var prodQuantityFromRVC : Int? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //display view controller with segue identifiier and send data respectfully
        if segue.identifier == "toHistory"{
        let secondDestination = segue.destination as! HistoryTableViewController
        secondDestination.productListFromSVC = productListFromVC
        }
        else if segue.identifier == "toRestock"{
            let secondDestination = segue.destination as! RestockViewController
            secondDestination.productList = pListFromVC
        }
        
    }
    
    
    @IBAction func unwindToSelectViewController(segue: UIStoryboardSegue) {
        _ = segue.source as? RestockViewController 
    }
    
 
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

            if self.isMovingFromParent {
        performSegue(withIdentifier: "unwindToView", sender: self)
            }
    }


}
