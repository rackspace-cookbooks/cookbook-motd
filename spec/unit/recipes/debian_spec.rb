require 'spec_helper'

describe 'rackspace_motd::default' do

  context 'platform family - debian' do
    let(:file) { '/etc/motd.tail' }
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set[:platform_family] = 'debian'
        node.set[:rackspace_motd][:additional_text] = 'some additional text'
      end.converge(described_recipe)
    end

    it 'writes /etc/motd.tail' do
      expect(chef_run).to render_file(file).with_content('Chef-Client')
    end
  end
end
