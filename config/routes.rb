DataApp::Application.routes.draw do
  # Api definition
  api_version(:module => "api/v1", :path => {:value => "v1"}, defaults: { format: :json }) do
      resources :data_stream 
  end
end
