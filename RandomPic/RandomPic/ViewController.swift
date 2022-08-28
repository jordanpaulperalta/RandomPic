//
//  ViewController.swift
//  RandomPic
//
//  Created by Jordan Paul on 2022-08-14.
//

import UIKit

class ViewController: UIViewController, UIApplicationDelegate {
    @IBOutlet weak var imageHolder: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    let imageArray = ["car1.jpg","car2.jpg","car3.jpg","car4.jpg","car5.jpg","car6.jpg"]
    @IBAction func randomBtn(_ sender: UIButton) {
        showMe()
    }
    private func randomImage() -> UIImage {
        let random = Int(arc4random_uniform(UInt32(imageArray.count)))
                guard let image = UIImage(named: imageArray[random]) else { fatalError() }
                return image
            }
    private func showMe(){
        imageHolder.image = randomImage()
    }
}
