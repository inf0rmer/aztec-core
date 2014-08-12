platform :ios, '7.0'

target :Clubjudge do
  pod 'Analytics/GoogleAnalytics', '~> 1.5'
  pod 'CJKit/BAPersistentOperationQueue', '~> 3.1'
  pod 'CJKit/PromiseKit', '~> 3.1'
  pod 'KVOController'
  pod 'Masonry', '~> 0.5'
  pod 'EDStarRating'
  pod 'UIImage+Additions'
  pod 'FormatterKit', '~> 1.6'
  pod 'pop', :head
  pod 'TransitionKit', '~> 2.1'
  pod 'CMDActivityViewController'
  pod 'DTCoreText'
  pod 'Routable', '~> 0.0.4'
  pod 'FLEX', '~> 1.1'

  pre_install do |installer|
    supported_locales = ['en']

    installer.pods.each do |pod|
        %x[ find "#{pod.root}" -name '*.lproj' ].split.each do |bundle|
            if (!supported_locales.include?(File.basename(bundle, ".lproj").downcase))
                puts "Removing #{bundle}"
                FileUtils.rm_rf(bundle)
            end
        end
    end
  end
end

target :ClubjudgeTests, :exclusive => true do
  pod 'Kiwi', '~> 2.3'
end
