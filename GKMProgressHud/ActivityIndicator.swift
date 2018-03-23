//
//  ActivityIndicator.swift
//  ContactDemo
//
//  Created by Gaurav Macbook on 7/20/17.
//  Copyright © 2017 DecimalMacPro. All rights reserved.
//

import UIKit
import QuartzCore

public class ActivityIndicator: UIView {

   let titleLabel = UILabel()
   private var titleImage = UIImageView()
   private var willDismissOnTouch:Bool = false
    private let originView = UIView()
    override public func awakeFromNib() {
        
        super.awakeFromNib()
       
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    
    private let firstView: UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor(red: 236.0/255.0, green: 103.0/255.0, blue: 38.0/255.0, alpha: 1)
        return uv
    }()
    
    private let secondView: UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor(red: 236.0/255.0, green: 103.0/255.0, blue: 38.0/255.0, alpha: 1)
        return uv
    }()
    
    private let thirdView: UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor(red: 236.0/255.0, green: 103.0/255.0, blue: 38.0/255.0, alpha: 1)
        return uv
    }()
    
    private let fourthView: UIView = {
        let uv = UIView()
        uv.backgroundColor = UIColor(red: 236.0/255.0, green: 103.0/255.0, blue: 38.0/255.0, alpha: 1)
        return uv
    }()
    
    public class func showProgressBar(originView:UIView, title:String, imageNmae:String?)
    {
        let thisClass = ActivityIndicator()
        originView.isUserInteractionEnabled=false
        if let imageName=imageNmae
        {
            thisClass.titleImage.image = UIImage(named: imageName)
        }
        
        thisClass.startAnimating(originView: originView)
        thisClass.titleLabel.text=title
    }
    
   public class func showDismisableProgressBar(originView:UIView, title:String, imageNmae:String?)
    {
       
        let thisClass = ActivityIndicator()
        originView.isUserInteractionEnabled = true
        
        if let imageName=imageNmae
        {
            thisClass.titleImage.image = UIImage(named: imageName)
        }
        
        thisClass.startAnimating(originView: originView)
        thisClass.titleLabel.text=title
//        let tapGesture = UITapGestureRecognizer(target: thisClass, action: #selector(hideActivityFromTouch))
//        originView.addGestureRecognizer(tapGesture)
    }
    
  public  class func hideProgressBar(originView:UIView)
    {
         DispatchQueue.main.async {
        originView.isUserInteractionEnabled=true
       let progressBars = originView.subviews
        
        for i in progressBars
        {
            if(i.isKind(of: self))
            {
                
                i.removeFromSuperview()
            }
        }
        }
      
    }
    class func SetTitle(originView:UIView)
    {
        
        let thisClass = ActivityIndicator()
        
        thisClass.startAnimating(originView: originView)
        
    }
    
   private func startAnimating(originView:UIView)
    {
        self.createContainerView(parentView: originView)
        self.animateViews()
    }
    
   
    
   
    
    
  private  func createContainerView(parentView:UIView)
    {
        // Main Container
        
    let containerView = UIView(frame: CGRect(x: parentView.frame.origin.x, y: parentView.frame.origin.y, width: parentView.frame.width, height: parentView.frame.height))
        

        containerView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.3)
       
     
      
        self.isUserInteractionEnabled = true
        containerView.isUserInteractionEnabled = true
        self.addSubview(containerView)
        
        
//        let actionButton = UIButton(frame: CGRect(x: containerView.frame.origin.x-30, y: containerView.frame.origin.y-30, width: containerView.frame.width-40, height: containerView.frame.height-20))
//
//        actionButton.backgroundColor = .red
//        actionButton.addTarget(self, action: #selector(hideActivityFromAction(sender:)), for: .touchUpInside)
//        actionButton.isUserInteractionEnabled = true
//        containerView.addSubview(actionButton)

        // Sub Main Container

        let containerView2=UIView(frame: CGRect(x: 20, y: containerView.frame.height/2-75, width: containerView.frame.width-40, height: 150))
        containerView2.backgroundColor=UIColor.white
        containerView.addSubview(containerView2)
        containerView2.layer.cornerRadius=5
        containerView2.clipsToBounds=true
        containerView2.addSubview(titleLabel)

          // Adding titile image
        if titleImage.image != nil {

            containerView2.addSubview(titleImage)
            titleImage.translatesAutoresizingMaskIntoConstraints = false
            titleImage.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive=true
            titleImage.leadingAnchor.constraint(equalTo: containerView2.leadingAnchor, constant: 25).isActive = true
            titleImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
            titleImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
            titleImage.contentMode = .scaleAspectFit

             // Adding titile Lable

            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.topAnchor.constraint(equalTo: containerView2.topAnchor, constant: 25).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: titleImage.trailingAnchor, constant: 20).isActive = true
            titleLabel.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor, constant: -20).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
            titleLabel.numberOfLines = 3
            titleLabel.font=titleLabel.font.withSize(15)
            titleLabel.textAlignment = .center
            titleLabel.font=UIFont(name: "FiraSans-Regular", size:16.0)


        }

        else
        {
             // Adding titile Lable

            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.topAnchor.constraint(equalTo: containerView2.topAnchor, constant: 25).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: containerView2.leadingAnchor, constant: 20).isActive = true
            titleLabel.trailingAnchor.constraint(equalTo: containerView2.trailingAnchor, constant: -20).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
            titleLabel.numberOfLines = 3
            titleLabel.font=titleLabel.font.withSize(15)
            titleLabel.textAlignment = .center
            titleLabel.font=UIFont(name: "FiraSans-Regular", size:15.0)



        }







        // Adding views for animating

        containerView2.addSubview(firstView)
        containerView2.addSubview(secondView)
        containerView2.addSubview(thirdView)
        containerView2.addSubview(fourthView)




        secondView.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: -35).isActive = true
        secondView.trailingAnchor.constraint(equalTo: containerView2.centerXAnchor, constant: -3).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: 10).isActive=true
        secondView.widthAnchor.constraint(equalToConstant: 10).isActive=true

        firstView.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: -35).isActive = true
        firstView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: -5).isActive = true
        firstView.heightAnchor.constraint(equalToConstant: 10).isActive=true
        firstView.widthAnchor.constraint(equalToConstant: 10).isActive=true

        thirdView.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: -35).isActive = true
        thirdView.leadingAnchor.constraint(equalTo: containerView2.centerXAnchor, constant: 3).isActive = true
        thirdView.heightAnchor.constraint(equalToConstant: 10).isActive=true
        thirdView.widthAnchor.constraint(equalToConstant: 10).isActive=true

        fourthView.bottomAnchor.constraint(equalTo: containerView2.bottomAnchor, constant: -35).isActive = true
        fourthView.leadingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: 5).isActive = true
        fourthView.heightAnchor.constraint(equalToConstant: 10).isActive=true
        fourthView.widthAnchor.constraint(equalToConstant: 10).isActive=true

        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.layer.cornerRadius = 5
        firstView.clipsToBounds = true
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.layer.cornerRadius = 5
        secondView.clipsToBounds = true
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.layer.cornerRadius = 5
        thirdView.clipsToBounds = true
        fourthView.translatesAutoresizingMaskIntoConstraints = false
        fourthView.layer.cornerRadius = 5
        fourthView.clipsToBounds = true
        
        
        parentView.addSubview(self)


    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("touchesfdghjklg")
        self.removeFromSuperview()
    }
    func hideActivityFromAction(sender:UIButton)  {
         print("atrdyfugihojpkletrdyfughijokpl")
    }
    
    func hideActivityFromTouch(sender: UITapGestureRecognizer)
    {
       
       self.removeFromSuperview()
    }
    
   private func animateViews()
    {
        let viewArry=[firstView,secondView,thirdView,fourthView]
        
        for (index,myView) in viewArry.enumerated()
            
        {
            
            myView.layer.add(self.createAnimationSizeWithDelay(delay: CGFloat(index)*0.4), forKey: "scale")
            myView.layer.add(self.createAnimationColorWithDelay(delay: CGFloat(index)*0.4), forKey: "backgroundColor")
        }
    }
    
    private  func createAnimationSizeWithDelay(delay:CGFloat) -> CABasicAnimation {
        
        
        let animation=CABasicAnimation(keyPath: "transform.scale")
        animation.delegate=self as? CAAnimationDelegate
        animation.fromValue=0.9
        animation.toValue=1.3
        animation.autoreverses=true
        animation.duration=0.8
        animation.isRemovedOnCompletion=true
        animation.beginTime = CACurrentMediaTime()+Double(delay)
        animation.repeatCount=100000
        animation.timingFunction=CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        return animation
    }
   private func createAnimationColorWithDelay(delay:CGFloat) -> CABasicAnimation {
        
    
        let animation=CABasicAnimation(keyPath: "backgroundColor")
        animation.delegate=self as? CAAnimationDelegate
        animation.fromValue = UIColor(red: 236.0/255.0, green: 103.0/255.0, blue: 38.0/255.0, alpha: 1).cgColor
        animation.toValue = UIColor(red: 162.0/255.0, green: 42.0/255.0, blue: 34.0/255.0, alpha: 1).cgColor
        animation.autoreverses=true
        animation.duration=0.8
        animation.isRemovedOnCompletion=true
        animation.beginTime = CACurrentMediaTime()+Double(delay)
        animation.repeatCount=100000
        animation.timingFunction=CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        return animation
    }
    
}
