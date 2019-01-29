//
//  ViewController.swift
//  RestDemo
//
//  Created by chiel bleyenbergh on 29/01/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    var items = [UserPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(PostParser.getAllPosts().count)
        items = PostParser.getAllPosts()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as! DetailViewController
        
        let selectedCell = sender as! UITableViewCell
        let indexPath = tabelView.indexPath(for: selectedCell)
        
        let gekozenPost = items[indexPath!.row]
        
        destination.post = gekozenPost
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let userPostForCell = items[indexPath.row]
        
        cell.textLabel!.text = userPostForCell.title
        
        
        return cell
    }
    
        
    
        
    }

