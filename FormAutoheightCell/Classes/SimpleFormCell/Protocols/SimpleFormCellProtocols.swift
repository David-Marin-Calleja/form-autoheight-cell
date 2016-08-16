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
    static func presentSimpleFormCellModule(fromView view: AnyObject)
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
}

protocol SimpleFormCellLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
