//
//  FeatureAViewController.swift
//  FeatureA
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import UIKit
import Core
import Cleanse

public struct Deps {
    var networkLayer: NetworkLayer
}

public class FeatureAViewController: UIViewController {
    init(deps: Deps) {
        deps.networkLayer.load()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FeatureAViewController {
    public struct Module: Cleanse.Module {
        public static func configure(binder: UnscopedBinder) {
            binder.bind().to(factory: Deps.init)
        }
    }
}
