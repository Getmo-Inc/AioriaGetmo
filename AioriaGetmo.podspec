Pod::Spec.new do |s|
  s.name             = "AioriaGetmo"
  s.version          = "0.1.0"
  s.summary          = "Biblioteca de integração com o Framework de Push da Getmo"

  s.description      = <<-DESC
Integração com o Framework de Push da Getmo. Desenvolvido pela Aioria através do código disponível pela própria Getmo.
                       DESC

  s.homepage         = "https://github.com/aioriash/AioriaGetmo.git"
  s.license          = 'MIT'
  s.author           = { "Gustavo Tagliari" => "gustavo@aioria.com.br" }
  s.source           = { :git => "https://github.com/aioriash/AioriaGetmo.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

#s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'AioriaGetmo' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'CoreLocation', 'AdSupport'
  s.vendored_frameworks = 'SmartpushSDK.framework'
end
