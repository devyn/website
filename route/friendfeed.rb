get '/ext/friendfeed' do
  @ff   = JSON.load(Net::HTTP.get(URI.parse("http://friendfeed-api.com/v2/feed/devyn?num=20")))
  content_type "text/html", :charset => 'utf-8'
  haml :friendfeed, :layout => false
end
