//
//  StudentViewController.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 19/04/22.
//

import UIKit

class StudentViewController: UIViewController {
    
    @IBOutlet var studentTable: UITableView!
    
    var studentArray: [StudentsData] = []
    
    var bodyHTML : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension StudentViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.studentName.text = studentArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
}
