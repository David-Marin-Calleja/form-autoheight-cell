//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation

class SimpleFormCellWireFrame: SimpleFormCellWireFrameProtocol
{
    class func presentSimpleFormCellModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: SimpleFormCellViewProtocol = AutoheightTableView()
        var presenter: protocol<SimpleFormCellPresenterProtocol, SimpleFormCellInteractorOutputProtocol> = SimpleFormCellPresenter()
        var interactor: SimpleFormCellInteractorInputProtocol = SimpleFormCellInteractor()
        var APIDataManager: SimpleFormCellAPIDataManagerInputProtocol = SimpleFormCellAPIDataManager()
        var localDataManager: SimpleFormCellLocalDataManagerInputProtocol = SimpleFormCellLocalDataManager()
        var wireFrame: SimpleFormCellWireFrameProtocol = SimpleFormCellWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}