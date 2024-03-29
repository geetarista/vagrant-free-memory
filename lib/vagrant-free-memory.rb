require 'vagrant-free-memory/version'

begin
  require 'vagrant'
rescue LoadError
  raise 'This plugin must run within Vagrant.'
end

module VagrantFreeMemory
  class Plugin < Vagrant.plugin('2')
    name 'vagrant-free-memory'

    command 'free-memory' do
      require_relative 'vagrant-free-memory/command'
      Command
    end
  end
end
