//
//  ViewController.swift
//  Demo1103
//
//  Created by VincentShaw on 15/11/3.
//  Copyright © 2015年 vin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var iv:UITableView!
    var array=["jack","rose"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        iv.dataSource=self
        iv.delegate=self
        iv.frame=self.view.frame
        iv.tableFooterView=UIView()
        self.view.addSubview(iv)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=iv.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        return cell
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
