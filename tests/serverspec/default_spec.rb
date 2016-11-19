require 'spec_helper'
require 'serverspec'

packages = %w( git-core vim libi2c-dev ruby )

packages.each do |package|
  describe package(package) do
    it { should be_installed }
  end 
end
