//
//  Meal.swift
//  TakeFods
//
//  Created by Tan Vu on 6/28/16.
//  Copyright © 2016 DevHack. All rights reserved.
//

import Realm
import RealmSwift
import ObjectMapper

class Meal: Object, Mappable {
  dynamic var id = 0
  dynamic var name = ""
  dynamic var image = ""
  dynamic var details = ""
  dynamic var price = 0.0
  dynamic var portionRawValue = 0
  dynamic var tagsRawValue = 0
  dynamic var restaurant : Restaurant?

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
    id <- map["Id"]
    name <- map["Name"]
    image <- map["Image"]
    details <- map["Description"]
//    portionRawValue <- map["PortionSize"]
//    restaurant <- map["Restaurant"]
//    tags <- (map["Tags"], ListTransform<Tag>())
  }
}
