//
//  ViewController.swift
//  CommentCardWriter
//
//  Created by Goad, William (PAH) on 11/02/2020.
//  Copyright © 2020 Goad, William (PAH). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let subjects = ["Physics", "Computer Science", "Maths"]

    @IBOutlet var strength: UITextField!
    
    @IBOutlet var weakness: UITextField!
    
    @IBOutlet var enjoy: UISegmentedControl!
    
    @IBOutlet var pace: UISegmentedControl!
    
    @IBOutlet var subject: UIPickerView!
    
    @IBOutlet var additional: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subject.dataSource = self
        subject.delegate = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        subjects.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subjects[row]
    }

    @IBAction func submit(_ sender: Any) {
        let finishedComment = CommentGenerator.generate(subject: subjects[subject.selectedRow(inComponent: 0)], levelOfEnjoyment: enjoy.selectedSegmentIndex, paceSatisfaction: pace.selectedSegmentIndex, weakness: weakness.text ?? "", strength: strength.text ?? "", additionalComments: additional?.text)
        
        print(finishedComment.content)
        
        guard let vc = storyboard?.instantiateViewController(identifier: "ShareScreenViewController", creator: { coder in
            return ShareScreenViewController(coder: coder, content: finishedComment.content)
        }) else {
            fatalError("Failed to load Share Screen ViewController from storyboard")
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

