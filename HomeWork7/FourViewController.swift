//
//  FourViewController.swift
//  HomeWork7
//
//  Created by Aliaksandr Hunko on 30/06/2022.
//

import UIKit

class FourViewController: UIViewController {

    
    
    public var name3 = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemYellow
        
        nameLabel.text = name3
        
    }
    
    @IBAction func close(){
        dismiss(animated: true)
    }

    func set3(name3: String){
        self.name3 = name3
    }
    
}
