//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation

protocol SimpleFormCellViewProtocol: class
{
    var presenter: SimpleFormCellPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol SimpleFormCellWireFrameProtocol: class
{
    static func presentSimpleFormCellModule(fromView view: SimpleFormCellViewProtocol,
                                                presenter: SimpleFormCellPresenter)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol SimpleFormCellPresenterProtocol: class
{
    var view: SimpleFormCellViewProtocol? { get set }
    var interactor: SimpleFormCellInteractorInputProtocol? { get set }
    var wireFrame: SimpleFormCellWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    func numberOfCells (completionHandler: (ListOfCellsInfo?, NSError?)->() )
    func setupWireFrame(theView: SimpleFormCellViewProtocol)
}

protocol SimpleFormCellInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol SimpleFormCellInteractorInputProtocol: class
{
    var presenter: SimpleFormCellInteractorOutputProtocol? { get set }
    var APIDataManager: SimpleFormCellAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SimpleFormCellLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    func numberOfCells (completionHandler: (ListOfCellsInfo?, NSError?)->() )
}

protocol SimpleFormCellDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol SimpleFormCellAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    func numberOfCells (completionHandler: (ListOfCellsInfo?, NSError?)->() )
}

protocol SimpleFormCellLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
