if Rails.env.development?
    unless Rails.application.config.cache_classes
      Rails.autoloaders.main.on_unload do |klass, _abspath|
        Rails.cache.clear
      end
    end
  end