//
//  UILabel+LineSpacing.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/28/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import Foundation
import UIKit


extension UILabel {
    
    
    public func setLineSpacing(sender:UILabel, amt:CGFloat, align:String) {
        
        //line height size
        let paragraphStyle = NSMutableParagraphStyle()
        let title = sender.text
        print("SENDER TITLE: \(title)")
        
        paragraphStyle.lineSpacing = amt
        
        let attrString = NSMutableAttributedString(string:title!)
        
        attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        self.attributedText = attrString
        
        switch align {
        case "left":
            self.textAlignment = NSTextAlignment.left
            break
        case "center":
            self.textAlignment = NSTextAlignment.center
            break
        case "right":
            self.textAlignment = NSTextAlignment.right
            break
        default:
            self.textAlignment = NSTextAlignment.center
            break
        }
    }
    
    
    
   
    
}
