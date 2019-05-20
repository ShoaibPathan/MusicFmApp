//
//  AlbumDetailVC.swift
//  MusicApp
//
//  Created by shohib mohammed pathan on 20/05/19.
//  Copyright © 2019 AppKrafting. All rights reserved.
//

import UIKit

class AlbumDetailVC: UIViewController {

    
    var imageURL : String = ""
    var albumName : String = ""
    var artistName : String = ""

    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var albumNameTextField: UILabel!
    
    @IBOutlet weak var artistNameTextField: UILabel!
    override func viewDidLoad() {
        
    
            
            super.viewDidLoad()
            loadImageWith(imageURL: imageURL)
            albumNameTextField.text = albumName
            artistNameTextField.text = artistName
            
            // Do any additional setup after loading the view.
        }
        func loadImageWith( imageURL: String)  {
            ImageManger.shared.fetchImage(imageURL) { (image) in
                DispatchQueue.main.async {
                    self.imageView?.image = image
                    
                }
                
            }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
