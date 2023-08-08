//
//  FavouriteVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit


class FavouriteVC: BaseVC {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        let collectionV = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionV.translatesAutoresizingMaskIntoConstraints = false
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.showsVerticalScrollIndicator = false
        collectionV.register(FavouriteProductCell.self, forCellWithReuseIdentifier: FavouriteProductCell.identifier)
        collectionV.backgroundColor = .clear
        
        return collectionV
    }()

}



//MARK: ViewController life cycle
extension FavouriteVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Favourite"
        tabBarController?.navigationItem.searchController = nil

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}



//MARK: functions
extension FavouriteVC {
    
}



//MARK: delegate and data sources
extension FavouriteVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FavouriteProductCell.identifier, for: indexPath) as! FavouriteProductCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 150)
    }
    
    
}



//MARK: UI
extension FavouriteVC {
    
    fileprivate func configureUI(){
        baseContainerV.backgroundColor = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)
        view.backgroundColor  = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)
        collectionVConst()
    }
    
    
    fileprivate func collectionVConst(){
        baseContainerV.addSubview(collectionView)
        collectionView.top(baseContainerV.topAnchor)
        collectionView.bottom(baseContainerV.bottomAnchor)
        collectionView.right(baseContainerV.rightAnchor)
        collectionView.left(baseContainerV.leftAnchor)
    }
}
