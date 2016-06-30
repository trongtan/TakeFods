//
//  ViewController.swift
//  TakeFods
//
//  Created by Tan Vu on 6/28/16.
//  Copyright © 2016 DevHack. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    FirebaseService.sharedInstance.fetchData()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

