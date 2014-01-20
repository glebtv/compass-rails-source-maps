module CompassRailsSourceMaps
  class SassImporter < Sprockets::SassImporter

    def public_url(uri)
      "/#{Sprockets::SassTemplate::SOURCE_MAPS_DIRECTORY}/#{File.basename(uri)}"
    end

  end
end
