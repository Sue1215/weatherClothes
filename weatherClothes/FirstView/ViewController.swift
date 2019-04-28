//
//  ViewController.swift
//  weatherClothes
//
//  Created by sue on 2019/04/28.
//  Copyright © 2019 sue. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var placeButton: UIButton!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "俺の服装"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}

