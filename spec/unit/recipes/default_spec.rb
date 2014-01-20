require 'spec_helper'

describe 'rackspace_motd::default' do
  let(:file) { '/etc/motd' }
  let(:time) { Time.new }

  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set[:rackspace_motd][:additional_text] = 'some additional text'
    end.converge(described_recipe)
  end

  context 'platform family - rhel' do

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

  end

  context 'template expectations' do

    it 'should contain node name' do
      expect(chef_run).to render_file(file).with_content('Chef-Client: chefspec.local')
    end

    it 'writes /etc/motd with additional text' do
      expect(chef_run).to render_file(file).with_content('some additional text')
    end

    it 'should contain the the chef environment name' do
      expect(chef_run).to render_file(file).with_content('Environment: _default')
    end

    it 'should contain the time since most recent chef run' do
      expect(chef_run).to render_file(file).with_content('Last Run: ' + time.to_s)
    end

    # ChefSpec::Server isn't working currently
    # it 'should contain a list of roles' do
    #  ChefSpec::Server.create_role('fake_role', { default_attributes: {} })
    #  expect(chef_run).to render_file(file).with_content('Role: fake_role::default')
    # end

    it 'should contain a list of recipes' do
      expect(chef_run).to render_file(file).with_content('Recipe: rackspace_motd::default')
    end

    it 'should contain the chef server url - solo' do
      expect(chef_run).to render_file(file).with_content('Chef Server: Solo')
    end

  end
end
