require 'spec_helper'

describe 'rackspace_motd::default' do

  context 'platform family - debian' do
    let(:file) { '/etc/motd.tail' }
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set[:platform_family] = 'debian'
      end.converge(described_recipe)
    end

    it 'writes /etc/motd.tail' do
      expect(chef_run).to create_template(file)
    end

    it 'creates /etc/motd.tail with proper attributes' do
      expect(chef_run).to create_template(file).with(
        user: 'root',
        group: 'root',
        mode: 00644
    )
    end
  end
end
