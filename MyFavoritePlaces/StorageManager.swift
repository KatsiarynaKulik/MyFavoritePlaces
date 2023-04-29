//
//  StorageManager.swift
//  MyFavoritePlaces
//
//  Created by Katsiaryna Kulik  on 30.04.23.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {

  static func saveObject(_ place: Place) {

    try! realm.write {
      realm.add(place)
    }
  }
}
