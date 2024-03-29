module VagrantFreeMemory
  class Command < Vagrant.plugin('2', 'command')
    def execute
      opts = OptionParser.new do |o|
        o.banner = "Usage: vagrant free-memory [--help]"
      end

      argv = parse_options(opts)

      command = "grep MemFree /proc/meminfo | awk '{print $2}'"

      with_target_vms(argv) do |machine|
        if machine.state.id != :running
          @env.ui.error("#{machine.name} is not running.")
          next
        end

        machine.communicate.execute(command) do |type, data|
          @env.ui.info(data)
        end
      end

      return 0
    end
  end
end
