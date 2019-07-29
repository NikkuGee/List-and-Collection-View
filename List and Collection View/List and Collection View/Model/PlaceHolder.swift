//
//  PlaceHolder.swift
//  List and Collection View
//
//  Created by Consultant on 7/27/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import Foundation


class PlaceHolder: Decodable {
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case url
        case thumbnailUrl
    }
    
}
