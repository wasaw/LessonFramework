//
//  HomeViewController.swift
//  LessonSeventeen
//
//  Created by Александр Меренков on 12.12.2022.
//

import UIKit
import OtusHomework

public final class HomeViewController: UIViewController {
    
//    MARK: - Properties
    
    let subView = UIView()
    let randomColorButton: UIButton = {
            let btn = UIButton(type: .system)
            btn.setTitle("Рандомный цвет", for: .normal)
            btn.setTitleColor(.gray, for: .normal)
            btn.backgroundColor = .systemPurple
            btn.layer.borderWidth = 0.7
            btn.layer.cornerRadius = 12
        btn.addTarget(self, action: #selector(handleRandomColorButton), for: .touchUpInside)
            return btn
        }()

//    MARK: - Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
}

//  MARK: - Extensions

private extension HomeViewController {
    func configureUI() {
        view.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 3).isActive = true
        subView.topAnchor.constraint(equalTo: view.topAnchor, constant: 3).isActive = true
        subView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -3).isActive = true
        subView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -3).isActive = true
        subView.backgroundColor = .yellow
        
        subView.addSubview(randomColorButton)
        randomColorButton.translatesAutoresizingMaskIntoConstraints = false
        randomColorButton.centerXAnchor.constraint(equalTo: subView.centerXAnchor).isActive = true
        randomColorButton.heightAnchor.constraint(equalToConstant: 47).isActive = true
        randomColorButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        randomColorButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32).isActive = true
    }
    
//    MARK: - Selectors
        
    @objc func handleRandomColorButton() {
        print("DEBUG: handleRandomColorButton")
        let red = CGFloat.random(in: 0...255)
        let green = CGFloat.random(in: 0...255)
        let blue = CGFloat.random(in: 0...255)
        let color = UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: 1)
        subView.backgroundColor = color
    }
}

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView? {
        return view
    }
    
    public var squareViewController: UIViewController? {
        return nil
    }
}

