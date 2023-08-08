//
//  ProductsInCell.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 02/08/23.
//

import UIKit

class ProductsInCell: UICollectionViewCell {
    
    static let identifier = "ProductsInCell"
    
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
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 18, weight: .medium)
        
        return lbl
    }()
    
    lazy var productPriceLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "$12.99"
        lbl.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 14, weight: .medium)
        
        return lbl
    }()
    
    lazy var productPlaceLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Moscow"
        lbl.textColor = .black
        lbl.textAlignment = .right
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 14, weight: .medium)
        
        return lbl
    }()
    
    lazy var productUsegeLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "User 98%"
        lbl.textColor = .black
        lbl.textAlignment = .right
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 16, weight: .regular)
        
        return lbl
    }()
    
    lazy var productLikeBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "like")?.withRenderingMode(.alwaysOriginal).withTintColor(.black), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
    
        return btn
    }()

    lazy var productLikeQuentityLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "21"
        lbl.textColor = .black
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .monospacedDigitSystemFont(ofSize: 14, weight: .medium)
        
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
        self.layer.cornerRadius = 12
        productImgVConst()
        productTitleLblConst()
        productPriceLblConst()
        productPlaceLblConst()
        productLikeImgVConst()
        producLikeQuantityLblConst()
        productUsageLblConst()
    }
    
    
    fileprivate func productImgVConst(){
        self.addSubview(productImgV)
        productImgV.top(self.topAnchor, 5)
        productImgV.right(self.rightAnchor, -5)
        productImgV.left(self.leftAnchor, 5)
        productImgV.bottom(self.centerYAnchor)
    }
    
    fileprivate func productTitleLblConst(){
        self.addSubview(productTitleLbl)
        productTitleLbl.top(productImgV.bottomAnchor, 15)
        productTitleLbl.right(self.rightAnchor)
        productTitleLbl.left(self.leftAnchor, 10)
    }
    
    
    fileprivate func productPriceLblConst(){
        self.addSubview(productPriceLbl)
        productPriceLbl.top(productTitleLbl.bottomAnchor, 5)
        productPriceLbl.left(self.leftAnchor, 10)
        productPriceLbl.right(self.centerXAnchor)
    }
    
    fileprivate func productPlaceLblConst(){
        self.addSubview(productPlaceLbl)
        productPlaceLbl.top(productPriceLbl.topAnchor)
        productPlaceLbl.right(self.rightAnchor, -5)
        productPlaceLbl.left(productPriceLbl.rightAnchor)
    }
    
    
    fileprivate func productLikeImgVConst(){
        self.addSubview(productLikeBtn)
        productLikeBtn.bottom(self.bottomAnchor, -10)
        productLikeBtn.left(self.leftAnchor, 10)
        productLikeBtn.height(20)
        productLikeBtn.width(20)
    }
    
    fileprivate func producLikeQuantityLblConst(){
        self.addSubview(productLikeQuentityLbl)
        productLikeQuentityLbl.left(productLikeBtn.rightAnchor, 5)
        productLikeQuentityLbl.centerY(productLikeBtn.centerYAnchor)
    }
    
    fileprivate func productUsageLblConst(){
        self.addSubview(productUsegeLbl)
        productUsegeLbl.centerY(productLikeBtn.centerYAnchor)
        productUsegeLbl.right(self.rightAnchor, -10)
        productUsegeLbl.left(productLikeQuentityLbl.rightAnchor, 10)
    }
    
    
    
}
