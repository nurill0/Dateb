//
//  FavouriteVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit


class FavouriteVC: BaseVC {

}



//MARK: ViewController life cycle
extension FavouriteVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Favourite"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



//MARK: functions
extension FavouriteVC {
    
}



//MARK: UI
extension FavouriteVC {
    
}
