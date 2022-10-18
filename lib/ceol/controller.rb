require "socket"
require "ceol/configuration"

module Ceol
  class Controller
    class << self
      def control(&block)
        controller = new(::Ceol::Configuration.new)
        controller.connect
        yield controller
        true
      ensure
        controller.disconnect
      end
    end

    def initialize(config)
      @config = config
    end

    def connect
      if connection.nil? || connection.closed?
        @connection = TCPSocket.new(config.ipaddr, 23)
      end
    end

    def disconnect
      connection.close unless connection.nil?
    end

    def off
      write("PWSTANDBY")
    end

    def volume_down
      write("MVDOWN")
    end

    def volume_up
      write("MVUP")
    end

    private

    attr_reader :config, :connection

    def write(command)
      connection.write("#{command}\r") unless connection.nil? || connection.closed?
    end
  end
end
