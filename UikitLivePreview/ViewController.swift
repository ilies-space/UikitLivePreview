//
//  ViewController.swift
//  UikitLivePreview
//
//  Created by ilies on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let TextLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TextLabel.text = "Hello World , This is a real time UIkit Preview test"
        TextLabel.translatesAutoresizingMaskIntoConstraints = false
        TextLabel.numberOfLines = 2
        TextLabel.textAlignment = .center
        view.addSubview(TextLabel)

        NSLayoutConstraint.activate([
            TextLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            TextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            TextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

#if DEBUG

import SwiftUI

struct ViewController_Preview: PreviewProvider {
    static var previews: some View = Preview(
        for: ViewController()
    )
}

#endif
