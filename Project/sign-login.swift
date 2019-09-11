//
//  sign-login.swift
//  Project
//
//  Created by Mahmoud helmy on 6/25/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit
import Firebase

class fire {
    
  //  var val : Int = 1
    
    
        class func createUser(Email email:String , password:String , Username:String)
        {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    
                    print("error in connection" , error.localizedDescription)
                    
                }
                guard let uid = result?.user.uid else { return }
                let values = [ "email" : email , "username" : Username]
                
                Database.database().reference().child("users").child(uid).updateChildValues(values
                    , withCompletionBlock: { (error, ref) in
                        if let error = error {
                            
                            print("error in database" , error.localizedDescription)
                            
                        }
                        print("Succussfully...")
                        
                        
                })
                
                
            }
        
    }
    
    let x : Int = 1
    
    class func Login (Email email:String , password:String , CompletionHandler: @escaping (_ success:Bool)->Void)  {
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error == nil {
                
                
               print("Logged in.....")
                CompletionHandler(true)
                //return true
            
            
            } else {
                print("error in login" , error?.localizedDescription)
                CompletionHandler(false)
            }
            
            
            
        }
       
    }
}
