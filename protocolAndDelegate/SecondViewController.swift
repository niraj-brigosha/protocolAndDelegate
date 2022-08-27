//
//  SecondViewController.swift
//  protocolAndDelegate
//
//  Created by Niraj on 19/08/22.
//

import UIKit

protocol DataPassKaro{
//    func dataPass(name: String, address: String, phone: String)
    func dataPass(object:[String:String])
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    var delegate: DataPassKaro!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        if(txtName.text == ""){
            alert(title: "Enter Name", mes: "", delegate: self)
        }
        else if(txtAddress.text == ""){
            alert(title: "Enter Address", mes: "", delegate: self)
        }
        else if(txtPhone.text == ""){
            alert(title: "Enter Phone", mes: "", delegate: self)
        }
        else{
//            delegate.dataPass(name: txtName.text!, address: txtAddress.text!, phone: txtPhone.text!)
            let dic:[String:String] = ["name": txtName.text!, "address": txtAddress.text!, "phone": txtPhone.text!]
            delegate.dataPass(object: dic)
//            let button2Alert: UIAlertView = UIAlertView(title: "Title", message: "message",
//                                 delegate: self, cancelButtonTitle: "OK")
//            button2Alert.show()
            
//            alert(title: "Saved Successfully", mes: "", delegate: self)
            
        }
//        let alert = UIAlertController(title: "Saved Successfully", message: "Go back and see data", preferredStyle: .alert)
//            
//             let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
//             })
//             alert.addAction(ok)
//             DispatchQueue.main.async(execute: {
//                self.present(alert, animated: true)
//        })
    }
    
    func alert(title: String, mes: String, delegate: AnyObject){
        let alert = UIAlertView()
        alert.title = title
        alert.message = mes
        alert.addButton(withTitle: "OK")
        alert.delegate = delegate
        alert.show()
    }
    
}
