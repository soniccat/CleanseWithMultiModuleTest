//
//  AppComponent.swift
//  CleanseWithMultiModule
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import Foundation
import Cleanse
import FeatureA
import FeatureB
import Core

struct AppComponent : Cleanse.RootComponent {
    typealias Root = App

    static func configureRoot(binder bind: ReceiptBinder<App>) -> BindingReceipt<App> {
        bind.to(factory: App.init)
    }

    static func configure(binder: SingletonBinder) {
        binder.include(module: CoreModule.self)
        //binder.install(dependency: FeatureAComponent.self)
        binder.install(dependency: FeatureBComponent.self)
    }
}
