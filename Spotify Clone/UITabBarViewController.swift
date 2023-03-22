//
//  UITabBarViewController.swift
//  Spotify Clone
//
//  Created by Vladlens Kukjans on 19/03/2023.
//

import UIKit

class UITabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let nav1 = UINavigationController(rootViewController: HomeViewController())
        let nav2 = UINavigationController(rootViewController: SearchViewController())
        let nav3 = UINavigationController(rootViewController: LibaryViewController())
        
               
        nav1.title = "Browse"
        nav2.title = "Search"
        nav3.title = "Libary"
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Libary", image: UIImage(systemName: "music.note.list"), tag: 3)
        
        
        nav1.navigationItem.largeTitleDisplayMode = .always
        nav2.navigationItem.largeTitleDisplayMode = .always
        nav3.navigationItem.largeTitleDisplayMode = .always

        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: true)
        
        tabBar.tintColor = .label
    }
    


}
