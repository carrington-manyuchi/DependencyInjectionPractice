//
//  Feature1Page2ViewController.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import UIKit

class Feature1Page2ViewController: UIViewController {
    
    private let tracking: Tracking
    private let abTester: ABTestable
    
  //  private let component: Feature1Page2Component

    
    init(tracking: Tracking, abTester: ABTestable) {
        self.tracking = tracking
        self.abTester = abTester
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
