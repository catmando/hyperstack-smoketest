Hyperstack.configuration do |config|
  #config.prerendering = :on
  config.import 'hyperstack/hot_loader' if Rails.env.development?
  config.hotloader_port = 25223
end
