//
//  ViewController.swift
//  UpDownGame
//
//  Created by Youngsik on 2020/09/02.
//  Copyright © 2020 Youngsik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    
    @IBOutlet weak var slider: UISlider! // 스토리 보드에 연결된 요소 어노테이션.
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //slider.setThumbImage(#imageLiteral(resourceName: T##String), for: .normal) //이미지 넣기
        reset()
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
        reset()
    }
    
    @IBAction func reset(){
        print("reseåt!")
        randomValue = Int.random(in: 0...30) // ...은 범위 연산자의 일종
    }

}

