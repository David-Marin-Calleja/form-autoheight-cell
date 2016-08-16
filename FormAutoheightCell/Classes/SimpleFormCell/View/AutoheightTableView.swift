//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation
import UIKit

class AutoheightTableView: UITableViewController, SimpleFormCellViewProtocol
{
    static let CELL_IDENTIFIER = "form_cell_identifier"
    
    var presenter: SimpleFormCellPresenterProtocol?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let podBundle = NSBundle(forClass: self.classForCoder)
        if let bundleURL = podBundle.URLForResource("FormAutoheightCell", withExtension: "bundle") {
            
            if let bundle = NSBundle(URL: bundleURL) {
                let cellNib = UINib(nibName: "SimpleFormCell", bundle: bundle)
                tableView.registerNib(cellNib, forCellReuseIdentifier: AutoheightTableView.CELL_IDENTIFIER)
            } else {
                assertionFailure("Could not load the bundle")
            }
        }else {
            assertionFailure("Could not create a path to the bundle")
        }
    }
    
    // MARK: - UITableViewDataSource
    override public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO: CellIdentifier
        let cell = tableView.dequeueReusableCellWithIdentifier(AutoheightTableView.CELL_IDENTIFIER, forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = "cell";
        
        return cell
    }
    
    override public func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
        }
    }
    
}