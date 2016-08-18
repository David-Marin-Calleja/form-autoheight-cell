//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation
import UIKit

class AutoheightTableView: UITableViewController, SimpleFormCellViewProtocol
{
    static let CELL_IDENTIFIER = "word_and_translate_cell_identifier"
    
    var presenter: SimpleFormCellPresenterProtocol?
    var values: ListOfCellsInfo?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        // Top margin
//        self.tableView.contentInset = UIEdgeInsetsMake(80, 0, 0, 0)
        
        // Refresh
        self.refreshControl?.addTarget(self, action: "refreshData", forControlEvents: UIControlEvents.ValueChanged)
        
        // Initial setup-VIPER
        if (presenter == nil) {
            presenter = SimpleFormCellPresenter()
            presenter?.setupWireFrame(self)
        }

        // Request asyn JSON
        loadData()
        
        let podBundle = NSBundle(forClass: self.classForCoder)
        if let bundleURL = podBundle.URLForResource("FormAutoheightCell", withExtension: "bundle") {
            
            if let bundle = NSBundle(URL: bundleURL) {
                let cellNib = UINib(nibName: "WordAndTranslateCell", bundle: bundle)
                tableView.registerNib(cellNib, forCellReuseIdentifier: AutoheightTableView.CELL_IDENTIFIER)
            } else {
                assertionFailure("Could not load the bundle")
            }
        }else {
            assertionFailure("Could not create a path to the bundle")
        }

        // Auto-height cell
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 315
    }
    
    // MARK: - Private Methods
    func loadData() {
        presenter?.numberOfCells({
            [unowned self] value, error in
            self.values = value
            self.tableView.reloadData()
        })
    }
    
    func refreshData() {
        loadData()
        self.refreshControl!.endRefreshing()
    }
    
    // MARK: - UITableViewDataSource
    override public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if let theValue = values {
//            return (theValue.items?.count)!
//        }
        return 2
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO: CellIdentifier
        let cell = tableView.dequeueReusableCellWithIdentifier(AutoheightTableView.CELL_IDENTIFIER, forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
//        if let theValue = values {
//            cell.textLabel?.text = theValue.items![indexPath.row].title;
//        } else {
//            cell.textLabel?.text = "Loading..."
//        }
        cell.selectionStyle = .None
        
        return cell
    }
    
    override public func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
        }
    }
    
    override public func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
        return 200
    }
}