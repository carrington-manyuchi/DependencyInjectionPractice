//
//  Feature1Page1ViewController.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import UIKit

class Feature1Page1ViewController: UIViewController {
    
    private let presenter: Feature1Page1Presenting
    private let tracker: Tracking
    private let abTester: ABTestable

    
    init(presenter: Feature1Page1Presenting, tracker: Tracking, abTester: ABTestable) {
        self.presenter = presenter
        self.tracker = tracker
        self.abTester = abTester
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigateToPageTwo()
    }
    
    private  func navigateToPageTwo() {
        let feature1Page2ViewController = Feature1Page2Router(tracker: tracker,
                                                              abTester: abTester).createViewController()
        print("route to feature1Page2ViewController \(feature1Page2ViewController)")
    }

}
