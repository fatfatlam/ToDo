//
//  EntryViewController.swift
//  ToDo
//
//  Created by julian lam on 30/12/2021.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        return true
    }
    

    @objc func saveTask(){
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
        
        
        
    }
}
