import UIKit
import Core

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let networkClient = NetworkClient()
        print(networkClient.makeNetworkRequest())
    }
}

