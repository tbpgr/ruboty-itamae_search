require "ruboty/itamae_search/actions/info"
require "ruboty/itamae_search/actions/random"
require "ruboty/itamae_search/actions/ranking"
require "ruboty/itamae_search/actions/author_ranking"

module Ruboty
  module Handlers
    class ItamaeSearch < Base
      on /itamae_search info (?<gem_name>.+)\z/, name: 'info', description: 'get itamae-plugin info'
      on /itamae_search random\z/, name: 'random', description: 'get itamae-plugin info at random'
      on /itamae_search ranking (?<limit>\d+)\z/, name: 'ranking', description: 'get itamae-plugin ranking'
      on /itamae_search author_ranking (?<limit>\d+)\z/, name: 'author_ranking', description: 'get itamae-plugin author_ranking'

      def info(message)
        Ruboty::ItamaeSearch::Actions::Info.new(message).call
      end

      def random(message)
        Ruboty::ItamaeSearch::Actions::Random.new(message).call
      end

      def ranking(message)
        Ruboty::ItamaeSearch::Actions::Ranking.new(message).call
      end

      def author_ranking(message)
        Ruboty::ItamaeSearch::Actions::AuthorRanking.new(message).call
      end
    end
  end
end
