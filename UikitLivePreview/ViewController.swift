//
//  ViewController.swift
//  UikitLivePreview
//
//  Created by ilies on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let TextLabel = UILabel()
    
    let requestTripInvoiceView : UIView = {
        let requestTripInvoiceView = RequestTripInvoiceView()
        requestTripInvoiceView.translatesAutoresizingMaskIntoConstraints = false
        return requestTripInvoiceView
    }()
    
    let errorImageView : ErrorImageView = {
        let errorImageView = ErrorImageView()
        errorImageView.translatesAutoresizingMaskIntoConstraints = false
        
        errorImageView.clipsToBounds = true

        print(errorImageView.bounds.width)
        
        return errorImageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TextLabel.text = "Hello World , This is a real time UIkit Preview test"
        TextLabel.translatesAutoresizingMaskIntoConstraints = false
        TextLabel.numberOfLines = 2
        TextLabel.textAlignment = .center
        

//        view.addSubview(TextLabel)
        
        
//        view.addSubview(requestTripInvoiceView)
        
        view.addSubview(errorImageView)

        

//        NSLayoutConstraint.activate([
//            requestTripInvoiceView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            requestTripInvoiceView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            requestTripInvoiceView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            requestTripInvoiceView.heightAnchor.constraint(equalToConstant: 400)
//        ])

        NSLayoutConstraint.activate([
            errorImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35, constant: -32),
            errorImageView.heightAnchor.constraint(equalTo: errorImageView.widthAnchor),
            errorImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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


