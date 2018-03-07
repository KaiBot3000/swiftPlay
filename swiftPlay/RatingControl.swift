//
//  RatingControl.swift
//  swiftPlay
//
//  Created by kai on 3/7/18.
//  Copyright © 2018 kai. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    

    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed")
    }

    // MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = UIColor.red
        
            // Turn off autoconstraints and create our own
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
            // Setup button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)

            // Add button to stack
            addArrangedSubview(button)
            
            // Add to button array
            ratingButtons.append(button)
        }
    }
}
