//
//  CategoryCell.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 01/08/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    static let identifer = "categorycell"
    
    lazy var productsCellsCollectionV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(ProductsInCell.self, forCellWithReuseIdentifier: ProductsInCell.identifier)
        collectionView.backgroundColor = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)

        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionVConst()
        self.backgroundColor = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)
    }
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func collectionVConst(){
        self.contentView.addSubview(productsCellsCollectionV)
        productsCellsCollectionV.top(self.contentView.topAnchor)
        productsCellsCollectionV.bottom(self.contentView.bottomAnchor)
        productsCellsCollectionV.right(self.contentView.rightAnchor, -10)
        productsCellsCollectionV.left(self.contentView.leftAnchor, 10)
    }
}



extension CategoryCell: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsInCell.identifier, for: indexPath) as! ProductsInCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: productsCellsCollectionV.frame.width/2-20, height: productsCellsCollectionV.frame.height-20)
    }
    
    
}
