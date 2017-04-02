require_relative "../works/crawler_work"

class KeywordsController < ApplicationController
  def index
   @ranks = Hash.new
   Keyword.all.each do |keyword|
     rank = CrawlerWork.process(keyword.name)
     @ranks[keyword.name] = rank
     sleep 0.5
   end
  end

end
