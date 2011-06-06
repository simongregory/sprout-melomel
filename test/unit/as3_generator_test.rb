require 'test_helper'

class AS3GeneratorTest < Test::Unit::TestCase
  include Sprout::TestHelper
  
  context "An ActionScript 3 project file generator" do

     setup do
       @temp             = File.join(fixtures, 'generators', 'tmp')
       FileUtils.mkdir_p @temp
       @generator        = Melomel::AS3Generator.new
       @generator.path   = @temp
       @generator.logger = StringIO.new
     end

     teardown do
       remove_file @temp
     end
     
     should "generate cucumber project files for an ActionScript 3 application" do
       @generator.input = 'SomeProject'
       @generator.execute
       project = File.join(@temp, 'SomeProject')
       assert_directory project
     end
     
   end
  
end
