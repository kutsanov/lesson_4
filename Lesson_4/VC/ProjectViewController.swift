//
//  ProjectViewController.swift
//  Lesson_4
//
//  Created by Vova Kutsanov on 07.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionShowDetail(_ sender: Any) {
        performSegue(withIdentifier: "segueShowDetail", sender: sender)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueShowDetail" {
            let btn = sender as! UIButton
            let id = btn.restorationIdentifier
            let projects : [CellData]
            
            switch id {
            case "btnPharmznanie":
                projects = CellData.lstPharmznanie()
            case "btnAutopoisk":
                projects = CellData.lstAutoPoisk()
            case "btnMoreoptom":
                projects = CellData.lstMoreOptom()
            default:
                projects = []
            }
            
            if let vcProject = segue.destination as? DetailTableViewController {
                vcProject.projects = projects
            }
        }
    }
    
}
