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
    extensions = %w(.scss .erb .scss.erb) + [""]
    extensions.inject(false) do |truth, extension|
      truth || asset_exists?('stylesheets', "#{stylesheet}.css#{extension}")
    end
  end
end
