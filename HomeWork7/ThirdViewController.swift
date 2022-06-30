//
//  ThirdViewController.swift
//  HomeWork7
//
//  Created by Aliaksandr Hunko on 29/06/2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    public var name2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemYellow
 
    }
    
    @IBAction func showFourViewController(){
        
        let FourStoryboard = UIStoryboard(name: "FourStoryboard", bundle: nil)
        let FourViewController = FourStoryboard.instantiateViewController(withIdentifier: "FourStoryboardID") as! FourViewController
        
        
        FourViewController.set3(name3: name2)
        FourViewController.modalPresentationStyle = .fullScreen
        FourViewController.modalTransitionStyle = .flipHorizontal
        present(FourViewController, animated: true){
            
        }
        
     
    }
    
    @IBAction func close(){
        dismiss(animated: true)
    }

    func set2(name2: String){
        self.name2 = name2
    }
    
}
