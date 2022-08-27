//
//  ViewController.swift
//  protocolAndDelegate
//
//  Created by Niraj on 19/08/22.
//

import UIKit

class ViewController: UIViewController, DataPassKaro {
    

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPhone: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToForm(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
     
//    func dataPass(name: String, address: String, phone: String) {
//        lblName.text = name
//        lblAddress.text = address
//        lblPhone.text = phone
//    }
    
    func dataPass(object: [String : String]) {
        lblName.text = object["name"]
        lblAddress.text = object["address"]
        lblPhone.text = object["phone"]
    }
    
    
}

