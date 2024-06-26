//
//  Feature1Page2Router.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import Foundation

protocol Feature1Page2Dependency {
    var tracker: Tracking { get }
    var abTester: ABTestable { get }
    var calculator: MyCalculator { get }
}

private final class Feature1Page2Component {
    
    private let dependency: Feature1Page2Dependency
    
    init(dependency: Feature1Page2Dependency) {
        self.dependency = dependency
    }
    
    var tracker: Tracking {
        return dependency.tracker
    }
    var abTester: ABTestable {
        return dependency.abTester
    }
    var myAwesomeFormatter: Page2AwesomeFormatter {
        let myAwesomeFormatter = Page2AwesomeFormatter()
        return myAwesomeFormatter
    }

    var myCalculator: MyCalculator {
        return dependency.calculator
    }
}

final class Feature1Page2Router {
 
    private let component: Feature1Page2Component

    init(dependency: Feature1Page2Dependency) {
        self.component = Feature1Page2Component(dependency: dependency)
    }
    
    func createViewController() -> Feature1Page2ViewController {
        // Created here beacuse it is not at an app level but the best way is to resolve it through component object
        //let myAwesomeFormatter = Page2AwesomeFormatter()
        let feature1Page2ViewController = Feature1Page2ViewController(tracking: component.tracker,
                                                                      abTester: component.abTester,
                                                                      myAwesomeFormatter: component.myAwesomeFormatter, myCalculator: component.myCalculator)

        return feature1Page2ViewController
    }
}
