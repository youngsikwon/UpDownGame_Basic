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
    
    func showAlert(message: String){
        
        let alert = UIAlertController(title: nil,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
                                        self.reset()
        }
        
        alert.addAction(okAction)
        present(alert,
                animated: true,
                completion: nil)
    }
    
    //Slider
   @IBAction func sliderValueChanged(_ sender: UISlider){
    print(sender.value)
    let integerValue: Int = Int(sender.value)
    sliderValueLabel.text = String(integerValue)
}
    // UIButton Action
   @IBAction func touchUpHitButton(_ sender: UIButton) {
    print(slider.value)
    let hitValue: Int = Int(slider.value)
    slider.value = Float(hitValue)
    
    
    tryCount = tryCount + 1
    tryCountLabel.text = "\(tryCount) / 5"
    
    if randomValue == hitValue {
        showAlert(message: "YOU HIT!!")
        reset()
    } else if tryCount >= 5 {
       showAlert(message: "YOU lose...")
        reset()
    } else if randomValue > hitValue {
        slider.minimumValue = Float(hitValue)
        minimumValueLabel.text = String(hitValue)
        
    } else {
        slider.maximumValue = Float(hitValue)
        maximumValueLabel.text = String(hitValue)
    }
    
}
    
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touch Up reset Button")
        reset()
    }
    
    @IBAction func reset(){
        print("reseåt!")
        randomValue = Int.random(in: 0...30) // ...은 범위 연산자의 일종
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"

    }

}

