class HomeController < ApplicationController
  before_action :get_name, only: [:index, :team]


  def get_name
    @prefix = Faker::Superhero.prefix
    @name = Faker::Superhero.name
    @power = Faker::Superhero.power
    @corp_title = Faker::Job.title
    @corp_power = Faker::Company.bs.titleize 
    @rand_num = rand(1..100)
    @set_num = rand(1..4)
    @bg_num = rand(1..2)
    @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: "set#{@set_num}", bgset: "bg#{@bg_num}")
  end

  def index
  end

  def team
  end
end
