//
//  UITableViewExtension.swift
//  LittleTask
//
//  Created by Riccardo Rizzo on 19/07/18.
//  Copyright © 2018 Riccardo Rizzo. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    /// Load and animate the tableview
    func loadAndAnimateTableView() {
        self.reloadData()
        let cells = self.visibleCells
        let tableHeight = self.bounds.size.height
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        for index in 0..<cells.count {
            UIView.animate(withDuration: 1.0, delay: TimeInterval(0.05 * Double(index)), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cells[index].transform = CGAffineTransform(translationX: 0, y: 0)
            })
        }
    }
}
