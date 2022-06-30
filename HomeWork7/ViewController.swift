//
//  ViewController.swift
//  HomeWork7
//
//  Created by Aliaksandr Hunko on 29/06/2022.
//

import UIKit

public class somePerson {
    
    var name: String
    var firstName: String
    var age: Int
    
    init (name: String,firstName: String,age: Int) {
        self.name = name
        self.firstName = firstName
        self.age = age
    }
    
}

let somePersonOne = somePerson(name: "Kolya", firstName: "Baskov", age: 50)

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
       
    }
    
    @IBAction func showSecondViewController(){
        
        let SecondStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let SecondViewController = SecondStoryboard.instantiateViewController(withIdentifier: "SecondStoryboardID") as! SecondViewController
        
        SecondViewController.set1(name1: "Some Message")
        SecondViewController.modalPresentationStyle = .fullScreen
        SecondViewController.modalTransitionStyle = .flipHorizontal
       
        present(SecondViewController, animated: true)
      
    }
    @IBAction func showClasesViewController(){
        let ClasesStoryboard = UIStoryboard(name: "ClasesStoryboard", bundle: nil)
        let ClasesViewController = ClasesStoryboard.instantiateViewController(withIdentifier: "ClasesStoryboardID") as! ClasesViewController
        
        
        ClasesViewController.labelText(object: somePersonOne)
        ClasesViewController.modalPresentationStyle = .fullScreen
        ClasesViewController.modalTransitionStyle = .flipHorizontal
        
        present(ClasesViewController, animated: true)
    }
    
}

