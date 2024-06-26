//
//  Feature1Page1Presenter.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import Foundation



final class Feature1Page1Presenter: Feature1Page1Presenting {
    
    private let webService: WebServicing
    
    init(webService: WebServicing) {
        self.webService = webService
    }
}
