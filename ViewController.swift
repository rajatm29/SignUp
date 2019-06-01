import UIKit

class ViewController: UIViewController {
    
     let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        
        tf.borderStyle = .roundedRect
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.font=UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector (handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        
        tf.borderStyle = .roundedRect
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.font=UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector (handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        
        tf.borderStyle = .roundedRect
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.font=UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector (handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
