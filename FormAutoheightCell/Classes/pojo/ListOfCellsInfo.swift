//
//  CellInfo.swift
//  Pods
//
//  Created by David Marín Calleja on 17/08/16.
//
//

import Foundation
import ObjectMapper

class ListOfCellsInfo: Mappable {
    var items: [CellInfo]?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        items <- map["items"]
    }
}

class CellInfo: Mappable {
    var title:String?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
    }
}