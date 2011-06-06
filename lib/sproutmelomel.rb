require 'flashsdk'
require 'melomel/generators/as3_generator'
require 'melomel/generators/air_generator'
require 'melomel/generators/flex_generator'
require 'melomel/module'

Sprout::Specification.new do |s|
  s.name    = 'melomel'
  s.version = Melomel::SPROUT_VERSION

  s.add_remote_file_target do |t|
    t.platform     = :universal
    t.archive_type = :zip
    t.url          = "http://cloud.github.com/downloads/benbjohnson/melomel/melomel-#{Melomel::AS3_VERSION}.zip"
    t.md5          = 'c7933b49f1d157d26013c7e20a2a7db1'

    t.add_library :swc, "melomel-#{Melomel::AS3_VERSION}.swc"
    t.add_library :stub, "melomel-stub-#{Melomel::AS3_VERSION}.swc"
  end
end
