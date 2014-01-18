require 'spec_helper'

describe 'rackspace_motd::default' do

  context 'platform family - rhel' do
    let(:file) { '/etc/motd' }

    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set[:rackspace_motd][:additional_text] = 'some additional text'
      end.converge(described_recipe)
    end

    it 'creates /etc/motd' do
      expect(chef_run).to create_template(file)
    end

    it 'creates /etc/motd with proper attributes' do
      expect(chef_run).to create_template(file).with(
        user: 'root',
        group: 'root',
        mode: 00644
    )
    end

    it 'writes /etc/motd with additional text' do
      expect(chef_run).to render_file(file).with_content('some additional text')
    end
  end
end
