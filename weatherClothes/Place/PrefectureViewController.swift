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
    var prefecture = [""]
    var receiveData: String = ""
    
    let hokkaido = ["北海道", "青森", "秋田", "岩手"]
    let kanto = ["東京都", "神奈川県", "千葉県", "埼玉県", "栃木県","茨城県"]
    let chubu = ["ちゅーぶ"]
    let kansai = ["大阪", "京都"]
    let chugoku = ["中国", "四国"]
    let kyusyu = ["福岡", "沖縄"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.title = "都道府県から探す"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
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
        if receiveData == "北海道・東北" {
            prefecture = hokkaido
            print("あああああ")
            print(receiveData)
        } else if receiveData == "関東"{
            prefecture = kanto
        } else if receiveData == "中部"{
            prefecture = chubu
        } else if receiveData == "関西"{
            prefecture = kansai
        } else if receiveData == "中国・四国"{
            prefecture = chugoku
        } else if receiveData == "九州・沖縄"{
            prefecture = kyusyu
        }
        // セルに表示する値を設定する
        cell.textLabel!.text = prefecture[indexPath.row]
//        cell.textLabel!.text = receiveData
        print("かかかか")
        print(receiveData)
        print("きききき")
        print(prefecture)
        return cell
    }
    //セルの個数を指定
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return prefecture.count
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

