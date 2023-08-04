//
//  HomeVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit

class HomeVC: BaseVC {
    
    lazy var productCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.identifer)
        collectionView.register(CategooryHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CategooryHeaderView.identifier)
        collectionView.backgroundColor = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)

        
        return collectionView
    }()
    
    
}



//MARK: ViewController life cycle
extension HomeVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Category"
        searchBarConst()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}



//MARK: functions
extension HomeVC {
    
}



//MARK: functions
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //header
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CategooryHeaderView.identifier, for: indexPath) as! CategooryHeaderView
        
        return header
    }
    
    
    //cell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.identifer, for: indexPath) as! CategoryCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 240 )
    }
    
    
}



//MARK: UI
extension HomeVC {
    
    fileprivate func configureUI(){
        baseContainerV.backgroundColor = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)
        view.backgroundColor  = #colorLiteral(red: 0.9333333373, green: 0.9333333373, blue: 0.9333333373, alpha: 1)
        searchBarConst()
        collectionViewConst()
    }
   
    fileprivate func searchBarConst(){
        let searchController = UISearchController(searchResultsController: nil)
        self.tabBarController?.navigationItem.searchController = searchController
        self.tabBarController?.navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.hidesNavigationBarDuringPresentation = false
        let textField = searchController.searchBar.searchTextField
        textField.font = .systemFont(ofSize: 15)
        textField.placeholder = "Search anything"
        textField.textColor = .titleModeColors()
        searchController.automaticallyShowsCancelButton = false
        self.present(searchController, animated: true, completion: nil)
    }
    
    
    fileprivate func collectionViewConst(){
        baseContainerV.addSubview(productCollectionView)
        productCollectionView.top(baseContainerV.safeAreaLayoutGuide.topAnchor)
        productCollectionView.bottom(baseContainerV.bottomAnchor)
        productCollectionView.right(baseContainerV.rightAnchor)
        productCollectionView.left(baseContainerV.leftAnchor)
    }
    
}

