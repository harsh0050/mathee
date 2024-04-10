//
//  BirthdayCharadesViewController.swift
//  Mathee
//
//  Created by Harsh Bhikadiya on 11/04/24.
//  Copyright © 2024 Daniel Springer. All rights reserved.
//

import UIKit

class BirthdayCharadesViewController : UIViewController{
    
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var middleButton: UIButton!
    
    // MARK: Properties

    var myTitle: String!
    var myThemeColor: UIColor!
    
    var trickTexts : [String]!
    var currentTextIdx = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if CommandLine.arguments.contains("--matheeScreenshots") {
            UIView.setAnimationsEnabled(false)
        }

        middleButton.removeTarget(nil, action: nil, for: .allEvents)
        middleButton.addTarget(self, action: #selector(showNextText), for: .touchUpInside)
        middleButton.setTitleNew(Const.okMessage)

        self.title = self.myTitle
        setThemeColorTo(myThemeColor: myThemeColor)

        configureTrickTexts()
        headerLabel.text = trickTexts[self.currentTextIdx]
    }
    
    func configureTrickTexts(){
        let currentDate = Date()
        let calender = Calendar.current
        let currentYear = calender.component(.year, from: currentDate)
        
        let addIfBirthdayGone = 1770 + currentYear - 2020
        let addIfBirthdayComing = addIfBirthdayGone - 1
        
        self.trickTexts = [
            "Pick the number of days a week that you would like to go out (1-7).",
            "Multiply this number by 2.", "Add 5", "Multiply the new total by 50.",
            "If you have already had your birthday this year, add \(addIfBirthdayGone). If not, add \(addIfBirthdayComing).",
            "Subtract the four digit year that you were born.",
            """
                You should have a three-digit number.
            
                The first digit of this number was the number of days you want to go out each week (1-7).
            
                The last two digits are your age.
            """
        ]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        middleButton.doGlowAnimation(withColor: myThemeColor)
    }


    @objc func showNextText(){
        self.currentTextIdx += 1
        if(self.currentTextIdx >= self.trickTexts.count){
            done()
        }else{
            self.headerLabel.text = trickTexts[self.currentTextIdx]
        }
    }
    
    
    @objc func done() {
        navigationController?.popToRootViewController(animated: true)
    }
}
