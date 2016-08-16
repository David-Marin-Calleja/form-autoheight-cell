//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation

class SimpleFormCellPresenter: SimpleFormCellPresenterProtocol, SimpleFormCellInteractorOutputProtocol
{
    weak var view: SimpleFormCellViewProtocol?
    var interactor: SimpleFormCellInteractorInputProtocol?
    var wireFrame: SimpleFormCellWireFrameProtocol?
    
    init() {}
}