//
//  QuizWireframe.swift
//  Code Quiz
//
//  Created by Felipe on 02/09/19.
//  Copyright (c) 2019 Felipe de Lara. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class QuizWireframe: BaseWireframe {

    // MARK: - Private properties -
    
    private let storyboard = UIStoryboard(name: "Quiz", bundle: nil)

    // MARK: - Module setup -
    
    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: QuizViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = QuizInteractor()
        let presenter = QuizPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }
}

// MARK: - Extensions -

extension QuizWireframe: QuizWireframeInterface {

}
