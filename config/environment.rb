require 'bundler'
# require 'faker'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

require_all 'lib'

# require_relative '../lib/models/course.rb'
# require_relative '../lib/models/review.rb'
# require_relative '../lib/models/school.rb'
# require_relative '../lib/models/user.rb'

# require_relative '../lib/write_review_app.rb'
