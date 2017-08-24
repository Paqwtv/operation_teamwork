require './lib/config/environment.rb'

namespace :db do
  desc "Migrate to database"
  task :migrate do
    ActiveRecord::Migrator.migrate('lib/db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
  end
end
