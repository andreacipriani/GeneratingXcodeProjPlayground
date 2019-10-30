import UIKit
import Core
import StaticLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let networkClient = NetworkClient()
        print(networkClient.makeNetworkRequest())
        StaticLibrary.execute()
    }
}

