//
//  ClasesViewController.swift
//  HomeWork7
//
//  Created by Aliaksandr Hunko on 30/06/2022.
//

import UIKit

class ClasesViewController: UIViewController{
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    private var nameLabel = ""
    private var firstNameLabel = ""
    private var ageLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .systemYellow
        
        labelName.text = nameLabel
        labelFirstName.text = firstNameLabel
        labelAge.text = ageLabel
        
        
        
    }
    @IBAction func close(){
        dismiss(animated: true)
    }
    func labelText(object: somePerson) {
        nameLabel = object.name
        firstNameLabel = object.firstName
        ageLabel = "\(object.age)"
     }

}
