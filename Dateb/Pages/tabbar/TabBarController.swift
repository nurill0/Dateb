// 
//
//
//
//  TabBarController.swift
//  Dateb
//locationTap
//  Created by Nurillo Domlajonov on 18/07/23.
//

import Foundation
import UIKit


public class TabBarViewController: UITabBarController {
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setUpTabbar()
        setupViewControllers()
        customizeTabBarItems()
    }
    
    
    fileprivate func setUpTabbar(){
        let customTabBar = CustomTabBar()
        if view.frame.height > 810 {
            customTabBar.customTabBarHeight = 90
        }else if view.frame.height > 670 && view.frame.height < 810{
            customTabBar.customTabBarHeight = 70
        }else{
            customTabBar.customTabBarHeight = 60
        }
        print(view.frame.height)
        setValue(customTabBar, forKey: "tabBar")
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .black
        self.tabBar.unselectedItemTintColor = .black
    }
    
    
    private func customizeTabBarItems() {
        // Set the font and any other attributes you want for the tab bar title
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14.0, weight: .light), // Adjust font and weight as per your preference
            // You can also add other attributes like text color, shadow, etc. here
        ]
        
        for item in tabBar.items ?? [] {
            item.setTitleTextAttributes(attributes, for: .normal)
        }
    }
    
    
    func setupViewControllers() {
        
        
        let mapVC = MapVC()
        mapVC.title = "Map"
        mapVC.tabBarItem.title = "Map"
        mapVC.tabBarItem.image = UIImage(named: "location", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        mapVC.tabBarItem.selectedImage = UIImage(named: "locationTap", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        mapVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        
        
        let postVC = PostCreateVC()
        postVC.title = "Posts"
        postVC.tabBarItem.title = "Post"
        postVC.tabBarItem.image = UIImage(named: "post", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        postVC.tabBarItem.selectedImage = UIImage(named: "postTap", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        postVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0);
        
        
        let homeVC = HomeVC()
        homeVC.title = "Category"
        homeVC.tabBarItem.title = ""
        homeVC.tabBarItem.image = UIImage(named: "aa", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withRenderingMode(.alwaysOriginal)
        
        
        let favouriteVC = FavouriteVC()
        favouriteVC.title = "Favourite"
        favouriteVC.tabBarItem.title = "Favourite"
        favouriteVC.tabBarItem.selectedImage = UIImage(named: "favoritesTap", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        favouriteVC.tabBarItem.image = UIImage(named: "favorites", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        favouriteVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0);
        
        
        let chatVC = ChatVC()
        chatVC.title = "Chat"
        chatVC.tabBarItem.title = "Chat"
        chatVC.tabBarItem.image = UIImage(named: "chat", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        chatVC.tabBarItem.selectedImage = UIImage(named: "chatTap", in: Bundle(for: TabBarViewController.self), compatibleWith: nil)?.withTintColor(.black, renderingMode: .alwaysOriginal)
        chatVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0);
        
        
        viewControllers = [mapVC, postVC, homeVC, favouriteVC, chatVC]
    }
    
    
}
