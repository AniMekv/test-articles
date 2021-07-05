//
//  ProductCell.swift
//  Lecture 44
//
//  Created by Nika Kirkitadze on 30.06.21.
//

import UIKit
import Kingfisher

class ProductCell: UITableViewCell {
    
    // MARK: - Private properties
    
    @IBOutlet weak var imageViewProductCover: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageViewProductCover.layer.cornerRadius = 3
        imageViewProductCover.transform = CGAffineTransform(rotationAngle: -0.05)
    }
    
    // MARK: - Configuration ⚙️
    
    func configure(with item: Articles) {
        imageViewProductCover.kf.setImage(with: URL(string: item.urlToImage ?? ""))
        labelName.text = item.author
        labelDescription.text = item.content
    }
}
