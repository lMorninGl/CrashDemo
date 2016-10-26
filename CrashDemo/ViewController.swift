//
//  ViewController.swift
//  CrashDemo
//
//  Created by Alexey Bondarchuk on 10/26/16.
//  Copyright © 2016 Faifly, LLC. All rights reserved.
//

import UIKit
import SwiftyFORM

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func populate(_ builder: FormBuilder) {
        
        
        builder += topTitle
        
        builder += projectNumber
        builder += spaceView
        //-----
        builder += propertyName
        builder += spaceView
        //-----
        builder += unitNumber
        //-----
        //-----
        builder += formTitle
        builder += ownerDatePicker
        builder += spaceView
        //-----
        builder += ownerRepName
        builder += spaceView
        //-----
        builder += ownerSignature
        builder += spaceView
        //-----
        builder += katerraDatePicker
        builder += spaceView
        //-----
        builder += katerraRepName
        builder += spaceView
        //-----
        builder += katerraSignature
        builder += spaceView
        //-----
        builder += submit
    }
    
    //MARK: - BUILDER -
    
    lazy var spaceView: SectionHeaderViewFormItem = {
        
        let headerView = SectionHeaderViewFormItem()
        headerView.viewBlock = {
            return InfoView(frame: CGRect(x: 0, y: 0, width: 100, height: 2), text: " ")
        }
        return headerView
    } ()
    
    lazy var projectNumber: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Project Number"
            
            cell.textDidChangeBlock = { [weak self] value in
                
            }
            return cell
        }
        return instance
    }()
    
    lazy var propertyName: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Property Name"
            
            cell.textDidChangeBlock = { [weak self] value in
                
            }
            return cell
        }
        return instance
    }()
    
    lazy var unitNumber: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Unit Number"
            
            cell.textDidChangeBlock = { [weak self] value in
                
            }
            return cell
        }
        return instance
    }()
    
    lazy var topTitle: SectionHeaderTitleFormItem = {
        let instance = SectionHeaderTitleFormItem()
        instance.title = "I HEREBY CERTIFY THAT THE AGREED UPON SCOPE OF WORK HAS BEEN SATISFIED, AND I AM ACCEPTING THE TURNOVER OF THIS UNIT."
        return instance
    }()
    
    lazy var formTitle: SectionHeaderTitleFormItem = {
        let instance = SectionHeaderTitleFormItem()
        instance.title = "FORM SIGNATURE"
        return instance
    }()
    
    lazy var ownerRepName: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Owners Rep Name"
            
            cell.textDidChangeBlock = { [weak self] value in
                
            }
            return cell
        }
        return instance
    }()
    
    lazy var ownerSignature: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Signature"
            
            return cell
        }
        
        return instance
    }()
    
    lazy var ownerDatePicker: DatePickerFormItem = {
        let instance = DatePickerFormItem()
        instance.title = "Date of Signing"
        instance.datePickerMode = .date
        instance.behavior = .collapsed
        
        instance.valueDidChangeBlock = { [weak self] _ in
            
        }
        
        return instance
    }()
    
    
    lazy var katerraDatePicker: DatePickerFormItem = {
        let instance = DatePickerFormItem()
        instance.title = "Date of Signing"
        instance.datePickerMode = .date
        instance.behavior = .collapsed
        
        instance.valueDidChangeBlock = { [weak self] _ in
        
        }
        
        return instance
    }()
    
    lazy var katerraRepName: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Katerra Rep Name"
            
            cell.textDidChangeBlock = { [weak self] value in
            
            }
            return cell
        }
        return instance
    }()
    
    lazy var katerraSignature: CustomFormItem = {
        
        let instance = CustomFormItem()
        
        instance.createCell = { _ in
            let cell = try TextTVC.createCell()
            cell.title.text = "Signature"
            
            return cell
        }
        
        return instance
    }()
    
    lazy var submit: ButtonFormItem = {
        let instance = ButtonFormItem()
        instance.title("Submit")
        
        instance.action = { [weak self] in
            self?.submitForm()
        }
        
        return instance
    }()
    
    func submitForm() {
        
    }
    
}
