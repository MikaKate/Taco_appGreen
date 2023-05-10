//
//  SliderManager.swift
//  esercizio
//
//  Created by Micaela on 29/04/23.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var ForYouView: UIView!
    @IBOutlet weak var MoreView: UIView!
    @IBOutlet weak var ViewButton: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()

            // Aggiungi il target del bottone
        ViewButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    
    @objc func buttonTapped() {
            // Mostra o nascondi la view
        ForYouView.isHidden = !ForYouView.isHidden
        }
}
