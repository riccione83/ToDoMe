//
//  Category.swift
//  LittleTask
//
//  Created by Riccardo Rizzo on 19/07/18.
//  Copyright © 2018 Riccardo Rizzo. All rights reserved.
//

import Foundation
import RealmSwift

/// Category Model.
/// A Category can have multiple Items
class Category: Object {
    
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
