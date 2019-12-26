//
//  ViewController.swift
//  iPhonePopover
//
//  Created by Mostafa on 12/26/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction private func buttonTapped(_ sender: UIButton) {
        let popoverVC = storyboard!.instantiateViewController(identifier: "popoverVC")
        popoverVC.modalPresentationStyle = .popover
        popoverVC.preferredContentSize = CGSize(width: sender.bounds.width, height: sender.bounds.width * 3)
        popoverVC.popoverPresentationController?.permittedArrowDirections = [.down]
        popoverVC.popoverPresentationController?.delegate = self
        popoverVC.popoverPresentationController?.sourceView = sender
        popoverVC.popoverPresentationController?.sourceRect = sender.bounds
        
        present(popoverVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}
