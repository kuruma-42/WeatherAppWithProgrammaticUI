//
//  ViewController.swift
//  Weathery
//
//  Created by Yong Jun Cha on 2021/12/20.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let backgroundView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        style()
        layout()
    }

}

extension WeatherViewController {
    func style() {
        
        /*
         A Vector graphic is artword made up of points, lines, and curves
         that are based upon mathematical equations, rather than a solid colored square pixels.
         This means that no matter how large or small or how close you zoom in on the image,
         the lines, curves and points remain smooth.
         */
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "day-background")
        backgroundView.contentMode = .scaleAspectFill
    }
    
    func layout() {
        view.addSubview(backgroundView)
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


