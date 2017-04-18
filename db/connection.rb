
ActiveRecord::Base.establish_connection({
  database: 'Pokenatra',
  adapter: 'postgresql'
})

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
