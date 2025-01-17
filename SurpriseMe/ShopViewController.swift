//
//  ShopViewController.swift
//  SurpriseMe
//
//  Created by Youval Ella on 12/07/2019.
//  Copyright © 2019 Surprise. All rights reserved.
//

import UIKit

private let reuseIdentifier = "productCell"


private let testShop = Shop.init(id: "nikeShop", category: .SPORT, name: "Nike", products:
    ["Products" :
        [
            Product.init(id: "#1", name: "Nike Green Shoes", desc: "Running shoes with good quality", image: #imageLiteral(resourceName: "nike-shoes"), category: "Shoes", price: 159.00),
            Product.init(id: "#1", name: "Nike Green Shoes", desc: "Running shoes with good quality", image: #imageLiteral(resourceName: "nike-shoes"), category: "Shoes",price: 159.00 ),
            Product.init(id: "#1", name: "Nike Green Shoes", desc: "Running shoes with good quality", image: #imageLiteral(resourceName: "nike-shoes"), category: "Shoes", price: 159.00),
            Product.init(id: "#1", name: "Nike Green Shoes", desc: "Running shoes with good quality", image: #imageLiteral(resourceName: "nike-shoes"), category: "Shoes", price: 159.00)
        ]
    ]
    
    
    
    , adress: "Kenyon Ayalon Ramat Gan", desc: "Very expensive sports shop you can buy a variety of products", logo: #imageLiteral(resourceName: "nike-logo"), backgroudImage: #imageLiteral(resourceName: "nike-background"))



class ShopViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.backgroundView = UIImageView(image: UIImage.init(named: "nike-background"))
        self.title = testShop.name

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false



        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return testShop.products["Products"]!.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProductCollectionViewCell
    
        // Configure the cell
        
        let array = Array(testShop.products["Products"]!)
        cell.productLogo.image = array[indexPath.item].image
        cell.productPrice.text = "\(array[indexPath.item].price) NIS"
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
