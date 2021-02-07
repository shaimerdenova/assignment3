//
//  SecondViewController.swift
//  shop
//
//  Created by Admin on 03.02.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var viewContainer: UIView!
    @IBOutlet weak var firstView: UIView!
   @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var segment1: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
   @IBOutlet var cart: UIButton!
    
    let titleSport = [("Football"),("Boxing gloves"),("Racket"),("Chess"),("Dumbbell"),("Glasses"),("Basketball"),("Snowboard"),("Ice Skates"),("Skakalka")]
    
    let priceSport = [("$23"),("$50"),("$47"),("$8"),("$10"),("$5"),("$20"),("$30"),("$35"),("$3")]
    let descriptionSport = [("For playing football"), ("For boxing"),
                       ("For playing table tennis"), ("The best chess board!"),
                       ("Help to increase your body muscles!"), ("Swim with the best glasses!"),
                       ("For professional basketball players"), ("The best snowboard!"),
                       ("Ice skates for girls"), ("Jump with this!")]
    let imageSport = [UIImage(named: "football"), UIImage(named: "box"), UIImage(named: "ttracket"), UIImage(named: "chess"), UIImage(named: "gantelya"),
                      UIImage(named: "glasses"), UIImage(named: "basketball"), UIImage(named: "snowboard"), UIImage(named: "ice_skates"), UIImage(named:"skakalka")]
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.isHidden = false
        secondView.isHidden = true
       tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib, forCellReuseIdentifier: TableViewCell.identifier)
       
    }
    

    @IBAction func changeLayout(_ sender: UISegmentedControl) {
        if secondView.isHidden{
            firstView.isHidden = true
            secondView.isHidden = false
            
            }
        else{
       secondView.isHidden = true
            firstView.isHidden = false
            }
    }
}
    extension SecondViewController: UITableViewDelegate, UITableViewDataSource{
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleSport.count
        
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath)  as! TableViewCell
        cell.imageCell.image = self.imageSport[indexPath.row]
        cell.titleLabel01.text = self.titleSport[indexPath.row]
        cell.descriptionLabel02.text = self.descriptionSport[indexPath.row]
        cell.priceLabel03.text = self.priceSport[indexPath.row]
        cell.priceLabel03.textColor = UIColor.systemGreen
        return cell
    }
        
       
            }

extension SecondViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.image.image = self.imageSport[indexPath.row]
        cell.titleName.text = self.titleSport[indexPath.row]
        cell.descriptionLbl.text = self.descriptionSport[indexPath.row]
        return cell
    }
}
 
extension SecondViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    }
