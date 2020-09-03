//
//  ViewController.swift
//  UpDownGame
//
//  Created by Youngsik on 2020/09/02.
//  Copyright © 2020 Youngsik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider! // 스토리 보드에 연결된 요소 어노테이션.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Slider
   @IBAction func sliderValueChanged(_ sender: UISlider){
    print(sender.value)
    }
    // UIButton Action
   @IBAction func touchUpHitButton(_ sender: UIButton) {
    print(slider.value)
    }
    
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touch Up reset Button")
    }

}

