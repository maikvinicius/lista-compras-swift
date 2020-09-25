//
//  ViewController.swift
//  ListaCompras
//
//  Created by Maik Vinicius on 24/09/20.
//  Copyright © 2020 DevJrBR. All rights reserved.
//

import UIKit

class ProductListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let products: [ProductModel] = [
        ProductModel(name: "Arroz do Maik", quantity: 10, price: "R$ 25,00"),
        ProductModel(name: "Arroz do Natália", quantity: 25, price: "R$ 200,00"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProductListIdentifier", for: indexPath) as! ProductListTableViewCell
        
        let product:ProductModel = self.products[indexPath.row]
        
        cell.name.text = product.name
        cell.quantity.text = String(product.quantity)
        cell.price.text = product.price
        
        return cell
    }
    

}

