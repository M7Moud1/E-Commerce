//
//  LoginModel.swift
//  Project
//
//  Created by Mahmoud helmy on 8/5/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit


struct LoginUser : Codable {

    let status:Int?
    let message:String?
    let api_token:String?
    let user:Userinfo?
    

}

struct Userinfo : Codable {
    
    let id:Int?
    let name:String?
    let email:String?
    let city:String?
    let address:String?
    let phone_number:String?
    let shipping_address:String?
    let role_id:Int?
    let type:String?
    let created_at:String?
    let updated_at:String?
    let client:Client1?
    let seller_info:String?

}

struct Client1 : Codable {
    let id:Int?
    let user_id:Int?
    let country_id:Int?
    let region_id:Int?
    let city:String?
    let zip_code:String?
    let address:String?
    let phone_number:String?
    let image:String?
}
