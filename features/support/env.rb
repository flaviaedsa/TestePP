require "cucumber"
require "rspec"
require "httparty"
require "faker"

CONFIG = YAML.load_file(File.join(Dir.pwd, "configs/#{ENV["ENV_TYPE"]}.yml"))
