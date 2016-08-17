//
// Created by David
// Copyright (c) 2016 David. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class SimpleFormCellAPIDataManager: SimpleFormCellAPIDataManagerInputProtocol
{
    init() {
    }
    
    func numberOfCells (completionHandler: (ListOfCellsInfo?, NSError?)->() ) {
        
        Alamofire.request(.GET, "http://www.ireddish.com/test/test.json")
//
//            .responseJSON {
//                (response) -> Void in
            .responseObject {
                (response: Response<ListOfCellsInfo, NSError>) in
                
                guard response.result.isSuccess else {
                    return
                }
                
                let value = response.result.value
                completionHandler(value, nil)
        }
    }
}