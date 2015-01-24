module CompassRailsSourceMaps
  class SassImporter < Sass::Rails::SassImporter

    def public_url(uri, sourcemap_directory = nil)
      "/#{SOURCE_MAPS_DIRECTORY}/#{File.basename(uri)}"
    end

    attr_accessor :context

    def find_relative(*args)
      engine = super
      if context && engine && (filename = engine.options[:filename])
        context.depend_on(filename)
      end
      engine
    end

    def find(*args)
      engine = super
      if context && engine && (filename = engine.options[:filename])
        context.depend_on(filename)
      end
      engine
    end

    def _dump(level)
      Marshal.dump([@root])
    end

    def self._load(args)
      env = ::Rails.application.assets
      d = Marshal.load(args)
      context = env.context_class.new(env, d[0], d[1])
      new(context, d[2])
    end
  end
end
