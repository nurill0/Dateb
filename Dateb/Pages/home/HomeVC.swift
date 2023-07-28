//
//  HomeVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit

class HomeVC: BaseVC {

}



//MARK: ViewController life cycle
extension HomeVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Home"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



//MARK: functions
extension HomeVC {
    
}



//MARK: UI
extension HomeVC {
    
}

