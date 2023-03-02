
import UIKit

class RestockViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var productList = [Product]()
    var products : ProductList?
    var addProductQuantity : Add?
    
    @IBOutlet weak var restock: UIButton!
    @IBOutlet weak var restockTable: UITableView!
    @IBOutlet weak var updateQuantity: UITextField!
    var productSelected : Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restockTable.reloadData()
        addProductQuantity = (UIApplication.shared.delegate as! AppDelegate).addProduct
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = productList[indexPath.row].productName
        cell.detailTextLabel?.text = "\(productList[indexPath.row].productQuantity)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        productSelected = indexPath.row
    }
    
    
    func displayError(){
        let alert = UIAlertController(title: "Error", message: "You have to select an item or provide a new quantity", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: .none)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func restockButton(_ sender: Any) {
        
        if let correctQuantity = updateQuantity.text{
            if productSelected != nil && correctQuantity != ""{
                let quantity = Int(correctQuantity)
                productList[productSelected!].productQuantity = productList[productSelected!].productQuantity + quantity!
                
            }
            else {
                displayError()
            }
            restockTable.reloadData()
        }
        updateQuantity.text = ""
        productSelected = nil
    }
}
   
