//
//  GetTopTags.swift
//  TwitterClone
//
//  Created by Rafael.Ahmedov on 7/12/21.
//

import SwiftUI
import Firebase

class GetTopTags : ObservableObject{
    
    @Published var top = [TopDataType]()
    
    init() {
        let db = Firestore.firestore()
        db.collection("Top").order(by: "tweets",descending: true).getDocuments {
            (snap, err) in
            if err != nil {
                print(err?.localizedDescription)
                return
            }
            for i in snap!.documents {
                let id = i.documentID
                let tag = i.get("tag") as! String
                let tweets  = i.get("tweets") as! String
                
                self.top.append(TopDataType(id: id, tag: tag,tweets : "\(tweets)"))
            }
            
        }
    }
}
