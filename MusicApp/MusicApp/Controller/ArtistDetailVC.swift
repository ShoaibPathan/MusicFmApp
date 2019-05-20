//
//  ArtistDetailVC.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

import UIKit

class ArtistDetailVC: UIViewController {

    var imageURL : String = ""
    var artistName : String = ""
    var listnerCount : String = ""
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var artistNameTextField: UILabel!
    
    @IBOutlet weak var listnersTextField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImageWith(imageURL: imageURL)
        artistNameTextField.text = artistName
        listnersTextField.text = listnerCount
      
        
        // Do any additional setup after loading the view.
    }
    func loadImageWith( imageURL: String)  {
        ImageManger.shared.fetchImage(imageURL) { (image) in
            DispatchQueue.main.async {
                self.imageView?.image = image
               
            }
            
        }
    }
    

}
