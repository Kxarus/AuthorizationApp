//
//  File.swift
//  File
//
//  Created by Roman Kiruxin on 23.01.2022.
//

struct Authorization {
    let login:String
    let password:String
}

extension Authorization {
    static func getLoginAndPassword() -> [Authorization] {

        return [
            Authorization(
                login: "admin",
                password: "123")
        ]
    }
}

extension Authorization {
    static func function1() {
        print("321")
    }
    
}
