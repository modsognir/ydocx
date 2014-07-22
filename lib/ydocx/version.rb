module YDocx
  class Version
    class << self
      def version
        '1.2.5'
      end

      def to_s
        version
      end
    end
  end
end