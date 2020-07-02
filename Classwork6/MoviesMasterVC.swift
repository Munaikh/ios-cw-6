//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by Abdullah Almunaikh on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie: Movie = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")




class MoviesMasterVC: UIViewController {

    var marvelimages = MarvelMovieData
    var dcimages = DCMovieData

   
    
    @IBOutlet weak var marvelImage0: UIButton!
    @IBOutlet weak var marvelImage1: UIButton!
    @IBOutlet weak var marvelImage2: UIButton!
    @IBOutlet weak var marvelImage3: UIButton!
    @IBOutlet weak var marvelImage4: UIButton!
    @IBOutlet weak var marvelImage5: UIButton!
    
    @IBOutlet weak var dcImage0: UIButton!
    @IBOutlet weak var dcImage1: UIButton!
    @IBOutlet weak var dcImage2: UIButton!
    @IBOutlet weak var dcImage3: UIButton!
    @IBOutlet weak var dcImage4: UIButton!
    @IBOutlet weak var dcImage5: UIButton!

    
    func setMarvelImages() {
        marvelImage0.setBackgroundImage(UIImage(named: marvelimages[0].movieName), for: .normal)
        marvelImage1.setBackgroundImage(UIImage(named: marvelimages[1].movieName), for: .normal)
        marvelImage2.setBackgroundImage(UIImage(named: marvelimages[2].movieName), for: .normal)
        marvelImage3.setBackgroundImage(UIImage(named: marvelimages[3].movieName), for: .normal)
        marvelImage4.setBackgroundImage(UIImage(named: marvelimages[4].movieName), for: .normal)
        marvelImage5.setBackgroundImage(UIImage(named: marvelimages[5].movieName), for: .normal)

    }
    
    func setDCImages() {
        dcImage0.setBackgroundImage(UIImage(named: dcimages[0].movieName), for: .normal)
        dcImage1.setBackgroundImage(UIImage(named: dcimages[1].movieName), for: .normal)
        dcImage2.setBackgroundImage(UIImage(named: dcimages[2].movieName), for: .normal)
        dcImage3.setBackgroundImage(UIImage(named: dcimages[3].movieName), for: .normal)
        dcImage4.setBackgroundImage(UIImage(named: dcimages[4].movieName), for: .normal)
        dcImage5.setBackgroundImage(UIImage(named: dcimages[5].movieName), for: .normal)

    }

     override func viewDidLoad() {
        super.viewDidLoad()

         setDCImages()
        setMarvelImages()
    }
    
    
    
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "detail", sender: nil)
        
    }
    
    
    
    @IBAction func DCBtns(_ sender: UIButton) {
        
        
        
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "detail", sender: nil)

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
