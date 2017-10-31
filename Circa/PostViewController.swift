//
//  PostViewController.swift
//  Circa
//
//  Created by Andy Walner on 10/29/17.
//  Copyright © 2017 Andy Walner. All rights reserved.
//

import UIKit
import Toucan

class PostViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // profileImage attributes
        profileImage.image = Toucan(image: #imageLiteral(resourceName: "fatJoe.png")).maskWithEllipse().image
        
        // nameLabel attributes
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
        
        // descriptionLabel attributes
        descriptionLabel.numberOfLines = 0
        descriptionLabel.adjustsFontSizeToFitWidth = true
        
        // timeLabel attributes
        timeLabel.numberOfLines = 1
        timeLabel.adjustsFontSizeToFitWidth = true
        
        // locationLabel attributes
        locationLabel.numberOfLines = 1
        locationLabel.adjustsFontSizeToFitWidth = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
