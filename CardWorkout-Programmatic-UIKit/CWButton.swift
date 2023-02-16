//
//  CWButton.swift
//  CardWorkout-Programmatic-UIKit
//
//  Created by Kevin Mattocks on 2/16/23.
//

import UIKit

class CWButton: UIButton {
    
    
    //Get all normal UI from UIButton, but overriding it, we add extra stuff we want it to do with configure()
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    //This is geared towards a button in Storyboard but we don't have a Storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
    
    

    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false //This line here means Auto Layout
        
    }

}
