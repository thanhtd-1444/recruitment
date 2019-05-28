# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w(admin/bootstrap.min.css admin/icons.css
  admin/metismenu.min.css admin/style.css
  admin/jquery.min.js admin/popper.min.js admin/bootstrap.min.js admin/metisMenu.min.js
  admin/waves.js admin/jquery.slimscroll.js
  admin/jquery.core.js admin/jquery.app.js admin/modernizr.min.js admin/wow.min.js
  admin/jquery.waypoints.min.js admin/jquery.counterup.min.js admin/chart.bundle.js
  )
#admin/jquery.dashboard.init.js
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
