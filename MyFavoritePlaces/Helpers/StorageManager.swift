//
//  StorageManager.swift
//  MyFavoritePlaces
//
//  Created by Katsiaryna Kulik  on 30.04.23.
//  Copyright © 2023 Katsiaryna Kulik. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {

  static func saveObject(_ place: Place) {

    try! realm.write {
      realm.add(place)
    }
  }

  static func deleteObject(_ place: Place) {

    try! realm.write {
      realm.delete(place)
    }
  }
}
