//
//  ViewController.swift
//  ios-hands-on-3
//
//  Created by junya.kawai on 2020/02/07.
//  Copyright © 2020 nextbeat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let person:[Person] = [
        Person(name: "Tanaka", age: 20),
        Person(name: "Sato",   age: 25),
        Person(name: "Suzuki", age: 30),
        Person(name: "Yamada", age: 40)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableviewのイベントをこのViewControllerに記述するための設定
        tableView.dataSource = self
        
        // tableviewのデータをこのViewControllerに記述するための設定
        tableView.delegate   = self
    }
}

// extensionを使うことで、
extension ViewController: UITableViewDataSource {
    
    // 1つのSectionに入れるCellの数（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return person.count
    }
    
    // Cellの設定（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //カスタムセルの設定
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! PersonTableViewCell
        cell.setup(person: person[indexPath.row])
        return cell
    }
    
    // Cellの高さを設定（任意）
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return 50
        return 100
    }
}

extension ViewController: UITableViewDelegate{
    // セルがタップされたときの処理を書く
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(person[indexPath.row])
        return
    }

    // スクロールしたときの処理を書く
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scroll")
        return
    }
}
