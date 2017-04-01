# coding: utf-8

require 'yaml'

namespace :db do
  desc "add keywords to mysql"
  task :add_keywords => :environment do
    keyword_data = YAML.load_file("lib/tasks/keywords.yaml")
    keyword_data.each_pair do |key, value|
      category = Category.where(:name => key).first
      unless category
        begin
          category = Category.create!({:name => key})
        rescue
          puts "category: #{category}....error"
          next
        end
      end
      value.each do |item|
        keyword = Keyword.where(:name => item).first
        unless keyword
          begin
            Keyword.create!({:name => item, :category => category})
          rescue
            puts "keyword: #{item}....error"
            next
          end
        end
      end
    end
  end
end
