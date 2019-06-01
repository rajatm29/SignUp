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
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Sign Up", for: .normal)
        
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        
        
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return button
        
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    fileprivate func setupInputFields() {
        
       
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingBottom: 0, paddingRight: 40, paddingLeft: 40, width: 0, height: 200)
        
        
    }
}
