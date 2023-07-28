//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic-UIKit
//
//  Created by Kevin Mattocks on 2/14/23.
//

import UIKit


//ViewController
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
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    
    // MARK: Things to do for card image view.
    // MARK: Things to know: Need to add a subview to the view
    func configureCardImageView(){
        //Adding the subview to the view. Equivalent is searching for the view and dragging it to the storyboard.
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false //Autolayout
        cardImageView.image = UIImage(named: "AS")
        
        
        //Programmatic constraints. 4 constraints per object
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
    
    
    
    // MARK: The order matters. Need to create the card image view so that you can pin the stop button to the bottom of the card image view
    // MARK: Stop button
    func configureStopButton() {
        view.addSubview(stopButton)
        //Dont need to add the TAMIC because the CWButton already has it in the configure
        
        //Set Constraints
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //TopAnchor- top of the stop button. And we are pinning it to the bottom of the card image view
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    
    // MARK: Reset Button
    func configureResetButton(){
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            
            //Lines up the reset button to the stop button with the anchor being leading. Meaning aligning to the leading of the stop button
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    // MARK: Rules Button
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func presentRulesVC() {
        //Not passing in data so we can initialize here
        present(RulesVC(), animated: true)
    }
    
    
    


}
