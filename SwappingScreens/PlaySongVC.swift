//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by John on 11/16/16.
//  Copyright © 2016 jpclancy. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    
    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLabel.text = _selectedSong
    }

}
