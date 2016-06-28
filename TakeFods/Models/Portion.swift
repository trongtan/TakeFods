//
//  Portion.swift
//  TakeFods
//
//  Created by Tan Vu on 6/28/16.
//  Copyright © 2016 DevHack. All rights reserved.
//

import Realm
import RealmSwift
import ObjectMapper

class Portion: Object, Mappable {
  dynamic var id = 0
  dynamic var name = ""

  required init() {
    super.init()
  }

  required convenience init?(_ map: Map) {
    self.init()
  }

  required init(value: AnyObject, schema: RLMSchema) {
    super.init(value: value, schema: schema)
  }

  required init(realm: RLMRealm, schema: RLMObjectSchema) {
    super.init(realm: realm, schema: schema)
  }

  override static func primaryKey() -> String? {
    return "id"
  }

  func mapping(map: Map) {
    id <- map["id"]
    name <- map["name"]
  }
}
