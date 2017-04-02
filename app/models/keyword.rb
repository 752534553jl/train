# == Schema Information
#
# Table name: keywords
#
#  id              :integer          not null, primary key
#  name            :string           default(""), not null
#  natural_rank    :string           default("0"), not null
#  hot_rank        :string           default("0"), not null
#  right_hot_rank  :string           default("0"), not null
#  bottom_hot_rank :string           default("0"), not null
#  category_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Keyword < ActiveRecord::Base
  belongs_to :category

  def add_natural_rank(rank)
    self.update_attributes(:natural_rank => rank)
  end

  def add_hot_rank(rank)
    self.update_attributes(:hot_rank => rank)
  end

  def add_right_rank(rank)
    self.update_attributes(:right_hot_rank => rank)
  end

  def add_bottom_rank(rank)
    self.update_attributes(:bottom_hot_rank => rank)
  end
end
