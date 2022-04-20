//
//  ViewController.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 19/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var classTable: UITableView!
    var classArray: [ClassData] = []
    var studentArray: [StudentsData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        let classApiUrl = URL(string: GlobalConstant.BASE_URL)
        Webservice().getClassData(url: classApiUrl!) { classes in
            if let classes = classes {
                self.classArray = classes
                DispatchQueue.main.async {
                    self.classTable.reloadData()
                }
            }
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "classTableViewCell", for: indexPath) as! classTableViewCell
        cell.className.text = classArray[indexPath.row].name
        cell.classNames.text = "Class " + classArray[indexPath.row].name
        cell.sectionNames.text = "Secions " + classArray[indexPath.row].section
        cell.numberOfSections.text = "Number of students: " + String(describing: classArray[indexPath.row].students.count )
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = storyboard.instantiateViewController(withIdentifier: "StudentViewController") as! StudentViewController
        newVC.studentArray = classArray[indexPath.row].students
                                
                self.show(newVC, sender: self)

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classArray.count
    }
}
