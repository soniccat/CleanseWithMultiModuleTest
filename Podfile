platform :ios, '11.0'

def addCleanse()
  pod 'Cleanse', '4.2.6'
end

target 'CleanseWithMultiModule' do
  addCleanse()
end

target 'Core' do
  project 'Core/Core.xcodeproj'
  workspace 'CleanseWithMultiModule.xcworkspace'
  addCleanse()
end

target 'FeatureA' do
  project 'FeatureA/FeatureA.xcodeproj'
  workspace 'CleanseWithMultiModule.xcworkspace'
  addCleanse()
end

target 'FeatureB' do
  project 'FeatureB/FeatureB.xcodeproj'
  workspace 'CleanseWithMultiModule.xcworkspace'
  addCleanse()
end