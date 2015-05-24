module SpreeTr
  class InstallGenerator < Rails::Generators::Base
    class_option :sample, :type => :boolean, :default => true, :banner => 'load sample data (migrations must be run)'

    def create_initializer
      create_file "config/initializers/spree_tr.rb", "I18n.default_locale = :tr"
    end

    def load_sample_data
      if options[:sample]
        say_status :loading, "sample data"
        rake 'spree_sample_tr:load'
      else
        say_status :skipping, "sample data (you can always run rake spree_sample:load)"
      end
    end
  end
end
