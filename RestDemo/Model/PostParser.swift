//
//  PostParser.swift
//  RestDemo
//
//  Created by chiel bleyenbergh on 29/01/2019.
//  Copyright © 2019 ehb. All rights reserved.
//

import Foundation

class PostParser {
    
    static func getAllPosts() -> [UserPost]{
        //Op welk adres staat de data
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/posts")
        //Starten van een Arry
        var posts = [UserPost]()
        //Indien er er iets misloopt
        do{
            //ruwe data
            let data = try Data.init(contentsOf: url!)
            //Data start met een een array, data aten omzetten naar array van objecten
            let jsonArray = try JSONSerialization.jsonObject(with: data) as! [NSObject]
            
            for item in jsonArray {
                //Value voor key geeft een generiek object terug -> moet gecast worden
                let id = item.value(forKey: "id") as! Int
                let userID = item.value(forKey: "userId") as! Int
                let title = item.value(forKey: "title") as! String
                let body = item.value(forKey: "body") as! String
                
                let currentPost = UserPost.init(id: id, userID: userID, title: title, body: body)
                
                posts.append(currentPost)
            }
            
            
        }
        catch{
            //Als het niet werkt
            print("Werkt niet!")
        }
        return posts
    }
    
}
