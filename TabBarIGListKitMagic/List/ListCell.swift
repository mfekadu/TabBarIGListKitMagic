//
//  ListCell.swift
//  TabBarIGListKitMagic
//
//  Created by Michael Fekadu on 6/21/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import UIKit

protocol ListCellOutput {
  func buttonPressed()
}

protocol ListCellInput {
  func doSomeViewUpdate(viewModel: List.Something.ViewModel)
}

class ListCell: UICollectionViewCell, ListCellInput {

  static let nibName = "ListCell"

  var output: ListCellOutput!

  @IBAction func buttonPressed(_ sender: Any) {
    output.buttonPressed()
  }

  func doSomeViewUpdate(viewModel: List.Something.ViewModel) {
    // do stuff
  }
}
