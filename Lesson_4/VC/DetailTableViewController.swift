//
//  DetailTableViewController.swift
//  Lesson_4
//
//  Created by Vova Kutsanov on 07.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    var projects : [CellData] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DetailTableViewCell {
            let project = projects[indexPath.row]
            cell.olName.text = project.name
            cell.olUrl.text = project.url
            cell.olDescription.text = project.note

            return cell
        }
        
        return UITableViewCell()
    }
}
