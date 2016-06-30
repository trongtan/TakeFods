//
//  FirebaseService.swift
//  TakeFods
//
//  Created by Tan Vu on 6/29/16.
//  Copyright © 2016 DevHack. All rights reserved.
//

import Foundation
import Firebase
import ObjectMapper
import SwiftyJSON
import RealmSwift
import Async

class FirebaseService {
  enum TakeFodsNode: String {
    case tags = "tags"
  }

  static let sharedInstance = FirebaseService()
  private var rootRef: FIRDatabaseReference?

  private  init() {
    FIRApp.configure()
    rootRef = FIRDatabase.database().reference()
  }

  func fetchData() {
    rootRef?.observeSingleEventOfType(.Value, withBlock: { (snapshot) in
      if snapshot.hasChild(TakeFodsNode.tags.rawValue) {
        if let tags = Mapper<Tag>().mapArray(snapshot.childSnapshotForPath(TakeFodsNode.tags.rawValue)) {
          Realm.writeTransaction { realm in
            realm.add(tags, update: true)
          }
        }
      }
    })
  }
}
