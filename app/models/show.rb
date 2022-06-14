class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    characters.map do |character| 
      "#{character.actor.full_name}"
    end
  end

end