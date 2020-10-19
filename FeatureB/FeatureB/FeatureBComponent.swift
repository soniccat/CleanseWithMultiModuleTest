//
//  FeatureBComponent.swift
//  FeatureB
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import Foundation
import Cleanse

public class FeatureBComponent: Component {
    public typealias Root = FeatureBViewController
    
    public static func configureRoot(binder bind: ReceiptBinder<FeatureBViewController>) -> BindingReceipt<FeatureBViewController> {
        bind.to(factory: FeatureBViewController.init)
    }

    public static func configure(binder: Binder<Unscoped>) {
        binder.include(module: FeatureBViewController.Module.self)
    }
}
