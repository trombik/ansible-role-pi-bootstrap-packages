require 'spec_helper'
require 'serverspec'

packages = %w( git-core vim libi2c-dev ruby ruby-dev )
gems = %w( pi_piper )

packages.each do |package|
  describe package(package) do
    it { should be_installed }
  end 
end

gems.each do |gem|
  describe package(gem) do
    it { should be_installed.by('gem') }
  end
end
