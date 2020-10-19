//
//  FeatureAComponent.swift
//  FeatureA
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import Foundation
import Cleanse

public class FeatureAComponent: RootComponent {
    public typealias Root = FeatureAViewController
    public typealias Seed = Deps
    
    public static func configureRoot(binder bind: ReceiptBinder<FeatureAViewController>) -> BindingReceipt<FeatureAViewController> {
        bind.to(factory: FeatureAViewController.init)
    }

    public static func configure(binder: Binder<Unscoped>) {
        binder.include(module: FeatureAViewController.Module.self)
    }
}
