# @author Carter Brainerd
module NanoLog
  class Logger

    @logfile = nil

    INFO    = ' [INFO] '
    DEBUG   = ' [DEBUG] '
    FATAL   = ' [FATAL] '
    ERROR   = ' [ERROR] '
    SUCCESS = ' [SUCCESS] '

    #
    # @param path [String] the path to save the logfile at
    # @param flush [boolean] whether or not to flush the previous file (if it already exists)
    #
    def initialize(path, flush=false)
      raise NanoLog::NilPathError unless !path.nil?
      @logfile = File.new(path, 'a') unless flush
      @logfile = File.new(path, 'w+') if flush
    end

    #
    # Write an `info` message to the log file
    # @param message [String] the message to log
    #
    def info(message='')
      @logfile.write("#{Time.now}#{INFO}#{message}\n")
      @logfile.rewind
    end

    #
    # Write a `debug` message to the log file
    # @param message [String] the message to log
    #
    def debug(message='')
      @logfile.write("#{Time.now}#{DEBUG}#{message}\n")
      @logfile.rewind
    end

    #
    # Write a `fatal` message to the log file
    # @param message [String] the message to log
    #
    def fatal(message='')
      @logfile.write("#{Time.now}#{FATAL}#{message}\n")
      @logfile.rewind
    end

    #
    # Write an `error` message to the log file
    # @param message [String] the message to log
    #
    def error(message='')
      @logfile.write("#{Time.now}#{ERROR}#{message}\n")
      @logfile.rewind
    end

    #
    # Write a `success` message to the log file
    # @param message [String] the message to log
    #
    def success(message='')
      @logfile.write("#{Time.now}#{SUCCESS}#{message}\n")
      @logfile.rewind
    end

  end

  #
  # This error should only be used if the path in #initialize
  #
  class NilPathError < StandardError
    def initialize(msg="A nil log path is not allowed")
      super
    end
  end

end
