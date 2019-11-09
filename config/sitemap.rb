# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.jensenlocksmithing.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # Automotive
  add automotive_path
  add automotive_hurricane_path
  add automotive_springdale_path
  add automotive_st_george_path
  add automotive_kanab_path

  # Commercial
  add commercial_path

  # Residential
  add residential_path

  # Home Page, don't know if needed
  add home_path

  # Contact 
  add contact_path

  # Adwords routes
  add "/stgeorge"
  add "/StGeorge"
  add "/hurricane"
  add "/Hurricane"
  add "/kanab"
  add "/Kanab"
  add "/springdale"
  add "/SpringDale"
  add "/Springdale"
  add "/laverkin"
  add "/LaVerkin"
  add "/Laverkin"

end
