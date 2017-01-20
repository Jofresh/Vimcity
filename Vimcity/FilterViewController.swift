//
//  FilterViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/10/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    //Outlets for Main views
    @IBOutlet var mainView: DesignableView!
    @IBOutlet weak var resultsView: UIView!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var studioButton: UIButton!
    @IBOutlet weak var retailButton: UIButton!
    @IBOutlet weak var servicesButton: UIButton!
    @IBOutlet weak var foodnbevButton: UIButton!
    @IBOutlet weak var communityButton: UIButton!
    
    @IBOutlet weak var selectedAllButton: UIButton!
    @IBOutlet weak var unselectedAllButton: UIButton!
    
    //Outlets for results
    @IBOutlet weak var studioResults: UIImageView!
    @IBOutlet weak var yogaResults: UIImageView!
    @IBOutlet weak var yogaAndCrossfitResults: UIImageView!
    @IBOutlet weak var retailResults: UIImageView!
    @IBOutlet weak var servicesResults: UIImageView!
    @IBOutlet weak var foodAndBevResults: UIImageView!
    @IBOutlet weak var communityResults: UIImageView!
    
    
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
        filterView.isHidden = true
        //dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dismissEntireView(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    //Switches to sub filter views
    @IBAction func studioButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "studios button 2")! as UIImage
        studioButton.setImage(image, for: UIControlState())
        resultsView.isHidden = false
        studioResults.isHidden = false
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = true
        retailResults.isHidden = true
        servicesResults.isHidden = true
        foodAndBevResults.isHidden = true
        communityResults.isHidden = true
    subFilterView.isHidden = false
        filterView.isHidden = true
    selectedAllButton.isHidden = false}
    @IBAction func retailButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "retail button 2")! as UIImage
        retailButton.setImage(image, for: UIControlState())
        resultsView.isHidden = false
        studioResults.isHidden = true
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = true
        retailResults.isHidden = false
        servicesResults.isHidden = true
        foodAndBevResults.isHidden = true
        communityResults.isHidden = true
        retailFilterView.isHidden = false
        filterView.isHidden = true
    selectedAllButton.isHidden = false}
    @IBAction func foodAndDrinkButtonDidTouch(_ sender: AnyObject){
        let image = UIImage(named: "food n bev button 2")! as UIImage
        foodnbevButton.setImage(image, for: UIControlState())
        resultsView.isHidden = false
        studioResults.isHidden = true
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = true
        retailResults.isHidden = true
        servicesResults.isHidden = true
        foodAndBevResults.isHidden = false
        communityResults.isHidden = true
        foodAndBeverageFilterView.isHidden = false
        filterView.isHidden = true
    selectedAllButton.isHidden = false}
    @IBAction func servicesButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "services button 2")! as UIImage
        servicesButton.setImage(image, for: UIControlState())
        resultsView.isHidden = false
        studioResults.isHidden = true
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = true
        retailResults.isHidden = true
        servicesResults.isHidden = false
        foodAndBevResults.isHidden = true
        communityResults.isHidden = true
        servicesFilterView.isHidden = false
        filterView.isHidden = true
    selectedAllButton.isHidden = false}
    @IBAction func communityButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "community button 2")! as UIImage
        communityButton.setImage(image, for: UIControlState())
        resultsView.isHidden = false
        studioResults.isHidden = true
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = true
        retailResults.isHidden = true
        servicesResults.isHidden = true
        foodAndBevResults.isHidden = true
        communityResults.isHidden = false
        communityFilterView.isHidden = false
        filterView.isHidden = true
        selectedAllButton.isHidden = false
        }
    
    //Switches back to Filter View
    @IBAction func studiosGoButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "yoga button 1")! as UIImage
        yogaButton.setImage(image, for: UIControlState())
        let image2 = UIImage(named: "cross fit button 1")! as UIImage
        crossFitButton.setImage(image2, for: UIControlState())
        resultsView.isHidden = false
        subFilterView.isHidden = true
        filterView.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = true}
    @IBAction func retailGoButtonDidTouch(_ sender: AnyObject) {
        resultsView.isHidden = false
        retailFilterView.isHidden = true
        filterView.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = true}
    @IBAction func foodGoButtonDidTouch(_ sender: AnyObject) {
        resultsView.isHidden = false
        foodAndBeverageFilterView.isHidden = true
        filterView.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = true}
    @IBAction func servicesGoButtonDidTouch(_ sender: AnyObject) {
        resultsView.isHidden = false
        servicesFilterView.isHidden = true
        filterView.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = true}
    @IBAction func communityGoButtonDidTouch(_ sender: AnyObject) {
        resultsView.isHidden = false
        communityFilterView.isHidden = true
        filterView.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = true}

    
    //Changes States for Studios Sub Filter
    @IBAction func didTouchYogaButton(_ sender: AnyObject) {
        let image = UIImage(named: "yoga button 2")! as UIImage
        yogaButton.setImage(image, for: UIControlState())
        studioResults.isHidden = true
        yogaResults.isHidden = false
    selectedAllButton.isHidden = true
    unselectedAllButton.isHidden = false}
    @IBAction func crossFitButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "cross fit button 2")! as UIImage
        crossFitButton.setImage(image, for: UIControlState())
        studioResults.isHidden = true
        yogaResults.isHidden = true
        yogaAndCrossfitResults.isHidden = false
        selectedAllButton.isHidden = true
        unselectedAllButton.isHidden = false}
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
        let image = UIImage(named: "community gardens button 2")! as UIImage
        communityGardensButton.setImage(image, for: UIControlState())}
    @IBAction func clubsButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "clubs button 2")! as UIImage
        clubsButton.setImage(image, for: UIControlState())}
    @IBAction func farmersMarketButtonDidTouch(_ sender: AnyObject) {
        let image = UIImage(named: "farmers markets button 2")! as UIImage
        farmersMarket.setImage(image, for: UIControlState())}
}

    

