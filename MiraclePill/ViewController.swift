//
//  ViewController.swift
//  MiraclePill
//
//  Created by Matt Tripodi on 4/26/17.
//  Copyright © 2017 Matt Tripodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

	// IBOutlets
	@IBOutlet weak var statePicker: UIPickerView!
	@IBOutlet weak var statePickerBtn: UIButton!
	
	@IBOutlet weak var zipCodeLabel: UILabel!
	@IBOutlet weak var zipCodeTextField: UITextField!
	@IBOutlet weak var countryLabel: UILabel!
	@IBOutlet weak var countryTextField: UITextField!
	@IBOutlet weak var buyNowBtn: UIButton!
	@IBOutlet weak var stateLabel: UILabel!
	@IBOutlet weak var cityTextField: UITextField!
	@IBOutlet weak var cityLabel: UILabel!
	@IBOutlet weak var addressTextField: UITextField!
	@IBOutlet weak var streetAddressLabel: UILabel!
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var priceLabel: UILabel!
	@IBOutlet weak var miraclePillsLabel: UILabel!
	@IBOutlet weak var pillImage: UIImageView!
	
	@IBOutlet weak var successImage: UIImageView!
	
	let states = ["Alaska", "Arkansas", "Alabama", "New York", "California", "Maine"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		statePicker.dataSource = self
		statePicker.delegate = self
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func stateBtnPressed(_ sender: Any) {
		
		statePicker.isHidden = false
		
	}
	
	@IBAction func buyNowBtnPressed(_ sender: Any) {
		
		successImage.isHidden = false
		
		statePicker.isHidden = true
		statePickerBtn.isHidden = true
		zipCodeLabel.isHidden = true
		zipCodeTextField.isHidden = true
		countryLabel.isHidden = true
		countryTextField.isHidden = true
		buyNowBtn.isHidden = true
		stateLabel.isHidden = true
		cityLabel.isHidden = true
		cityTextField.isHidden = true
		addressTextField.isHidden = true
		streetAddressLabel.isHidden = true
		nameLabel.isHidden = true
		nameTextField.isHidden = true
		priceLabel.isHidden = true
		miraclePillsLabel.isHidden = true
		pillImage.isHidden = true 
		
	}
	
	
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return states.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return states[row]
	}
	
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		
		statePickerBtn.setTitle(states[row], for: UIControlState.normal)
		statePicker.isHidden = true 
	}
	
}

