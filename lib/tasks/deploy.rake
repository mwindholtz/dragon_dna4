require 'fileutils'
include FileUtils::Verbose

APP = 'casedragon'

def with_heroku(command) 
  Bundler.with_clean_env{ puts `heroku #{command} --app #{APP}` }
end
  
def heroku_rake(command) 
  Bundler.with_clean_env{ puts `heroku run rake #{command} --app #{APP}` }
end
  

namespace :dragon do

  desc 'version' 
  task :version do
    puts `git log | wc -l`  
  end
         
  namespace :dev do
    desc 'run RSpecs with guard' 
    task :guard do
      puts `guard start`  
    end    
 
    desc 'reset DB' 
    task :reset do
      puts `rake db:drop`  
      puts `rake db:create`  
      puts `rake db:migrate`  
      puts `rake db:seed`  
    end    
    
  end
  
  namespace :deploy do

    desc "db migrate"
    task :migrate do
      puts 'Running database migrate ...'
      heroku_rake %/db:migrate/
    end

    desc "app"
    task :app do
      puts 'Running deploy app ...'
      %x{ git push heroku master }
    end
    
    desc "restart"
    task :restart  do
      puts 'Restarting app servers ...'
      with_heroku %/restart/
    end 
    
    desc "tag"
    task :tag  do
      stamp = "p-#{Time.now.utc.strftime("%y%m%d_%H%M")}" 
      puts "Tagging release as '#{stamp}'"
      puts `git tag -a #{stamp} -m 'Tagged release #{stamp}'`
      puts `git push --tags git@heroku.com:#{APP}.git`
    end
    
  end # deploy

  desc "deploy, migrate, restart"
  task deploy: ["dragon:deploy:app", "dragon:deploy:tag","dragon:deploy:migrate", "dragon:deploy:restart"]

end
