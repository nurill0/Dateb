//
//  FavouriteProductCell.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 04/08/23.
//

import UIKit

class FavouriteProductCell: UICollectionViewCell {
    
    lazy var productImgV: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "shashlik")?.withRenderingMode(.alwaysOriginal)
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    lazy var productTitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Shashlik"
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 20, weight: .medium)
        
        return lbl
    }()
    
    lazy var productPriceLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "$12.99"
        lbl.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 18, weight: .medium)
        
        return lbl
    }()
    
    lazy var productPlaceLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Moscow"
        lbl.textColor = .gray
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 16, weight: .medium)
        
        return lbl
    }()
    
    lazy var productLikeBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "favoritesTap")?.withRenderingMode(.alwaysOriginal).withTintColor(.red), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        
        return btn
    }()
    
    static let identifier = "favoriteCell"

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    
}



extension FavouriteProductCell{
   
    fileprivate func configureUI(){
        self.backgroundColor = .white
        self.addBorders(edges: [.top, .bottom], color: .black)
        productImgVConst()
        productLikeImgVConst()
        productTitleLblConst()
        productPlaceLblConst()
        productPriceLblConst()
    }
    
    
    fileprivate func productImgVConst(){
        self.addSubview(productImgV)
        productImgV.top(self.topAnchor, 5)
        productImgV.width(self.frame.width*0.3)
        productImgV.left(self.leftAnchor, 5)
        productImgV.bottom(self.bottomAnchor, -5)
    }
    
    fileprivate func productLikeImgVConst(){
        self.addSubview(productLikeBtn)
        productLikeBtn.centerY(self.centerYAnchor)
        productLikeBtn.right(self.rightAnchor)
        productLikeBtn.height(50)
        productLikeBtn.width(50)
    }
    
    
    fileprivate func productTitleLblConst(){
        self.addSubview(productTitleLbl)
        productTitleLbl.top(productImgV.topAnchor, 10)
        productTitleLbl.left(productImgV.rightAnchor, 15)
        productTitleLbl.right(productLikeBtn.leftAnchor, -5)
    }
    
    
    fileprivate func productPlaceLblConst(){
        self.addSubview(productPlaceLbl)
        productPlaceLbl.top(productTitleLbl.bottomAnchor, 5)
        productPlaceLbl.right(productLikeBtn.leftAnchor, -5)
        productPlaceLbl.left(productTitleLbl.leftAnchor)
    }
    
    fileprivate func productPriceLblConst(){
        self.addSubview(productPriceLbl)
        productPriceLbl.top(productPlaceLbl.bottomAnchor, 20)
        productPriceLbl.left(productTitleLbl.leftAnchor)
        productPriceLbl.right(productLikeBtn.leftAnchor, -5)
    }
    
    
    
}
