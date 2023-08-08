//
//  ChatCell.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 05/08/23.
//

import UIKit

class ChatCell: UICollectionViewCell {
    
    static let identifier = "chatCell"
    
    lazy var userImgV: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(systemName: "person.circle.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.purple)
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    lazy var usernameLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "David"
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        
        return lbl
    }()
    
    lazy var placeLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "New York"
        lbl.textColor = .gray
        lbl.textAlignment = .right
        lbl.numberOfLines = 0
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 14)
        
        return lbl
    }()
    
    lazy var timeLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "3 day ago"
        lbl.textColor = .gray
        lbl.textAlignment = .right
        lbl.numberOfLines = 0
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 14)
        
        return lbl
    }()
    
    lazy var lastMessageLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address? Can you give me the address?"
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.numberOfLines = 2
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 16)
        
        return lbl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    fileprivate func configureUI(){
        self.backgroundColor = .white
        self.addBorders(edges: [.top, .bottom], color: .black)
        userImgVConst()
        usernameLblConst()
        timeLblConst()
        placeLblConst()
        lastMessageLblConst()
    }
    
    fileprivate func userImgVConst(){
        self.addSubview(userImgV)
        userImgV.centerY(self.centerYAnchor)
        userImgV.left(self.leftAnchor, 10)
        userImgV.width(60)
        userImgV.height(60)
    }
    
    fileprivate func usernameLblConst(){
        self.addSubview(usernameLbl)
        usernameLbl.top(self.topAnchor, 10)
        usernameLbl.left(userImgV.rightAnchor, 10)
        usernameLbl.right(self.rightAnchor, -10)
    }
    
    fileprivate func timeLblConst(){
        self.addSubview(timeLbl)
        timeLbl.bottom(self.bottomAnchor, -10)
        timeLbl.right(self.rightAnchor, -10)
    }
    
    fileprivate func placeLblConst(){
        self.addSubview(placeLbl)
        placeLbl.bottom(timeLbl.bottomAnchor)
        placeLbl.right(timeLbl.leftAnchor, -10)
        placeLbl.left(self.centerXAnchor)
    }
    
    
    fileprivate func lastMessageLblConst(){
        self.addSubview(lastMessageLbl)
        lastMessageLbl.left(usernameLbl.leftAnchor)
        lastMessageLbl.right(self.rightAnchor, -10)
        lastMessageLbl.top(usernameLbl.bottomAnchor, 10)
    }
    
    
    
    
}
