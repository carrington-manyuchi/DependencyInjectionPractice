//
//  Feature1Page2ViewController.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import UIKit

final class Page2AwesomeFormatter {
    func format() {
        print("and it does it awesomely")
    }
}

class Feature1Page2ViewController: UIViewController {
    
    private let tracking: Tracking
    private let abTester: ABTestable
    private let myAwesomeFormatter: Page2AwesomeFormatter
    
    init(tracking: Tracking, 
         abTester: ABTestable,
         myAwesomeFormatter: Page2AwesomeFormatter,
         myCalculator: MyCalculator) {
        self.tracking = tracking
        self.abTester = abTester
        self.myAwesomeFormatter = myAwesomeFormatter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tracking.track()
        abTester.testStsuff()
    }
}
