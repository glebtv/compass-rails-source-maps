module CompassRailsSourceMaps
  class SassImporter < Sass::Rails::SassImporter

    def public_url(uri, sourcemap_directory = nil)
      "/#{SOURCE_MAPS_DIRECTORY}/#{File.basename(uri)}"
    end

  end
end

