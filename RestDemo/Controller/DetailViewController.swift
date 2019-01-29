//
//  DetailViewController.swift
//  RestDemo
//
//  Created by chiel bleyenbergh on 29/01/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var tvBody: UITextView!
    var post:UserPost?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = post!.title
        tvBody.text = post!.body
        
        lblUsername.text = PostParser.userById(userId: post!.userID)
        
        self.title = lblTitle.text

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
