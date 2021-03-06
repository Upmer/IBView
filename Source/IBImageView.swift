//
//  IBImageView.swift
//  IBView
//
//  Created by tsuf on 2019/4/3.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

class IBImageView: UIImageView, IBCornerDesignable, IBShadowDesignable {
  
  @IBInspectable var cornerRadius: CGFloat = IBDefaultConfig.cornerRadius
  
  @IBInspectable var borderColor: UIColor? = nil
  @IBInspectable var borderWidth: CGFloat = IBDefaultConfig.borderWidth
  
  @IBInspectable var shadowOffset: CGSize = IBDefaultConfig.shadowOffset
  @IBInspectable var shadowColor: UIColor? = nil
  @IBInspectable var shadowOpacity: Float = IBDefaultConfig.shadowOpacity
  @IBInspectable var shadowRadius: CGFloat = IBDefaultConfig.shadowRadius
  
  override func didMoveToWindow() {
    super.didMoveToWindow()
    setCornerAndBorderConfiguration()
    setShadowConfiguration()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layoutSubLayer()
  }
}
