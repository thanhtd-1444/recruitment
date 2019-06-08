# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")

Rails.application.config.assets.precompile += %w(
  admin/bootstrap.min.css admin/default-css.css admin/font-awesome.min.css admin/metisMenu.css
  admin/owl.carousel.min.css admin/responsive.css admin/slicknav.min.css admin/styles.css
  admin/themify-icons.css admin/typography.css
  admin/bootstrap.min.js admin/jquery-2.2.4.min.js admin/jquery.slicknav.min.js
  admin/jquery.slimscroll.min.js admin/line-chart.js admin/metisMenu.min.js
  admin/modernizr-2.8.3.min.js admin/owl.carousel.min.js admin/pie-chart.js admin/plugins.js
  admin/scripts.js admin/popper.min.js admin/custom.js
  ckeditor/config.js
)
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
