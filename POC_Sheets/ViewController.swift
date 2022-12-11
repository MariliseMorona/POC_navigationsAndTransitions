//
//  ViewController.swift
//  POC_Sheets
//
//  Created by Marilise Morona on 02/12/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var btnOne : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.layer.borderColor = UIColor(red: 0.69, green: 0.85, blue: 1.00, alpha: 1.00).cgColor
        btn.layer.borderWidth = 5
        return btn
    }()
    
    lazy var btnTwo : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.layer.borderColor = UIColor(red: 0.98, green: 0.74, blue: 0.88, alpha: 1.00).cgColor
        btn.layer.borderWidth = 5
        return btn
    }()
    
    lazy var btnThree : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .white
        btn.layer.borderColor = UIColor(red: 0.79, green: 0.87, blue: 0.70, alpha: 1.00).cgColor
        btn.layer.borderWidth = 5
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUp()
    }

    func setUp() {
        view.addSubview(btnOne)
        view.addSubview(btnTwo)
        view.addSubview(btnThree)
        constrants()
    }
    
    func constrants() {
        NSLayoutConstraint.activate([
            btnOne.bottomAnchor.constraint(equalTo: btnTwo.topAnchor, constant: -80),
            btnOne.heightAnchor.constraint(equalToConstant: 50),
            btnOne.widthAnchor.constraint(equalToConstant: 100),
            btnOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            btnTwo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            btnTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnTwo.heightAnchor.constraint(equalToConstant: 50),
            btnTwo.widthAnchor.constraint(equalToConstant: 100),
            
            btnThree.topAnchor.constraint(equalTo: btnTwo.bottomAnchor, constant: 80),
            btnThree.heightAnchor.constraint(equalToConstant: 50),
            btnThree.widthAnchor.constraint(equalToConstant: 100),
            btnThree.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

