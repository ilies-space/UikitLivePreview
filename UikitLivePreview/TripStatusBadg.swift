//
//  TripStatusBadg.swift
//  UikitLivePreview
//
//  Created by yassir on 19/10/2021.
//
import UIKit
class TripStatusBadg : UIView {
    
    private let statusLabel : UILabel = {
        let TextLabel = UILabel()
        TextLabel.translatesAutoresizingMaskIntoConstraints = false
        TextLabel.textAlignment = .center
        TextLabel.textColor = .white
        return TextLabel
    }()
    
    private let icon : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
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
        self.layer.cornerRadius = 15
        addSubview(statusLabel)
        addSubview(icon)
        loadReservedStatus()
    }
    
    func loadPendingStatus()  {
        backgroundColor = .orange
        icon.image = UIImage(named: "pendingIcon")
        statusLabel.text = "Pending"
    }
    func loadReservedStatus()  {
        backgroundColor = .blue
        icon.image = UIImage(named: "reservedIcon")
        statusLabel.text = "Reserved"
    }

    private func layout() {
        NSLayoutConstraint.activate([
            statusLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor,constant: 12),
            statusLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -12),
            statusLabel.centerYAnchor.constraint(equalTo: icon.centerYAnchor),
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 12),
            icon.topAnchor.constraint(equalTo: self.topAnchor,constant: 6),
            icon.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -6),
        ])
    }
}
