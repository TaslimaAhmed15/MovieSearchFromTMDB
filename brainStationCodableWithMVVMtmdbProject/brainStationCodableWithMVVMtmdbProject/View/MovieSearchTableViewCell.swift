//
//  MovieSearchTableViewCell.swift
//  brainStationCodableWithMVVMtmdbProject
//
//  Created by MacBook on 17/7/22.
//

import UIKit
           

class MovieSearchTableViewCell: UITableViewCell {
    var movie: Movie!
    var movies = [Movie]()
   

   
   

        @IBOutlet var movieTitleLabel: UILabel!
        @IBOutlet weak var movieOverview: UITextView!
        @IBOutlet var moviePosterImageView: UIImageView!
    
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

        static let identifier = "MovieSearchTableViewCell"

        static func nib() -> UINib {
            return UINib(nibName: "MovieSearchTableViewCell",
                         bundle: nil)
        }
    
    
    func configure(with movie:Movie){
       
        if let posterPath = movie.posterPath {
            TMDBClient.downloadPosterImage(path: posterPath) { data, error in
                guard let data = data else {
                    return
                }
                let image = UIImage(data: data)
                self.moviePosterImageView.image = image
            }
        }
        self.movieTitleLabel.text = movie.title
        self.movieOverview.text = movie.overview
    }
    
}
    
    



//
//    func configure(with model: Movie) {
//        self.movieTitleLabel.text = model.title
//        self.movieOverview.text = model.overview
//        //self.viewCell()
//
//
        
//              let url = movie.posterPath
//        if let data = TMDBClient.downloadPosterImage(path:posterPath) { data, error in
//        guard let data = data else {
//            return
//        }
//        let image = UIImage(data: data)
//                  self.moviePosterImageView.image = image
//    }
   //}

        //            self.moviePosterImageView.image = UIImage(data: data)
        //        }







//        let url = model.posterPath
//        if let data = try? Data(contentsOf: URL(string: url)!) {
//            self.moviePosterImageView.image = UIImage(data: data)
//        }

        
//        if let data = try? Data(contentsOf: URL(string: "https://image.tmdb.org/t/p/w500/")!){
//            self.moviePosterImageView.image = UIImage(data: data)
//
//        }
      

//override func awakeFromNib() {
//        super.awakeFromNib()
//    func canNotWork(with movie:Movie){
//
//        if let posterPath = movie.posterPath {
//            TMDBClient.downloadPosterImage(path: posterPath) { data, error in
//                guard let data = data else {
//                    return
//                }
//                let image = UIImage(data: data)
//                self.moviePosterImageView.image = image
//            }
//        }
//        self.movieTitleLabel.text = movie.title
//        self.movieOverview.text = movie.overview
//    }
//}
