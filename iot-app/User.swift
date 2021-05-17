//
//  User.swift
//  iot-app
//
//  Created by yokada on 2021/05/18.
//

import AWSDynamoDB

class User: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    @objc var id: String = ""
    @objc var username: String = ""
    @objc var planterID: String = ""

    class func dynamoDBTableName() -> String {
        // DynamoDBのテーブル名
        return "User-sfjkyk7wzrde3fuqfc5vpuuc3i-okada"
    }

    class func hashKeyAttribute() -> String {
        return "id"
    }
}
