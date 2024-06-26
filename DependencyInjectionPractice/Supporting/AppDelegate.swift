//
//  AppDelegate.swift
//  DependencyInjectionPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let webService = WebServicingImplementation()
        let tracker = TrackingImplementation()
        let abTest = ABTestableImplementation()

        let feature1Page1Presenter = Feature1Page1Presenter(webService: webService)
        let feature1Page1ViewController = Feature1Page1ViewController(presenter: feature1Page1Presenter, 
                                                                      tracker: tracker,
                                                                      abTester: abTest)

        print(feature1Page1ViewController)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

