//
//  HomeViewController.swift
//  LessonSeventeen
//
//  Created by Александр Меренков on 12.12.2022.
//

import UIKit
import SnapKit
import OtusHomework

public class HomeViewController: UIViewController {
    
//    MARK: - Properties
    
    let randomColorButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Рандомный цвет", for: .normal)
        btn.setTitleColor(.gray, for: .normal)
        btn.backgroundColor = .white
        btn.layer.borderWidth = 0.7
        btn.layer.cornerRadius = 12
        btn.addTarget(self, action: #selector(handleRandomColorButton), for: .touchUpInside)
        return btn
    }()

//    MARK: - Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(randomColorButton)
        randomColorButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(32)
            make.trailing.equalToSuperview().offset(-32)
            make.height.equalTo(55)
        }
    }

//    MARK: - Selectors
    
    @objc private func handleRandomColorButton() {
        var red = CGFloat.random(in: 0...255)
        var green = CGFloat.random(in: 0...255)
        var blue = CGFloat.random(in: 0...255)
        var color = UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: 1)
        view.backgroundColor = color
    }
}

//  MARK: - Extensions

extension HomeViewController: HasOtusHomeworkView {
    public var squareView: UIView? {
        return view
    }
    
    public var squareViewController: UIViewController? {
        return nil
    }
}

