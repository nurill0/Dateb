//
//  BaseVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit

class BaseVC: UIViewController {
    
    lazy var baseContainerV: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .baseColor()
        
        return view
    }()
    
//
//
//    lazy var customBackBtn: UIBarButtonItem = {
//        let btn = UIBarButtonItem()
//        btn.title = "Ortga"
//        btn.tintColor = .white
//
//        return btn
//    }()
//
}



//MARK: viewcontroller life cycle
extension BaseVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationItem.backButtonTitle = "Ortga"
        self.navigationController?.navigationBar.tintColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    
}



//MARK: ui constraints
extension BaseVC {
    
    
    fileprivate func configureUI(){
        view.backgroundColor = .baseColor()
        baseContainerVConst()
    }
    
    
    fileprivate func baseContainerVConst(){
        view.addSubview(baseContainerV)
        baseContainerV.top(view.topAnchor)
        baseContainerV.bottom(view.safeAreaLayoutGuide.bottomAnchor, 20)
        baseContainerV.left(view.leftAnchor)
        baseContainerV.right(view.rightAnchor)
    }
    
    
}
