//
//  RulesVC.swift
//  CardWorkout-Programmatic-UIKit
//
//  Created by Kevin Mattocks on 7/28/23.
//

import UIKit

/*
 Segues are not used when creating programmatically. Mainly used for storyboard
 */

class RulesVC: UIViewController {
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        return titleLabel
    }()
    
    
    private let rulesLabel: UILabel = {
        let rulesLabel = UILabel()
        rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        return rulesLabel
    }()
    
    private let exerciseLabel: UILabel = {
        let exerciseLabel = UILabel()
        exerciseLabel.text = """
                            ♠️ = Push-ups
                            
                            ❤️ = Sit-up
                            
                            ♣️ = Burpees
                            
                            ♦️ = Jumping Jacks
                            """
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        return exerciseLabel
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
 

}
