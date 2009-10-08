get '/main.css' do
  content_type 'text/css'
  sass :css_main
end
