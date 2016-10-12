//
//  FilterViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/10/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    //Outlets for Main Filter
    @IBOutlet var mainView: DesignableView!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var studioButton: UIButton!
    
    //Studios SubFilter Buttons
    @IBOutlet weak var subFilterView: UIView!
    @IBOutlet weak var yogaButton: UIButton!
    @IBOutlet weak var crossFitButton: UIButton!
    @IBOutlet weak var indoorCyclingButton: UIButton!
    @IBOutlet weak var gymButton: UIButton!
    @IBOutlet weak var personalTrainingButton: UIButton!
    @IBOutlet weak var groupButton: UIButton!
    //Retail SubFilter Buttons
    @IBOutlet weak var retailFilterView: UIView!
    @IBOutlet weak var apparelButton: UIButton!
    @IBOutlet weak var equipmentButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var foodGroceryButton: UIButton!
    @IBOutlet weak var personalCareButton: UIButton!
    //Food & Beverage SubFilter
    @IBOutlet weak var foodAndBeverageFilterView: UIView!
    @IBOutlet weak var nearMeButton: UIButton!
    @IBOutlet weak var vegetarianVeganButton: UIButton!
    @IBOutlet weak var glutenFreeButton: UIButton!
    @IBOutlet weak var locallySourcedButton: UIButton!
    @IBOutlet weak var foodTrucksButton: UIButton!
    //Services SubFilter
    @IBOutlet weak var servicesFilterView: UIView!
    @IBOutlet weak var activeLivingButton: UIButton!
    @IBOutlet weak var medicineButton: UIButton!
    @IBOutlet weak var weightLossButton: UIButton!
    @IBOutlet weak var massageButton: UIButton!
    //Community SubFilter
    @IBOutlet weak var communityFilterView: UIView!
    @IBOutlet weak var parksButton: UIButton!
    @IBOutlet weak var trailsButton: UIButton!
    @IBOutlet weak var communityGardensButton: UIButton!
    @IBOutlet weak var clubsButton: UIButton!
    @IBOutlet weak var farmersMarket: UIButton!
    
    
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.clear
        view.isOpaque = false
        }
 
    @IBAction func mainFilterGoButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    //Switches to sub filter views
    @IBAction func studioButtonDidTouch(_ sender: AnyObject) {
    subFilterView.isHidden = false
        filterView.isHidden = true}
    @IBAction func retailButtonDidTouch(_ sender: AnyObject) {
        retailFilterView.isHidden = false
        filterView.isHidden = true}
    @IBAction func foodAndDrinkButtonDidTouch(_ sender: AnyObject) {
        foodAndBeverageFilterView.isHidden = false
        filterView.isHidden = true}
    @IBAction func servicesButtonDidTouch(_ sender: AnyObject) {
        servicesFilterView.isHidden = false
        filterView.isHidden = true}
    @IBAction func communityButtonDidTouch(_ sender: AnyObject) {
        communityFilterView.isHidden = false
        filterView.isHidden = true
        }
    
    //Switches back to Filter View
    @IBAction func studiosGoButtonDidTouch(_ sender: AnyObject) {
        subFilterView.isHidden = true
        filterView.isHidden = false}
    @IBAction func retailGoButtonDidTouch(_ sender: AnyObject) {
        retailFilterView.isHidden = true
        filterView.isHidden = false}
    @IBAction func foodGoButtonDidTouch(_ sender: AnyObject) {
        foodAndBeverageFilterView.isHidden = true
        filterView.isHidden = false}
    @IBAction func servicesGoButtonDidTouch(_ sender: AnyObject) {
        servicesFilterView.isHidden = true
        filterView.isHidden = false}
    @IBAction func communityGoButtonDidTouch(_ sender: AnyObject) {
        communityFilterView.isHidden = true
        filterView.isHidden = false}

    
    //Changes States for Studios Sub Filter
    @IBAction func didTouchYogaButton(_ sender: AnyObject) {
        let image = UIImage(named: "yoga button 2")! as UIImage
        yogaButton.setImage(image, for: UIControlState())}
    @IBAction func crossFitButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "cross fit button 2")! as UIImage
        crossFitButton.setImage(image, for: UIControlState())}
    @IBAction func indoorCyclingButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "indoor cycling button 2")! as UIImage
        indoorCyclingButton.setImage(image, for: UIControlState())}
    @IBAction func gymButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "gym button 2")! as UIImage
        gymButton.setImage(image, for: UIControlState())}
    @IBAction func personalTrainingButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "personal training 2")! as UIImage
        personalTrainingButton.setImage(image, for: UIControlState())}
    @IBAction func groupButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "group button 2")! as UIImage
        groupButton.setImage(image, for: UIControlState())}
    
    //Changes States for Retail Sub Filter
    @IBAction func apparelButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "apparel button 2")! as UIImage
        apparelButton.setImage(image, for: UIControlState())}
    @IBAction func equipmentButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "equipment button 2")! as UIImage
        equipmentButton.setImage(image, for: UIControlState())}
    @IBAction func homeButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "home button 2")! as UIImage
        homeButton.setImage(image, for: UIControlState())}
    @IBAction func foodGroceryButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "food grocery button 2")! as UIImage
        foodGroceryButton.setImage(image, for: UIControlState())}
    @IBAction func personalCareButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "personal care button 2")! as UIImage
        personalCareButton.setImage(image, for: UIControlState())}

    //Changes States for Food n Bev Sub Filter
    @IBAction func nearMeDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "near me button 2")! as UIImage
        nearMeButton.setImage(image, for: UIControlState())}
    @IBAction func vegetarianButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "vegetarian vegan button 2")! as UIImage
        vegetarianVeganButton.setImage(image, for: UIControlState())}
    @IBAction func glutenFreeButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "gluten free button 2")! as UIImage
        glutenFreeButton.setImage(image, for: UIControlState())}
    @IBAction func locallySourceButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "locally sourced button 2")! as UIImage
        locallySourcedButton.setImage(image, for: UIControlState())}
    @IBAction func foodTrucksButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "food trucks button 2")! as UIImage
        foodTrucksButton.setImage(image, for: UIControlState())}
    
    //Changes States for Services Sub Filter
    @IBAction func activeLivingButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "active living button 2")! as UIImage
        activeLivingButton.setImage(image, for: UIControlState())}
    @IBAction func medicineButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "medicine button 2")! as UIImage
        medicineButton.setImage(image, for: UIControlState())}
    @IBAction func weightLossButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "weight loss button 2")! as UIImage
        weightLossButton.setImage(image, for: UIControlState())}
    @IBAction func massageButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "massage button 2")! as UIImage
        massageButton.setImage(image, for: UIControlState())}
    
    //Changes States for Community Sub Filter
    @IBAction func parksButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "parks button 2")! as UIImage
        parksButton.setImage(image, for: UIControlState())}
    @IBAction func trailsButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "trails button 2")! as UIImage
        trailsButton.setImage(image, for: UIControlState())}
    @IBAction func communityGardensButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "community button 2")! as UIImage
        communityGardensButton.setImage(image, for: UIControlState())}
    @IBAction func clubsButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "clubs button 2")! as UIImage
        clubsButton.setImage(image, for: UIControlState())}
    @IBAction func farmersMarketButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "farmers markets button 2")! as UIImage
        farmersMarket.setImage(image, for: UIControlState())}
}

    

