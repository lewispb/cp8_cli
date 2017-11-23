module Cp8Cli
  class PullRequestTitle
    def initialize(title, prefixes: [])
      @title = title
      @prefixes = prefixes
    end

    def to_s
      title_with_prefixes
    end

    private

      attr_reader :title, :prefixes

      def title_with_prefixes
        "#{prefixes_to_text} #{title}".strip
      end


      def prefixes_to_text
        prefixes.map do |prefix|
          "[#{prefix.to_s.upcase}]"
        end.join(" ")
      end
  end
end