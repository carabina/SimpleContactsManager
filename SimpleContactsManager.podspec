#
# Be sure to run `pod lib lint SimpleContactsManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleContactsManager'
  s.version          = '0.0.2'
  s.summary          = 'An easy access to ContactsBook.'


  s.description      = <<-DESC
An easy to use Contacts.
                       DESC

  s.homepage         = 'https://github.com/Chasingdreamboy/SimpleContactsManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'EriceWang' => 'wangerdong@treefinance.com.cn' }
  s.source           = { :git => 'https://github.com/Chasingdreamboy/SimpleContactsManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'SimpleContactsManager/Classes/SimpleContactsManager.h'
  s.public_header_files = 'SimpleContactsManager/Classes/SimpleContactsManager.h'
  
  s.subspec "ContactsManager" do |sub|
  sub.source_files = 'SimpleContactsManager/Classes/**/*.{h,m}'
  sub.frameworks = 'AddressBookUI','AddressBookUI'
  sub.weak_frameworks = 'ContactsUI','Contacts'
  end
end
