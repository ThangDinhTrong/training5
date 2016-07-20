//
//  T4DetailTableViewController.swift
//  Training4
//
//  Created by dinh trong thang on 7/20/16.
//  Copyright © 2016 dinh trong thang. All rights reserved.
//

import UIKit

class T4DetailViewController: UIViewController {

    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDate: UILabel!
    @IBOutlet weak var detailAV: UILabel!
    @IBOutlet weak var detailLovi: UILabel!
    var objectAV : AVResult!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .ShortStyle
        detailImage.image = UIImage(named: "restaurant")
        detailDate.text = dateFormatter.stringFromDate(objectAV.captureDate)
        detailLovi.text = "色度 " + String(objectAV.loviValue)
        detailAV.text = "AV " + String(objectAV.avValue)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
