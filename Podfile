source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'
use_frameworks!

inhibit_all_warnings!

def common_pods
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'RealmSwift'
  pod 'ObjectMapper'
  pod 'SwiftValidator'
  pod 'AlamofireImage'
  pod 'SnapKit'
  pod 'AsyncSwift'
  pod 'SwiftSpinner'
  pod 'Firebase'
end

def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'Mockingjay', '1.1.1'
  pod 'Fakery'
end

target 'TakeFods' do
  common_pods
end

target 'TakeFodsTests' do
  common_pods
  testing_pods
end

target 'TakeFodsUITests' do
  common_pods
  testing_pods
  pod 'KIF', '~> 3.0', :configurations => ['Debug']
end
