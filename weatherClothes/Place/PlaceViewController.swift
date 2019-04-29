//
//  PlaceViewController.swift
//  weatherClothes
//
//  Created by sue on 2019/04/28.
//  Copyright © 2019 sue. All rights reserved.
//
import UIKit

class PlaceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!
    let place = ["北海道・東北", "関東", "中部", "関西", "中国・四国","九州・沖縄"]
    var giveData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.title = "エリアから探す"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セルの個数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }
    
    //セルに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = place[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 押されたときのcellのlabelの文字列をViewControllerに渡したいので、一旦、giveDataに入れとく
        giveData = place[indexPath.row]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            let vc = segue.destination as! PrefectureViewController
            vc.receiveData = giveData
            print("あああああ")
            print(giveData)
        }
    }
}
