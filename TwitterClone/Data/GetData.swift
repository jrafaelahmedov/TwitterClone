//
//  GetData.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

class GetData :ObservableObject {
    
    @Published var datas = [DataType]()
    
    init() {
        let db = Firestore.firestore()
        db.collection("tweets").addSnapshotListener{
            (snap,error) in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            for i in snap!.documentChanges {
                
                if i.type == .added {
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let msg = i.document.get("msg") as! String
                    let pic = i.document.get("pic") as! String
                    let url = i.document.get("url") as! String
                    let retweets = i.document.get("retweet") as! String
                    let likes = i.document.get("likes") as! String
                    let tagId = i.document.get("id") as! String
                    
                    DispatchQueue.main.async {
                        self.datas.append(DataType(id: id, name: name, msg: msg, retwetts: retweets, likes: likes, pic: pic, url: url, tagId: tagId))
                    }
                }
            }
            
        }
    }
    
}
