//
//  ViewController.swift
//  CoffeShop
//
//  Created by Saba Gogrichiani on 25.10.23.
//

import UIKit

enum CoffeeSize: String {
    case small = "S"
    case medium = "M"
    case large = "L"
}

struct Coffee {
    let productName: String
    let description: String
    let price: Double
    let size: CoffeeSize
}



class ViewController: UIViewController {
    
    @IBOutlet weak var buttonCoffeS: UIButton!
    @IBOutlet weak var buttonCoffeM: UIButton!
    @IBOutlet weak var buttonCoffeL: UIButton!
    @IBOutlet weak var coffeIcon: UIImageView!
    @IBOutlet weak var milkIcon: UIImageView!
    @IBOutlet weak var coffeName: UILabel!
    @IBOutlet weak var coffeDescription: UILabel!
    @IBOutlet weak var coffePrice: UILabel!
    
    // Create an instance of Coffee
    let coffeeProduct = Coffee(
        productName: "Latte",
        description: "Rich and creamy espresso with steamed milk and a layer of frothed milk",
        price: 7.99,
        size: .small
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coffeName.text = coffeeProduct.productName
        coffeDescription.text = coffeeProduct.description
        coffePrice.text = "$\(coffeeProduct.price)"
        
        switch coffeeProduct.size {
        case .small:
            buttonCoffeS.layer.borderColor = UIColor(red: 198/255, green: 124/255, blue: 78/255, alpha: 1.0).cgColor
        case .medium:
            buttonCoffeM.layer.borderColor = UIColor(red: 198/255, green: 124/255, blue: 78/255, alpha: 1.0).cgColor
        case .large:
            buttonCoffeL.layer.borderColor = UIColor(red: 198/255, green: 124/255, blue: 78/255, alpha: 1.0).cgColor
        }
        
        // Set the common border properties
        buttonCoffeS.layer.borderWidth = 1
        buttonCoffeM.layer.borderWidth = 1
        buttonCoffeL.layer.borderWidth = 1
        buttonCoffeS.layer.cornerRadius = 12
        buttonCoffeM.layer.cornerRadius = 12
        buttonCoffeL.layer.cornerRadius = 12
        
        coffeIcon.layer.cornerRadius = 12
        milkIcon.layer.cornerRadius = 12
    }
}
