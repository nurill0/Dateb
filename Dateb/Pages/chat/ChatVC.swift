//
//  ChatVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit


class ChatVC: BaseVC {

}



//MARK: ViewController life cycle
extension ChatVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Chat"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



//MARK: functions
extension ChatVC {
    
}



//MARK: UI
extension ChatVC {
    
}

