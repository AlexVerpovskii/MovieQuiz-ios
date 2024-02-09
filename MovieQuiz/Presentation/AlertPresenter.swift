//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Александр Верповский on 09.02.2024.
//

import UIKit

class AlertPresenter {
    weak var viewController: MovieQuizViewController?
    
    init(viewController: MovieQuizViewController? = nil) {
        self.viewController = viewController
    }
    
    func showResult(model: AlertModel) {
        let alert = UIAlertController(title: model.title,
                                      message: model.message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: model.title, style: .default, handler: model.completion)
        alert.addAction(action)
        guard let viewController = viewController else { return }
        viewController.present(alert, animated: true)
    }
}
