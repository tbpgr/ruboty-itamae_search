require 'ruboty/itamae_search/actions/itamae-sonar_helper'

module Ruboty
  module ItamaeSearch
    module Actions
      class AuthorRanking < Ruboty::Actions::Base
        include ItamaeSonarHelper

        def call
          message.reply(author_ranking)
        end

        private

        def author_ranking
          call_method(:author_ranking, limit).map.with_index(1) do |gem_info, i|
            "no:#{i},author:#{gem_info[:authors]},downloads:#{gem_info[:downloads]}"
          end.join("\n")
        end
      end
    end
  end
end
