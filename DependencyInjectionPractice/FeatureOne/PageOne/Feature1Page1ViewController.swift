//
//  Feature1Page1ViewController.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import UIKit

class Feature1Page1ViewController: UIViewController {
    
    private let presenter: Feature1Page1Presenting


    
    init(presenter: Feature1Page1Presenting) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
