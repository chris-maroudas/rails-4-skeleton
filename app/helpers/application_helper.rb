module ApplicationHelper
  def asset_exists?(subdirectory, filename)
    File.exists?(File.join(Rails.root, 'app', 'assets', subdirectory, filename))
  end

  def image_exists?(image)
    asset_exists?('images', image)
  end

  def javascript_exists?(script)
    asset_exists?('javascripts', "#{script}.js")
  end

  def stylesheet_exists?(stylesheet)
    asset_exists?('stylesheets', "#{stylesheet}.css")
  end
end
