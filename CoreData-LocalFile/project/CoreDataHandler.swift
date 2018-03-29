//
//  CoreDataHandler.swift
//  Demo2
//
//  Created by THOAILUN on 29/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

import UIKit
import CoreData
class CoreDataHandler: NSObject {
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveObject(id_user: Int32, username: String, password: String, email: String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        manageObject.setValue(id_user, forKey: "id_user")
        manageObject.setValue(username, forKey: "username")
        manageObject.setValue(password, forKey: "password")
        manageObject.setValue(email, forKey: "email")
        
        do {
            try context.save()
            return true
        }catch {
            return false
        }
    }
    
    class func fetchObject() -> [Users]? {
        let context = getContext()
        var users:[Users]? = nil
        
        do{
            users = try context.fetch(Users.fetchRequest())
            return users
        }catch {
            return users
        }
        
    }
}
