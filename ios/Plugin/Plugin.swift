import Foundation
import Capacitor
import UIKit

@objc(SavePassword)
public class SavePassword: CAPPlugin {

    @objc func promptDialog(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let loginScreen = LoginScreenViewController()
            loginScreen.usernameTextField.text = call.getString("username") ?? ""
            loginScreen.passwordTextField.text = call.getString("password") ?? ""
            self.bridge?.webView?.addSubview(loginScreen.view)
            loginScreen.view.removeFromSuperview()
        }
    }
}

class LoginScreenViewController: UIViewController {
    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.frame.size.width = 1
        textField.frame.size.height = 1
        textField.textContentType = .username
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.frame.size.width = 1
        textField.frame.size.height = 1
        textField.textContentType = .password
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        usernameTextField.becomeFirstResponder()
    }
}
