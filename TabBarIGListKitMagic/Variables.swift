//
//  Variables.swift
//  TabBarIGListKitMagic
//
//  Created by Michael Fekadu on 6/23/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import Foundation
import IGListKit

let f1 = FeedItem(id: "f1", user: "user1", listings: ["listing1", "listing2"])
let f2 = FeedItem(id: "f2", user: "user2", listings: ["listing1", "listing2"])

let feedArray = [f1, f1, f2, f1]


class FeedItem {
  let id: String
  let user: String
  let listings: [String]

  init(id: String, user: String, listings: [String]) {
    self.id = id
    self.user = user
    self.listings = listings
  }
}

extension FeedItem: ListDiffable {
  func diffIdentifier() -> NSObjectProtocol {
    return id as NSObjectProtocol
  }

  func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
    guard self !== object else { return true }
    guard let object = object as? FeedItem else { return false }
    return user == object.user && id == object.id
  }
}
