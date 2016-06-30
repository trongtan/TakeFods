//
//  Restaurant.swift
//  TakeFods
//
//  Created by Tan Vu on 6/28/16.
//  Copyright © 2016 DevHack. All rights reserved.
//

import Realm
import RealmSwift
import ObjectMapper

class Restaurant: Object, Mappable {
  dynamic var id = 0
  dynamic var name = ""
  dynamic var address = ""
  dynamic var latitude = 0.0
  dynamic var longitude = 0.0
  dynamic var openTime: NSDate?
  dynamic var closeTime: NSDate?
  dynamic var typeRawValue = 0

//  var type: RestaurantType? {
//    get {
//      return try! Realm().objectForPrimaryKey(RestaurantType.self, key: typeRawValue)
//    }
//    set {
//      typeRawValue = (type != nil) ? type!.id : 0
//    }
//  }

  var meals = List<Meal>()

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
    address <- map["address"]
    latitude <- map["latitude"]
    longitude <- map["longitude"]
    openTime <- map["openTime"]
    closeTime <- map["closeTime"]
    typeRawValue <- map["type"]
  }
}
