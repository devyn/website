get '/ext/tumblr' do
  @blog = JSON.load(Net::HTTP.get(URI.parse("http://devyn.tumblr.com/api/read/json?num=5")).gsub(/^var tumblr_api_read = |;$/, ''))
  content_type "text/html", :charset => 'utf-8'
  haml :tumblr, :layout => false
end
