//
//  FeatureBViewController.swift
//  FeatureB
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import UIKit
import Core
import Cleanse

public struct Deps {
    var dataSource: SampleDataSource
}

public class FeatureBViewController: UIViewController {
    init(deps: Deps) {
        deps.dataSource.status()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FeatureBViewController {
    public struct Module: Cleanse.Module {
        public static func configure(binder: UnscopedBinder) {
            binder.bind().to(factory: Deps.init)
        }
    }
}
