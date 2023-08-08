//
//  CategooryHeaderView.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 01/08/23.
//

import UIKit

class CategooryHeaderView: UICollectionReusableView {
    static let identifier = "categoryHeader"
    
    lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Foods"
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = .systemFont(ofSize: 20, weight: .bold)
        
        return lbl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLblConst()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func titleLblConst(){
        self.addSubview(titleLabel)
        titleLabel.bottom(self.bottomAnchor, -5)
        titleLabel.left(self.leftAnchor, 10)
    }
    
    
    
    
}
