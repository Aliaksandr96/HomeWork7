//
//  SecondViewController.swift
//  HomeWork7
//
//  Created by Aliaksandr Hunko on 29/06/2022.
//



import UIKit

class SecondViewController: UIViewController {

    private var name1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
       
    }
    
    @IBAction func showThirdViewController(){
        
        let ThirdStoryboard = UIStoryboard(name: "ThirdStoryboard", bundle: nil)
        let ThirdViewController = ThirdStoryboard.instantiateViewController(withIdentifier: "ThirdStoryboardID") as! ThirdViewController
        
        ThirdViewController.set2(name2: name1)
        ThirdViewController.modalPresentationStyle = .fullScreen
        ThirdViewController.modalTransitionStyle = .flipHorizontal
       
        present(ThirdViewController, animated: true){
    
        }
        
    }
    @IBAction func close(){
        dismiss(animated: true)
    }
    
    func set1(name1: String){
        self.name1 = name1
    }
}
