//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Александр Верповский on 09.02.2024.
//

import UIKit

class AlertPresenter: AlertPresenterProtocol {
    private weak var delegate: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.delegate = viewController
    }
    
    func showResult(model: AlertModel) {
        let alert = UIAlertController(title: model.title,
                                      message: model.message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: model.title, style: .default, handler: model.completion)
        alert.addAction(action)
        guard let viewController = delegate else { return }
        viewController.present(alert, animated: true)
    }
}
