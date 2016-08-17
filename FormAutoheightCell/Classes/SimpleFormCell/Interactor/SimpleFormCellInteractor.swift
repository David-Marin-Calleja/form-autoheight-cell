//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation

class SimpleFormCellInteractor: SimpleFormCellInteractorInputProtocol
{
    weak var presenter: SimpleFormCellInteractorOutputProtocol?
    var APIDataManager: SimpleFormCellAPIDataManagerInputProtocol?
    var localDatamanager: SimpleFormCellLocalDataManagerInputProtocol?
    
    init() {}
    
    func numberOfCells (completionHandler: (ListOfCellsInfo?, NSError?)->() ) {
        APIDataManager?.numberOfCells(completionHandler)
    }
}