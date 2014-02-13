module CompassRailsSourceMaps
  class SassImporter < Sprockets::SassImporter

    def public_url(uri, sourcemap_directory = nil)
      "/#{Sprockets::SassTemplate::SOURCE_MAPS_DIRECTORY}/#{File.basename(uri)}"
    end

  end
end
