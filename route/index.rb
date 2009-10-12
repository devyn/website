get '/' do
  @style = ["/main.css"]
  @ff   = JSON.load(Net::HTTP.get(URI.parse("http://friendfeed-api.com/v2/feed/devyn?num=20")))
  @blog = RSS::Parser.parse(Net::HTTP.get(URI.parse("http://devyn.tumblr.com/rss")))
  @git  = JSON.load(Net::HTTP.get(URI.parse("http://github.com/api/v2/json/repos/show/devyn")))
  content_type "text/html", :charset => "utf-8"
  haml :index
end
