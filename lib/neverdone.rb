require 'yaml'

module Neverdone
  VERSION = '0.1.2'
  CONSUMER_KEY = 'rubiojr'
  CONSUMER_SECRET = 'c4f8a1e0f09c27ec'

  class Config < Hash

    def save
      File.open "#{ENV['HOME']}/.neverdone.conf", 'w' do |f|
        f.puts self.to_yaml
      end
    end

    def self.load
      if File.exist?("#{ENV['HOME']}/.neverdone.conf")
        c = Config.new.merge YAML.load_file("#{ENV['HOME']}/.neverdone.conf")
      else
        c = Config.new
      end
      c[:user_store_url] = 'https://www.evernote.com/edam/user' if not c[:user_store_url]
      c
    end
  end
end
