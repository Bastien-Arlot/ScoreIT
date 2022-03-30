# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile = ["manifest.js"]

Rails.application.config.assets.precompile += %w( answer_finances.js )
Rails.application.config.assets.precompile += %w( answer_innovations.js )
Rails.application.config.assets.precompile += %w( answer_markets.js )
Rails.application.config.assets.precompile += %w( answer_offers.js )
Rails.application.config.assets.precompile += %w( answer_strategies.js )
Rails.application.config.assets.precompile += %w( answer_teams.js )
Rails.application.config.assets.precompile += %w( flash.js )
Rails.application.config.assets.precompile += %w( startups.js )
Rails.application.config.assets.precompile += %w( startups_show.js )






