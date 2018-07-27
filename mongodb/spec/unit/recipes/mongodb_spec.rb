require 'spec_helper'

describe 'mongo::mongodb' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end
    it 'should install mongodb-org' do
      expect(chef_run).to install_package 'mongodb-org'
    end
      at_exit { ChefSpec::Coverage.report! }
  end
end
