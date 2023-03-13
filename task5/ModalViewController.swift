//
//  ModalViewController.swift
//  task5
//
//  Created by Gleb Tregubov on 13.03.2023.
//

import UIKit

class ModalViewController: UIViewController {
    
    var segmentView: UISegmentedControl!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray3
        preferredContentSize = CGSize(width: 300, height: 280)
        
        segmentView = UISegmentedControl(items: ["280pt", "150pt"])
        segmentView.tintColor = .systemBlue
        segmentView.sizeToFit()
        segmentView.center = CGPoint(x: view.bounds.midX, y: 20)
        segmentView.selectedSegmentIndex = 0
        segmentView.setAction(UIAction(title: "280pt", handler: { _ in
            UIView.animate(withDuration: 0.2) {
                self.preferredContentSize = CGSize(width: 300, height: 280)
            }
        }), forSegmentAt: 0)
        
        segmentView.setAction(UIAction(title: "150pt", handler: { _ in
            UIView.animate(withDuration: 0.2) {
                self.preferredContentSize = CGSize(width: 300, height: 150)
            }
        }), forSegmentAt: 1)
        
        view.addSubview(segmentView)
        
        button = UIButton(primaryAction: UIAction(handler: { _ in
            self.dismiss(animated: true)
        }))
        button.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        button.tintColor = .systemGray
        
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        segmentView.sizeToFit()
        segmentView.center = CGPoint(x: view.bounds.midX, y: 35)
        button.sizeToFit()
        button.center = CGPoint(x: view.bounds.width - button.bounds.midX - 5, y: 35)
    }

}
