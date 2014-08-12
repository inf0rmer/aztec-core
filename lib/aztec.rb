require 'pry'
require 'cocoapods'
require 'claide'

module Aztec
  class Parser

    def parse(repo)
      @repo = repo

      Dir.chdir @repo
      install = install_command
      install.run

      cmd = outdated_command
      updates = cmd.updates

      return updates
    end

    private

    def install_command
      Pod::Command::Install.new argv
    end

    def outdated_command
      Pod::Command::Outdated.new argv
    end

    def argv
      CLAide::ARGV.new []
    end

  end
end
