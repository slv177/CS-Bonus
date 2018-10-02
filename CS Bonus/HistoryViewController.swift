//
//  HistoryViewController.swift
//  CS Bonus
//
//  Created by SS on 25/09/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

  
    @IBOutlet weak var tableView: UITableView!
    
    var transactionsArray = [Transaction]()
    
    func processHistoryData(_ transactions: String) {
        let inputData = transactions.data(using: .utf8)!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let decodedHistory = try! decoder.decode(Responce.self, from: inputData)
        transactionsArray = decodedHistory.data
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let fileName = Bundle.main.path(forResource: "History", ofType: "json")
            else { return }
        let currentHistoryFile = try! String(contentsOf: URL(fileURLWithPath: fileName))
        processHistoryData(currentHistoryFile)
        tableView.dataSource = self
        tableView.rowHeight = 110
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactionsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell") as? HistoryCell else {return UITableViewCell()}
        cell.direction.text = transactionsArray[indexPath.row].direction + " " + transactionsArray[indexPath.row].amount + " CS"
        cell.remoteAdress.text = transactionsArray[indexPath.row].remoteAdress
        cell.time.text = transactionsArray[indexPath.row].time
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
