//
//  PostTweet.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import Foundation
import Firebase

func postTweet(msg: String){
    let db = Firestore.firestore()
    
    db.collection("tweets").document().setData([
                                                "name": "Rafael",
                                                "id" : "@rafaelahmedov",
        "msg" : msg,
        "retweet" : "0",
        "likes" : "0",
        "pic" : "",
        "url" :"https://firebasestorage.googleapis.com/v0/b/twitterclone-d5868.appspot.com/o/rafael.png?alt=media&token=169bdb00-4d32-4c53-a354-4befac8f4cb6"
    ]){ (err) in
        if err != nil {
            
            print(err?.localizedDescription)
            return
        }
        
    }
    
}
