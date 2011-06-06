# Project Sprouts Melomel Gem _ALPHA_

This [RubyGem](http://docs.rubygems.org/read/book/7) contains
libraries to add support for [Melomel](http://melomel.info) in 
[Project Sprouts](http://projectsprouts.org).

## Install

    git clone [this repo]
    cd sprout-melomel
    bundle install
    gem build sproutmelomel.gemspec 
    gem install sproutmelomel
    
#### Or

    gem install sproutmelomel --pre

## Usage

Edit your Gemfile to include

    gem "sproutmelomel", ">= 0.6.7.pre"

Edit your Rakefile to include 

    library :melomel, :swc
    
    # Within a (a)mxmlc block
    t.library_path << 'lib/melomel/melomel-0.6.7.swc'
    
Add support to an existing project

    melomel-flex MyProject

    # Or
    
    melomel-air AirProject    

You will then need to add the dependencies to your Gemfile, these will be
output to your shell when you run the above (so it should be a simple copy
and paste action).
 
## MIT License

Copyright (c) 2011 Simon Gregory

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
