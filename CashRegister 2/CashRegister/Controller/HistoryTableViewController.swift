
import UIKit

class HistoryTableViewController: UITableViewController {
    
    var productListFromSVC = [PurchasedProduct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productListFromSVC.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = productListFromSVC[indexPath.row].productName
        cell.detailTextLabel?.text = "\(productListFromSVC[indexPath.row].productQuantity)"
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdDestination = segue.destination as! DetailsViewController
        if let index = self.tableView.indexPathForSelectedRow{
            thirdDestination.detailsType = productListFromSVC[index.row].productName
            thirdDestination.detailsQuantity = "\(productListFromSVC[index.row].productQuantity)"
            thirdDestination.detailsTime = "\(productListFromSVC[index.row].purchaseTime)"
            thirdDestination.detailsAmount = "\(productListFromSVC[index.row].purchaseAmount)"
        }
    }
    
}
