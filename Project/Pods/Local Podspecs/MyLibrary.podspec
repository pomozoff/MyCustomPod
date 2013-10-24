Pod::Spec.new do |s|
  s.name            = "MyLibrary"
  s.version         = "0.0.2"
  s.summary         = "Example of creating own pod."
  s.homepage        = "https://github.com/pomozoff/MyCustomPod"
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author          = { "Username" => "username@mail.domain" }
  s.platform        = :ios, 7.0
  s.source          = { :git => "https://github.com/pomozoff/MyCustomPod.git", :tag => s.version.to_s }
  s.framework       = 'Foundation'
  s.requires_arc    = true
  s.default_subspec = 'Core' # Модуль по умолчанию называется Core

  s.subspec 'Core' do |core|
    core.source_files          = 'Classes/AKClass.{h,m}'
    core.public_header_files   = 'Classes/*.h'
    core.dependency 'MyLibrary/Connection'
    core.dependency 'MyLibrary/Provider'
  end

  s.subspec 'Provider' do |provider|
    provider.source_files = 'Classes/AKProvider.{h,m}'
    provider.frameworks   = 'MapKit', 'CoreData' # Добавлены зависимости от фрэймворков
    provider.platform     = :ios, 5.0 # Этот модуль может запускаться и на iOS 5.0
  end

  s.subspec 'AccessToken' do |access_token|
    access_token.source_files = 'Classes/AKAccessToken.{h,m}'
    access_token.libraries    = 'xml2' # Зависимость от библиотеки
    access_token.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' } # Где искать заголовочные файлы
  end

  s.subspec 'Parser' do |parser|
    parser.source_files = 'Classes/AKParser.{h,m}'
  end

  s.subspec 'Storage' do |storage|
    storage.source_files = 'Classes/AKStorage.{h,m}'
    storage.dependency 'MyLibrary/AccessToken'
  end

  s.subspec 'Connection' do |connection|
    connection.source_files = 'Classes/AKConnection.{h,m}'
    connection.dependency 'MyLibrary/Storage'
    connection.dependency 'MyLibrary/Parser'
  end
end
