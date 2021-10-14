//
//  Planter.swift
//  iot-app
//
//  Created by yokada on 2021/10/11.
//

import AWSDynamoDB

class Planters: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    @objc var id: String = ""
    @objc var name: String = ""
    @objc var userID: String = ""
//    @objc var user: User?

    class func dynamoDBTableName() -> String {
        // DynamoDBのテーブル名
        return "Planter-gx3gx7nehzbfpn6rydugkinovu-dev"
    }

    class func hashKeyAttribute() -> String {
        return "id"
    }
}
