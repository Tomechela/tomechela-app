//  OrderPreViewController.swift
//  TomachelaApp
//  Created by Carlos Santiago Cruz on 20/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.

import Foundation
import UIKit

class OrderPreViewController: UITableViewController {
    var productStore = ProductStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellInCode()
        dynamicCellHeights()
        addSomePaddingToTheTop()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productStore.allProducts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell
        let product = productStore.allProducts[indexPath.row]
        cell.productNameLabel.text = product.name
        cell.valueLabel.text = "$\(product.valueInDollars)"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "loginViewSegue", sender: indexPath.row)
    }
    func addSomePaddingToTheTop() {
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    func dynamicCellHeights() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 65
    }
    func registerCellInCode() {
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "productCell")
    }
    
}
