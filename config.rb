set :relative_links, true
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :layout, 'layouts/application'

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
end

activate :directory_indexes

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
