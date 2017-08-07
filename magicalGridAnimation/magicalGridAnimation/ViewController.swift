//
//  ViewController.swift
//  magicalGridAnimation
//
//  Created by Puneet on 07/08/17.
//  Copyright © 2017 PuneetGupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numViewPerRow = 15
        let numViewPerColumn = 30
        let width = view.frame.width / CGFloat(numViewPerRow)
        //let height = view.frame.height / CGFloat(numViewPerColumn)
        //print("w",width)
        //print("h",height)
        
        for i in 0...numViewPerRow {
            for j in 0...numViewPerColumn {
                
            let cellView = UIView()
            cellView.backgroundColor = randomColor()
            cellView.frame = CGRect(x: CGFloat(i) * width, y:CGFloat(j)*width , width: width, height: width)
            cellView.layer.borderWidth = 0.5
            cellView.layer.borderColor = UIColor.black.cgColor
            view.addSubview(cellView)
            }
        }
        
        
        
    }
    fileprivate func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

