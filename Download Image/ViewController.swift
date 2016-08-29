//
//  ViewController.swift
//  Download Image
//
//  Created by Sudeepth Dharavasthu on 7/20/16.
//  Copyright © 2016 Sudeepth Dharavasthu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    var documentDirectory:String?
    var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
    if paths.count > 0 {
        documentDirectory = paths[0] as? String
        let savePath = documentDirectory! + "/Kareena_Kapoor_Khan.jpg"
        //NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
        self.image.image = UIImage(named: savePath)
        }
    }
//        task.resume()
        
//        let url:NSURL = NSURL(string : "https://upload.wikimedia.org/wikipedia/commons/4/41/Kareena_Kapoor_Khan.jpg")!
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
//            if error != nil {
//                print(error)
//            }else{
//                var documentDirectory:String?
//                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
//                if paths.count > 0 {
//                    documentDirectory = paths[0] as? String
//                    let savePath = documentDirectory! + "/Kareena_Kapoor_Khan.jpg"
//                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
//                    dispatch_async(dispatch_get_main_queue(), {
//                        self.image.image = UIImage(named: savePath)
//                    })
//                }
//            }
//        }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

