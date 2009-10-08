get '/tutorials/rails' do
  @style = ["/tutorials.css"]
  haml :rails_tutorial
end
