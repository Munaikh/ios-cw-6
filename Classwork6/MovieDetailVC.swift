//
//  MovieDetailVC.swift
//  Classwork6
//
//  Created by Abdullah Almunaikh on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MarvelMovieDetails()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var mImage: UIImageView!
    
    
    @IBOutlet weak var mName: UINavigationItem!
    
    
    @IBOutlet weak var mRating: UILabel!
    @IBOutlet weak var mRated: UILabel!
    @IBOutlet weak var mRelease: UILabel!
    
    
    @IBOutlet weak var actorImage1: UIImageView!
    @IBOutlet weak var actorName1 : UILabel!
    
    @IBOutlet weak var actorImage2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    
    @IBOutlet weak var actorImage3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBG: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    
    
    func MarvelMovieDetails(){
       
        mName.title = selectedMovie.movieName
       
        self.mImage.image = UIImage(named: selectedMovie.movieName)
       
        self.mRated.text = String(selectedMovie.rating)
        self.mRating.text = selectedMovie.pgRating
        self.mRelease.text = String(selectedMovie.movieReleaseDate)
        
        self.actorImage1.image = UIImage(named: selectedMovie.actors[0])
        self.actorName1.text = selectedMovie.actors[0]
        
        self.actorImage2.image = UIImage(named: selectedMovie.actors[1])
        self.actorName2.text = selectedMovie.actors[1]
        
        self.actorImage3.image = UIImage(named: selectedMovie.actors[2])
        self.actorName3.text = selectedMovie.actors[2]

    }
    
    
    func configureUI(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
