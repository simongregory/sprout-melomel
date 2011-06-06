require 'test_helper'

class FlexGeneratorTest < Test::Unit::TestCase
  include Sprout::TestHelper
  
  context "A Flex project file generator" do

     setup do
       @temp             = File.join(fixtures, 'generators', 'tmp')
       FileUtils.mkdir_p @temp
       @generator        = Melomel::FlexGenerator.new
       @generator.path   = @temp
       @generator.logger = StringIO.new
     end

     teardown do
       remove_file @temp
     end
     
     should "generate cucmber project files for a Flex application" do
       @generator.input = 'SomeProject'
       @generator.execute
       project = File.join(@temp, 'SomeProject')
       assert_directory project
     end
     
   end
  
end
