//
//  CoreComponent.swift
//  Core
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import Foundation
import Cleanse

public class CoreModule: Module {
    public typealias Scope = Singleton
    
    public static func configure(binder: SingletonBinder) {
        binder.bind().sharedInScope().to(factory: NetworkLayer.init)
        binder.bind().sharedInScope().to(factory: SampleDataSource.init)
    }
}
