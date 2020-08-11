import UIKit
import React

open class RNViewController: UIViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
//        let bundle = Bundle(identifier: "com.example.RNLibrary")
//        let bundle = Bundle(for: type(of: self))
//        NSLog(bundle!.bundlePath)
        let jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation!,
            moduleName: "RNPage",
            initialProperties: nil,
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()

    }

}
