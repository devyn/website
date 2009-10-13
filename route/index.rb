get '/' do
  @style = ["/main.css"]
  content_type "text/html", :charset => "utf-8"
  haml :index
end
