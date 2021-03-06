//
//  IssueEntity.swift
//  Networking
//
//  Created by Ethan Thomas on 6/1/16.
//  Copyright © 2016 Ethan Thomas. All rights reserved.
//

import Mapper

struct Issue: Mappable {

    let identifier: Int
    let number: Int
    let title: String
    let body: String

    init(map: Mapper) throws {
        try identifier = map.from("id")
        try number = map.from("number")
        try title = map.from("title")
        try body = map.from("body")
    }
}
