//
//  App.swift
//  CleanseWithMultiModule
//
//  Created by Alexey Glushkov on 19.10.2020.
//  Copyright © 2020 Alexey Glushkov. All rights reserved.
//

import Foundation
import Cleanse
import Core
import FeatureB
import FeatureA

class App: FeatureA.Deps {
//    private let featureAComponent: ComponentFactory<FeatureAComponent>
    private let featureBComponent: ComponentFactory<FeatureBComponent>
    let networkLayer: NetworkLayer
    let sampleDataSource: SampleDataSource
    
    init(
//        featureAComponent: ComponentFactory<FeatureAComponent>,
        featureBComponent: ComponentFactory<FeatureBComponent>,
        networkLayer: NetworkLayer,
        sampleDataSource: SampleDataSource
    ) {
//        self.featureAComponent = featureAComponent
        self.featureBComponent = featureBComponent
        self.networkLayer = networkLayer
        self.sampleDataSource = sampleDataSource
    }
    
//    func featureAVC() -> FeatureAViewController {
//        return featureAComponent.build(())
//    }
    
    func featureBVC() -> FeatureBViewController {
        return featureBComponent.build(())
    }
}

