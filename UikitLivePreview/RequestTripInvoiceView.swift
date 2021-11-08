//
//  RequestTripInvoiceView.swift
//  UikitLivePreview
//
//  Created by yassir on 24/10/2021.
//
import UIKit
class RequestTripInvoiceView : UIView {
    
    private let title : UILabel = {
        let TextLabel = UILabel()
        TextLabel.translatesAutoresizingMaskIntoConstraints = false
        TextLabel.textAlignment = .center
        TextLabel.textColor = .white
        TextLabel.text = "Pending"
        return TextLabel
    }()
    
    private let icon : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "emailIcon")
        return icon
    }()
    
    private let descriptionLabel : UILabel = {
        let TextLabel = UILabel()
        TextLabel.translatesAutoresizingMaskIntoConstraints = false
        TextLabel.textAlignment = .center
        TextLabel.textColor = .white
        TextLabel.text = "You’ll receive an email containing your ride details to the flollowing email address"
        TextLabel.numberOfLines = 3
        TextLabel.textAlignment = .center
        return TextLabel
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
        addSubview(title)
        addSubview(icon)
        addSubview(descriptionLabel)
        backgroundColor = .gray
    }

    private func layout() {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            icon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            icon.topAnchor.constraint(equalTo: title.bottomAnchor,constant: 50),
            descriptionLabel.topAnchor.constraint(equalTo: icon.bottomAnchor,constant: 16),
            descriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -16),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 16),


            
        ])
    }
}
