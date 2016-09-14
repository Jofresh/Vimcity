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
        view.backgroundColor = UIColor.clearColor()
        view.opaque = false
        }
 
    @IBAction func mainFilterGoButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //Switches to sub filter views
    @IBAction func studioButtonDidTouch(sender: AnyObject) {
    subFilterView.hidden = false
        filterView.hidden = true}
    @IBAction func retailButtonDidTouch(sender: AnyObject) {
        retailFilterView.hidden = false
        filterView.hidden = true}
    @IBAction func foodAndDrinkButtonDidTouch(sender: AnyObject) {
        foodAndBeverageFilterView.hidden = false
        filterView.hidden = true}
    @IBAction func servicesButtonDidTouch(sender: AnyObject) {
        servicesFilterView.hidden = false
        filterView.hidden = true}
    @IBAction func communityButtonDidTouch(sender: AnyObject) {
        communityFilterView.hidden = false
        filterView.hidden = true
        }
    
    //Switches back to Filter View
    @IBAction func studiosGoButtonDidTouch(sender: AnyObject) {
        subFilterView.hidden = true
        filterView.hidden = false}
    @IBAction func retailGoButtonDidTouch(sender: AnyObject) {
        retailFilterView.hidden = true
        filterView.hidden = false}
    @IBAction func foodGoButtonDidTouch(sender: AnyObject) {
        foodAndBeverageFilterView.hidden = true
        filterView.hidden = false}
    @IBAction func servicesGoButtonDidTouch(sender: AnyObject) {
        servicesFilterView.hidden = true
        filterView.hidden = false}
    @IBAction func communityGoButtonDidTouch(sender: AnyObject) {
        communityFilterView.hidden = true
        filterView.hidden = false}

    
    //Changes States for Studios Sub Filter
    @IBAction func didTouchYogaButton(sender: AnyObject) {
        let image = UIImage(named: "yoga button 2")! as UIImage
        yogaButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func crossFitButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "cross fit button 2")! as UIImage
        crossFitButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func indoorCyclingButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "indoor cycling button 2")! as UIImage
        indoorCyclingButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func gymButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "gym button 2")! as UIImage
        gymButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func personalTrainingButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "personal training 2")! as UIImage
        personalTrainingButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func groupButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "group button 2")! as UIImage
        groupButton.setImage(image, forState: UIControlState.Normal)}
    
    //Changes States for Retail Sub Filter
    @IBAction func apparelButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "apparel button 2")! as UIImage
        apparelButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func equipmentButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "equipment button 2")! as UIImage
        equipmentButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func homeButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "home button 2")! as UIImage
        homeButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func foodGroceryButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "food grocery button 2")! as UIImage
        foodGroceryButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func personalCareButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "personal care button 2")! as UIImage
        personalCareButton.setImage(image, forState: UIControlState.Normal)}

    //Changes States for Food n Bev Sub Filter
    @IBAction func nearMeDidTouch(sender: AnyObject) {
        let image = UIImage(named: "near me button 2")! as UIImage
        nearMeButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func vegetarianButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "vegetarian vegan button 2")! as UIImage
        vegetarianVeganButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func glutenFreeButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "gluten free button 2")! as UIImage
        glutenFreeButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func locallySourceButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "locally sourced button 2")! as UIImage
        locallySourcedButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func foodTrucksButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "food trucks button 2")! as UIImage
        foodTrucksButton.setImage(image, forState: UIControlState.Normal)}
    
    //Changes States for Services Sub Filter
    @IBAction func activeLivingButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "active living button 2")! as UIImage
        activeLivingButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func medicineButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "medicine button 2")! as UIImage
        medicineButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func weightLossButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "weight loss button 2")! as UIImage
        weightLossButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func massageButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "massage button 2")! as UIImage
        massageButton.setImage(image, forState: UIControlState.Normal)}
    
    //Changes States for Community Sub Filter
    @IBAction func parksButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "parks button 2")! as UIImage
        parksButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func trailsButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "trails button 2")! as UIImage
        trailsButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func communityGardensButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "community button 2")! as UIImage
        communityGardensButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func clubsButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "clubs button 2")! as UIImage
        clubsButton.setImage(image, forState: UIControlState.Normal)}
    @IBAction func farmersMarketButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "farmers markets button 2")! as UIImage
        farmersMarket.setImage(image, forState: UIControlState.Normal)}
}

    

