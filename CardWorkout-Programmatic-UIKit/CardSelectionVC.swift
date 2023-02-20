//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic-UIKit
//
//  Created by Kevin Mattocks on 2/14/23.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    
    
    // MARK: Creating the Buttons. We create a CWButton object
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop")
    let resetButton = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    
    
    func configureUI() {
        configureCardImageView()
    }
    
    
    // MARK: Things to do for card image view.
    // MARK: Things to know: Need to add a subview to the view
    func configureCardImageView(){
        //Adding the subview to the view. Equivalent is searching for the view and dragging it to the storyboard.
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false //Autolayout
        cardImageView.image = UIImage(named: "AS")
        
        
        //Programmatic constraints
        NSLayoutConstraint.activate([
            //Set width
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            //Set height
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            //Center image horizontally
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //Y-axis on the vertical line.
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    


}
