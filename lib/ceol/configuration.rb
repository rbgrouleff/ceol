# frozen_string_literal: true

module Ceol
  class Configuration
    RC_FILE_NAME = ".ceolrc"

    def initialize
      self.config = read_config
    end

    def ipaddr
      config.fetch(__method__.to_s)
    end

    private

    attr_accessor :config

    def read_config
      if File.exist?(rc_filename)
        Hash[File.read(rc_filename).lines(chomp: true).map { |l| l.split("=").map(&:downcase) }]
      else
        { "ipaddr" => ENV["CEOL_IPADDR"] }
      end
    end

    def rc_filename
      File.absolute_path(File.join(ENV["HOME"], RC_FILE_NAME))
    end
  end
end
