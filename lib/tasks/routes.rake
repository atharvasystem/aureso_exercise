namespace :api do
  desc 'API Routes'
  task :routes => :environment do
    API::Base.routes.each do |api|
      method = api.route_method.ljust(10)
      path = api.route_path.gsub(':version', api.route_version.to_s)
      puts "     #{method} #{path}"
    end
  end
end
