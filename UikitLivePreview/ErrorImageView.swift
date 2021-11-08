//
//  ErrorImageView.swift
//  UikitLivePreview
//
//  Created by yassir on 2/11/2021.
//
import UIKit
class ErrorImageView : UIView {
    
    private let icon : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return icon
    }()
    
    

    
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            
            UIColor(red: 0.859, green: 0.173, blue: 0.345, alpha: 0.1).cgColor,

            UIColor(red: 0.859, green: 0.173, blue: 0.345, alpha: 0).cgColor

          ]
        gradientLayer.locations = [0.0, 0.5]
        gradientLayer.frame = CGRect(x: -4, y: -5, width: 40, height: 40)
        gradientLayer.cornerRadius = 20
                
        self.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setup() {
//        self.layer.cornerRadius = frame.size.width / 2
        addSubview(icon)
//        setGradientBackground()

        
        
        loadPendingStatus()
    }
    
    func loadPendingStatus()  {
        backgroundColor = .orange
        icon.image = UIImage(named: "pendingIcon")
    }
    func loadReservedStatus()  {
        backgroundColor = .blue
        icon.image = UIImage(named: "reservedIcon")
    }
    


    private func layout() {
        NSLayoutConstraint.activate([
            icon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}

