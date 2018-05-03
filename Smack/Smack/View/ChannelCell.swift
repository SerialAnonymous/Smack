//
//  ChannelCell.swift
//  Smack
//
//  Created by Nayan Jariwala on 25/04/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    //Outlets
    
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected{
            self.layer.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.1955265411)
        }else{
            self.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        }
    }
    
    func configureCell(channel : Channel){
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
    }

}
