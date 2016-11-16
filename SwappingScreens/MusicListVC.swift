//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by John on 11/16/16.
//  Copyright © 2016 jpclancy. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Quit Playing Games With My Heart"
        
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
           
        }
    }
}
