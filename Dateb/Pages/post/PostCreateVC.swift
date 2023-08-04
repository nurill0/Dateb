//
//  PostCreateVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit


class PostCreateVC: BaseVC {
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Choose your category:"
        lbl.textAlignment = .left
        lbl.font = .systemFont(ofSize: 18)
        lbl.textColor = .baseColor()
        
        return lbl
    }()
    
    lazy var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CreatePostCell.self, forCellWithReuseIdentifier: CreatePostCell.identifier)
        
        return collectionView
    }()


}



//MARK: ViewController life cycle
extension PostCreateVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Post"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}



//MARK: functions
extension PostCreateVC {
    
}



//MARK: CollectionView delegate and datasource
extension PostCreateVC: UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CreatePostCell.identifier, for: indexPath) as! CreatePostCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }
    
}



//MARK: UI
extension PostCreateVC {
    
    fileprivate func configureUI(){
        titleLblConst()
        categoryCollectionViewConst()
    }
    
    
    fileprivate func titleLblConst(){
        baseContainerV.addSubview(titleLbl)
        titleLbl.left(baseContainerV.leftAnchor, 10)
        titleLbl.top(baseContainerV.safeAreaLayoutGuide.topAnchor)
    }
    
    fileprivate func categoryCollectionViewConst(){
        baseContainerV.addSubview(categoryCollectionView)
        categoryCollectionView.top(titleLbl.bottomAnchor, 15)
        categoryCollectionView.left(baseContainerV.leftAnchor)
        categoryCollectionView.right(baseContainerV.rightAnchor)
        categoryCollectionView.bottom(baseContainerV.bottomAnchor)
        
    }
}

