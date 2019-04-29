//
//  CityViewController.swift
//  weatherClothes
//
//  Created by sue on 2019/04/28.
//  Copyright © 2019 sue. All rights reserved.
//
import UIKit

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!
    let city = ["千代田区", "中央区", "港区", "新宿区", "文京区", "台東区", "墨田区", "江東区", "品川区", "目黒区", "大田区", "世田谷区", "渋谷区", "中野区", "杉並区", "豊島区", "北区", "荒川区", "板橋区", "練馬区", "足立区", "葛飾区", "江戸川区"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.title = "詳細地域から探す"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セルの個数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    //セルに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = city[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}


