import UIKit
import CoreData
import DATAStack

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.main().bounds)

        return window
    }()

    var dataStack: DATAStack = {
        let dataStack = DATAStack(modelName: "DataModel")
        try! dataStack.drop()

        return dataStack
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: Any]?) -> Bool {
        if let window = self.window {
            let viewController = ViewController(dataStack: self.dataStack)
            window.rootViewController = UINavigationController(rootViewController: viewController)
            window.makeKeyAndVisible()
        }

        return true
    }
}
