//
//  ArtistDetailViewController.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class ArtistDetailViewController: UIViewController {
    
    var passedArtist:Artist?
    @IBOutlet weak var ivArtist: UIImageView!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var tvBio: UITextView!
    @IBOutlet weak var btnFavourites: UIButton!
    @IBOutlet weak var lblPerfDay: UILabel!
    @IBOutlet weak var lblPerfTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivArtist.image = UIImage.init(named: passedArtist!.artistImage)
        lblGenre.text = passedArtist!.genre
        tvBio.text = passedArtist!.bio
        if passedArtist?.perfDay == 1{
            lblPerfDay.text = "Fishy Friday"
        }else{
            lblPerfDay.text = "Shrimpy Saturday"
        }
        lblPerfTime.text = passedArtist?.perfTime
    }
    
    @IBAction func btnFavouritesPressed() {
        if btnFavourites.isSelected == false{
            Favourites.sharedInstance.addArtist(artist: passedArtist!)
            btnFavourites.isSelected = true
        }else{
            btnFavourites.isSelected = false
        }
    }
}

