//
//  ListCellSectionController.swift
//  TabBarIGListKitMagic
//
//  Created by Michael Fekadu on 6/23/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import IGListKit

protocol OutputToListView {
  func doSomeViewUpdate(viewModel: List.Something.ViewModel)
}

protocol ListCellSectionControllerInput {
  // from ListView
  func buttonPressed()
  // from ViewController
  func doSomeViewUpdate(viewModel: List.Something.ViewModel)
}

protocol ListCellSectionControllerOutput {
  func buttonPressed()
}

extension ListCellSectionController: ListCellSectionControllerInput {
  // MARK: - Event handling

  func buttonPressed() {
    // do stuff
  }

  func doSomeViewUpdate(viewModel: List.Something.ViewModel) {
    // do stuff
    outputToView.doSomeViewUpdate(viewModel: viewModel)
  }
}

class ListCellSectionController: ListSectionController {

  var controller: ListViewController!
  var outputToView: OutputToListView!

  // MARK: - IGListKit objects

  //var view: UICollectionViewCell?
  var index: Int?
  var feedItem: FeedItem?

  // MARK: - IGSection Initialization
  override init() {
    super.init()

    addSpacingUnderSection()

    // MARK: - Object lifecycle
    // ReactToPostConfigurator.sharedInstance.configure(viewController: self)
  }

  // MARK: - Display logic
  func addSpacingUnderSection() {
    // this just adds some space to the bottom of the section
    inset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    self.minimumInteritemSpacing = 0
    self.minimumLineSpacing = 0
  }

  override func numberOfItems() -> Int {
    return 1
  }

  override func sizeForItem(at index: Int) -> CGSize {
    let width = ((collectionContext?.containerSize.width)!)
    let height: CGFloat = 30

    return CGSize(width: width, height: height)
  }

  override func cellForItem(at index: Int) -> UICollectionViewCell {

    let cell = collectionContext!.dequeueReusableCell(withNibName: "ListCell", bundle: nil, for: self, at: index) as! ListCell

    // MARK: - Setup viewController connections to the view
    cell.output = self
    self.outputToView = cell

    return cell
  }

  override func didUpdate(to object: Any) {
    //self.object = object as? Listing
  }

  override func didSelectItem(at index: Int) {
  }
}
