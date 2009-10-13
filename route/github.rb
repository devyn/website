get '/ext/github' do
  @git  = JSON.load(Net::HTTP.get(URI.parse("http://github.com/api/v2/json/repos/show/devyn")))
  content_type "text/html", :charset => 'utf-8'
  haml :github, :layout => false
end
