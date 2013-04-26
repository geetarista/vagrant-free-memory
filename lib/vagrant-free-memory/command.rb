module VagrantFreeMemory
  class Command < Vagrant.plugin('2', 'command')
    def execute
      puts 'Hello!'
      return 0
    end
  end
end
