//
//  ViewController.swift
//  task5
//
//  Created by Gleb Tregubov on 13.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        button = UIButton()
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitle("Present", for: .normal)
        button.addTarget(self, action: #selector(handler(_:)), for: .touchUpInside)
        button.sizeToFit()
        button.center = CGPoint(x: view.bounds.midX, y: 100)
        view.addSubview(button)
    }

    @objc func handler(_ sender: UIButton) {
        let modal = ModalViewController()
        modal.modalPresentationStyle = .popover

        modal.popoverPresentationController?.delegate = self
        modal.popoverPresentationController?.permittedArrowDirections = .up
        modal.popoverPresentationController?.sourceView = sender
        
        self.present(modal, animated: true)
    }
}

extension ViewController: UIPopoverPresentationControllerDelegate {
    public func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        .none
    }
}


