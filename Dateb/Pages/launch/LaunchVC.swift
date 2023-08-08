//
//  ViewController.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit

class LaunchVC: UIViewController {
    
    var timer: Timer!
    
    lazy var iconImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "datebLogo")
        
        return img
    }()

}



//View Controller life cycle
extension LaunchVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        initTimer()
    }

}



extension LaunchVC {
    
    func initTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(goHomePage), userInfo: nil, repeats: true)
    }
    
    
    @objc func goHomePage(){
        let vc = TabBarViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        navigationController?.pushViewController(vc, animated: true)
        timer.invalidate()
    }
    
}


//UI
extension LaunchVC {
    
    fileprivate func configureUI(){
        view.backgroundColor = .white
        iconImgViewConst()
    }
    
    fileprivate func iconImgViewConst(){
        view.addSubview(iconImageView)
        iconImageView.centerX(view.centerXAnchor)
        iconImageView.centerY(view.centerYAnchor)
    }
}
