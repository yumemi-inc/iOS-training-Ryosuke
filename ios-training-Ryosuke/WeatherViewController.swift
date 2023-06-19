//
//  ViewController.swift
//  ios-training-Ryosuke
//
//  Created by 須崎 良祐 on 2023/06/12.
//

import UIKit
import YumemiWeather
class ViewController: UIViewController {
    
    @IBOutlet private weak var weatherImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func close(_ sender: Any) {
        let blackVC = BlackViewController()
        blackVC.modalPresentationStyle = .fullScreen
        self.present(blackVC, animated: true, completion: nil)
    }
    
    @IBAction private func reload(_ sender: Any) {
        var weather: String = ""
        weather = YumemiWeather.fetchWeatherCondition()
        weatherImage.image = UIImage(named: weather)?.withRenderingMode(.alwaysTemplate)
        if weather == "sunny" {
            weatherImage.tintColor = .red
        } else if weather == "cloudy" {
            weatherImage.tintColor = .gray
        } else if weather == "rainy" {
            weatherImage.tintColor = .blue
        }
    }
}
