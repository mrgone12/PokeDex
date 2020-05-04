//
//  EvolutionView.swift
//  Pokedex
//
//  Created by Piotr on 22/03/2020.
//  Copyright © 2020 Piotr. All rights reserved.
//

import UIKit

class EvolutionView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var stackViewHeight: NSLayoutConstraint!
    @IBOutlet weak var pokemonNamesStackView: UIStackView!
    @IBOutlet weak var evolutionStackView: UIStackView!
    @IBOutlet weak var levelsStackView: UIStackView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
           Bundle.main.loadNibNamed("EvolutionView", owner: self, options: nil)
           addSubview(contentView)
           contentView.frame = self.bounds
           contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
