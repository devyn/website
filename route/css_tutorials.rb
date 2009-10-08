get '/tutorials.css' do
  content_type "text/css"
  sass :css_tutorials
end
