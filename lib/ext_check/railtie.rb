require 'ext_check'
require 'rails'

module ExtCheck
  class Railtie < Rails::Railtie
    rake_tasks do
      load "tasks/ext_check.rake"
    end
  end
end
