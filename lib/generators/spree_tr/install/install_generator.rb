module SpreeTr
  class InstallGenerator < Rails::Generators::Base
    def create_initializer
      create_file "config/initializers/spree_tr.rb", "I18n.default_locale = :tr"
    end

    def load_sample_data
      rake 'spree_sample_tr:load'
    end
  end
end
