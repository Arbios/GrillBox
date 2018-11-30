//
//  ViewController.swift
//  GrillBox
//
//  Created by ARBI BASHAEV on 28/11/2018.
//  Copyright © 2018 ARBI BASHAEV. All rights reserved.
//

import UIKit

struct Post: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myView = UIView()
        myView.backgroundColor = .red
        view.addSubview(myView)
        myView.fillSuperview()
        //        let myPost = Post(userId: "1", id: "MyID", title: "MyTitle", body: "MyPostBody")
        
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard error == nil else { return }
            
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                
                print(posts)
            } catch {
                print(error)
            }
            }.resume()
    }
    
    
}




