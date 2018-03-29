//
//  ViewController.swift
//  Demo2
//
//  Created by THOAILUN on 29/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    var users:[Users]? = nil
    
    override func viewDidLoad() {
                print("aaaa")
        super.viewDidLoad()
    }
    
    @IBAction func btnWriteData(_ sender: Any) {
        // Write data
        print("1111")
        CoreDataHandler.saveObject(id_user: 1, username: "thethoainguyenn", password: "abc12345", email: "thethoainguyenn@gmail.com")
        
        // Read data
        users = CoreDataHandler.fetchObject()
        
        for item in users! {
            print(item.username)
        }
    }
    
    @IBAction func btnWriteFile(_ sender: Any) {
        print("start write file")
        let file = "file.txt"
        let user = Person(name: "ccccc", age: 12)
        let text = String(describing: user)
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent(file)
            //writing
            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {/* error handling here */}
            
            //reading
            do {
                let text2 = try String(contentsOf: fileURL, encoding: .utf8)
                print(text2)
            }
            catch {/* error handling here */}
        }
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
class Person {
    var name: String!
    var age: Int!
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

