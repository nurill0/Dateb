//
//  ChatVC.swift
//  Dateb
//
//  Created by Nurillo Domlajonov on 18/07/23.
//

import UIKit


class ChatVC: BaseVC {
    
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
        collectionV.register(ChatCell.self, forCellWithReuseIdentifier: ChatCell.identifier)
        collectionV.backgroundColor = .clear
        
        return collectionV
    }()
    
}



//MARK: ViewController life cycle
extension ChatVC {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.hidesBackButton = true
        tabBarController?.navigationItem.title = "Chat"
        tabBarController?.navigationItem.searchController = nil
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}



//MARK: functions
extension ChatVC {
    
}



//MARK: functions
extension ChatVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChatCell.identifier, for: indexPath) as! ChatCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 120)
    }
    
    
}


//MARK: UI
extension ChatVC {
    
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

