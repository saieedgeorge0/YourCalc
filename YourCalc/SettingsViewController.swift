//  ViewController.swift
//  YourCalc
//
//  Created by George Saieed on 7/7/16.
//  Copyright © 2016 George Saieed. All rights reserved.
//

import UIKit
import CoreData
var theBackground = "b14.png"
class SettingsViewController: UIViewController {
    
    @IBOutlet var backImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        backImage.image = UIImage(named:theBackground)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back1(sender: AnyObject) {
        theBackground = "b1.png"
        save("b1.png")
        backImage.image = UIImage(named:"b1.png")
        viewDidLoad()
    }
    
    @IBAction func back2(sender: AnyObject) {
        theBackground = "b2.png"
        save("b2.png")
        backImage.image = UIImage(named:"b2.png")
        viewDidLoad()
    }
    
    @IBAction func back3(sender: AnyObject) {
        theBackground = "b3.png"
        save("b3.png")
        backImage.image = UIImage(named:"b3.png")
        viewDidLoad()
    }
    
    @IBAction func back4(sender: AnyObject) {
        theBackground = "b4.png"
        save("b4.png")
        backImage.image = UIImage(named:"b4.png")
        viewDidLoad()
    }
    
    @IBAction func back5(sender: AnyObject) {
        theBackground = "b5.png"
        save("b5.png")
        backImage.image = UIImage(named:"b5.png")
        viewDidLoad()
    }
    
    @IBAction func back6(sender: AnyObject) {
        theBackground = "b6.png"
        save("b6.png")
        backImage.image = UIImage(named:"b6.png")
        viewDidLoad()
    }
    
    @IBAction func back7(sender: AnyObject) {
        theBackground = "b7.png"
        save("b7.png")
        backImage.image = UIImage(named:"b7.png")
        viewDidLoad()
    }
    
    @IBAction func back8(sender: AnyObject) {
        theBackground = "b8.png"
        save("b8.png")
        backImage.image = UIImage(named:"b8.png")
        viewDidLoad()
    }
    
    @IBAction func back9(sender: AnyObject) {
        theBackground = "b9.png"
        save("b9.png")
        backImage.image = UIImage(named:"b9.png")
        viewDidLoad()
    }
    
    @IBAction func back10(sender: AnyObject) {
        theBackground = "b10.png"
        save("b10.png")
        backImage.image = UIImage(named:"b10.png")
        viewDidLoad()
    }
    
    @IBAction func back11(sender: AnyObject) {
        theBackground = "b11.png"
        save("b11.png")
        backImage.image = UIImage(named:"b11.png")
        viewDidLoad()
    }
    
    @IBAction func back12(sender: AnyObject) {
        theBackground = "b12.png"
        save("b12.png")
        backImage.image = UIImage(named:"b12.png")
        viewDidLoad()
    }
    
    @IBAction func back13(sender: AnyObject) {
        theBackground = "b13.png"
        save("b13.png")
        backImage.image = UIImage(named:"b13.png")
        viewDidLoad()
    }
    
    @IBAction func back14(sender: AnyObject) {
        theBackground = "b14.png"
        save("b14.png")
        backImage.image = UIImage(named:"b14.png")
        viewDidLoad()
    }
    
    @IBAction func back15(sender: AnyObject) {
        theBackground = "b15.png"
        save("b15.png")
        backImage.image = UIImage(named:"b15.png")
        viewDidLoad()
    }
    
    @IBAction func back16(sender: AnyObject) {
        theBackground = "b16.png"
        save("b16.png")
        backImage.image = UIImage(named:"b16.png")
        viewDidLoad()
    }
    
    @IBAction func back17(sender: AnyObject) {
        theBackground = "b17.png"
        save("b17.png")
        backImage.image = UIImage(named:"b17.png")
        viewDidLoad()
    }
    
    @IBAction func back18(sender: AnyObject) {
        theBackground = "b18.png"
        save("b18.png")
        backImage.image = UIImage(named:"b18.png")
        viewDidLoad()
    }
    
    @IBAction func back19(sender: AnyObject) {
        theBackground = "b19.png"
        save("b19.png")
        backImage.image = UIImage(named:"b19.png")
        viewDidLoad()
    }
    
    @IBAction func back20(sender: AnyObject) {
        theBackground = "b20.png"
        save("b20.png")
        backImage.image = UIImage(named:"b20.png")
        viewDidLoad()
    }
    func save(name: String) {
        self.deleteAllData("Background")
        let appDelegate =
            UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        let entity =  NSEntityDescription.entityForName("Background",
                                                        inManagedObjectContext:managedContext)
        
        let person = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        person.setValue(name, forKey: "name")
        
        do {
            try managedContext.save()
            cores.append(person)
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
    func deleteAllData(entity: String)
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: entity)
        fetchRequest.returnsObjectsAsFaults = false
        
        do
        {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            for managedObject in results
            {
                let managedObjectData:NSManagedObject = managedObject as! NSManagedObject
                managedContext.deleteObject(managedObjectData)
            }
        } catch let error as NSError {
            print("Detele all data in \(entity) error : \(error) \(error.userInfo)")
        }
    }
    
    }

