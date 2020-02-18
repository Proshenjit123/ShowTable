//
//  ViewController.swift
//  tableViewShow
//
//  Created by Proshenjit kumar on 17/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var arrDate = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        arrDate = ["label1","label2","label3","label4","label5","label6","label7","label8"]
       
    }

    @IBAction func btnUpdateClick(_ sender: UIButton) {
    }
    
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDate.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if cell != nil{
            cell = UITableViewCell(style: .default,  reuseIdentifier: "cell") as! UITableViewCell
        }
        cell.textLabel?.text = arrDate[indexPath.row]
        return cell
    }
}
