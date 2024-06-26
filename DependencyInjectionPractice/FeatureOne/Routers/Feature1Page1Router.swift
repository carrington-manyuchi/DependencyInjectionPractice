//
//  Feature1Page1Router.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import Foundation
import UIKit

protocol Feature1Page1Dependency {
    var webService:  WebServicing { get }
    var tracker: Tracking { get }
    var abTester: ABTestable { get }
}


private final class Feature1Page1Component {
    
    private let dependency: Feature1Page1Dependency
    
    init(dependency: Feature1Page1Dependency) {
        self.dependency = dependency
    }
    
    var webService:  WebServicing {
        return dependency.webService
    }
    
    var tracker: Tracking {
        return dependency.tracker
    }
    
    var abTester: ABTestable {
        return dependency.abTester
    }
}

final class Feature1Page1Router {
    
    private let component: Feature1Page1Component
    
    init(dependency: Feature1Page1Dependency) {
        self.component = Feature1Page1Component(dependency: dependency)
    }
    
    func createViewController() -> Feature1Page1ViewController {
        let feature1Page1Presenter = Feature1Page1Presenter(webService: component.webService)
        let feature1Page1ViewController = Feature1Page1ViewController(presenter: feature1Page1Presenter,
                                                                      tracker: component.tracker,
                                                                      abTester: component.abTester)
        return feature1Page1ViewController
    }
}
