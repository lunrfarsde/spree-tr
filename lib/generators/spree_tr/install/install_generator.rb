require 'open-uri'

module SpreeTr
  class InstallGenerator < Rails::Generators::Base
    class_option :sample, :type => :boolean, :default => true, :banner => 'load sample data (migrations must be run)'

    def create_initializer
      create_file "config/initializers/spree_tr.rb", "I18n.default_locale = :tr"
    end

    def install_turkish_locale
      say_status :loading, "Turkish locale"
      begin
        open('config/locales/tr.yml', 'wb') do |file|
          file << open('https://raw.githubusdercontent.com/spree-contrib/spree_i18n/master/config/locales/tr.yml').read
        end
      rescue StandardError => e
        say_status :skipping, "Cannot install Turkish locale. Error: #{e.message}"
      end
    end

    def load_sample_data
      if options[:sample]
        say_status :loading, "sample data"
        rake 'spree_sample_tr:load'
      else
        say_status :skipping, "sample data (you can always run rake spree_sample_tr:load)"
      end
    end
  end
end
