//
//  CreatePostCell.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 28/07/23.
//

import UIKit

class CreatePostCell: UICollectionViewCell {
    
    static let identifier = "PostCell"
    
    lazy var containerV: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .baseColor()
        view.layer.cornerRadius = 18
        view.layer.borderColor = UIColor.baseColor().cgColor
        view.layer.borderWidth = 0.8
        
        return view
    }()
    
    lazy var iconV: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        
        return view
    }()
    

    lazy var iconImgV: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "home")?.withTintColor(.baseColor(), renderingMode: .alwaysOriginal)
        
        return img
    }()
    
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Housing"
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: 20, weight: .bold)
        
        return lbl
    }()
    

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



extension CreatePostCell {
        
    func setUpItems(title: String, imgTitle: String){
        iconImgV.image = UIImage(named: imgTitle)
        titleLbl.text = title
    }
    
    
    fileprivate func configureUI(){
        containerVConst()
        iconVConst()
        titleLblConst()
        iconImgVConst()
    }
    
    
    fileprivate func containerVConst(){
        self.addSubview(containerV)
        containerV.top(self.topAnchor, 5)
        containerV.bottom(self.bottomAnchor, -5)
        containerV.right(self.rightAnchor, -30)
        containerV.left(self.leftAnchor, 30)
    }
    
    
    fileprivate func iconVConst(){
        containerV.addSubview(iconV)
        iconV.top(containerV.topAnchor)
        iconV.bottom(containerV.bottomAnchor)
        iconV.left(containerV.leftAnchor)
        iconV.width(70)
    }
    
    fileprivate func titleLblConst(){
        containerV.addSubview(titleLbl)
        titleLbl.centerY(containerV.centerYAnchor)
        titleLbl.left(iconV.leftAnchor, 30)
        titleLbl.right(containerV.rightAnchor)
    }

    
    fileprivate func iconImgVConst(){
        iconV.addSubview(iconImgV)
        iconImgV.top(iconV.topAnchor, 15)
        iconImgV.bottom(iconV.bottomAnchor, -15)
        iconImgV.right(iconV.rightAnchor, -15)
        iconImgV.left(iconV.leftAnchor, 15)
    }
    
    
}
