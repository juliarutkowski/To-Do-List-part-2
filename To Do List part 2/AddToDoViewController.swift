//
//  AddToDoViewController.swift
//  To Do List part 2
//
//  Created by Julia Rutkowski on 7/14/20.
//  Copyright © 2020 Julia Rutkowski. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoViewControllerTableViewController()

  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var importantSwitch: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func addTapped(_ sender: Any) {
    let ToDo = toDo()

    if let titleText = titleTextField.text {
      ToDo.name = titleText
      ToDo.important = importantSwitch.isOn
    }
    previousVC.ToDos.append(toDo)
    previousVC.tableView.reloadData()
  }

}


//    override func viewDidLoad() {
//        super.viewDidLoad()

        // Do any additional setup after loading the view.

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

