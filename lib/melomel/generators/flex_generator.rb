module Melomel
  class FlexGenerator < FlashSDK::ClassGenerator

    def manifest
      directory input do

        directory 'features' do
          template "#{input.downcase}.feature", 'application.feature'
          
          directory 'fixtures'
          
          directory 'step_definitions' do
            template "application_steps.rb", "application_steps.rb" 
          end
          
          directory 'support' do
            template 'env.rb', 'flex/env.rb'
          end          
        end        
      end
    end
  end
end
