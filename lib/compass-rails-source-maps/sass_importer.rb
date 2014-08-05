module CompassRailsSourceMaps
  class SassImporter < Sass::Rails::SassImporter

    def public_url(uri, sourcemap_directory = nil)
      "/#{SOURCE_MAPS_DIRECTORY}/#{File.basename(uri)}"
    end

    attr_accessor :context

    def initialize(context, root)
      super(context, root)
    end

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
      Marshal.dump([@context.logical_path, @context.pathname, @root])
    end

    def self._load(args)
      env = ::Rails.application.assets
      context = env.context_class.new(env, args[1], args[2])
      new(context, args[3])
    end
  end
end

