get '/' do
  @style = ["/main.css"]
  haml :index
end
