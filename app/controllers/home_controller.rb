# frozen_string_literal: true
class HomeController < ApplicationController
  def index
  	@member = Member.new
  end
end
