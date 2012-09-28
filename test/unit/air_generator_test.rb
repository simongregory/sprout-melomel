require 'test_helper'

class AIRGeneratorTest < Test::Unit::TestCase
  include Sprout::TestHelper

  context "An AIR project file generator" do

     setup do
       @temp             = File.join(fixtures, 'generators', 'tmp')
       FileUtils.mkdir_p @temp
       @generator        = Melomel::AIRGenerator.new
       @generator.path   = @temp
       @generator.logger = StringIO.new
     end

     teardown do
       remove_file @temp
     end

     should "generate cucumber project files for an AIR application" do
       @generator.input = 'SomeProject'
       @generator.execute
       project = File.join(@temp, 'SomeProject')
       assert_directory project
     end

   end

end
