//
//  PrefectureViewController.swift
//  weatherClothes
//
//  Created by sue on 2019/04/28.
//  Copyright © 2019 sue. All rights reserved.
//
import UIKit

class PrefectureViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!
    var prefecture = ["東京都", "神奈川県", "千葉県", "埼玉県", "栃木県","茨城県"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.title = "都道府県から探す"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //    //セルの個数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefecture.count
    }
    
    //セルに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "PrefectureCell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = prefecture[indexPath.row]
        if indexPath.row == 1 {
            // セルの選択不可にする
            cell.selectionStyle = .none
        } else if indexPath.row == 2 {
            cell.selectionStyle = .none
        } else if indexPath.row == 3 {
            cell.selectionStyle = .none
        } else if indexPath.row == 4 {
            cell.selectionStyle = .none
        } else if indexPath.row == 5 {
            cell.selectionStyle = .none
        } else {
            cell.selectionStyle = .default
        }
        return cell
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        switch indexPath.row {
        case 0:
            return indexPath
        // 選択不可にしたい場合は"nil"を返す
        case 1:
            return nil
        case 2:
            return nil
        case 3:
            return nil
        case 4:
            return nil
        case 5:
            return nil
            
        default:
            return indexPath
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

