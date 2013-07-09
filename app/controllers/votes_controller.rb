class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @vote = Vote.where(user_id: current_user.id, link_id: params[:vote][:link_id]).first
    if @vote
      @vote.up = params[:vote][:up]
      @vote.save
    else
      @vote = current_user.votes.create(params[:vote])
    end
    
    redirect_to :back
  end
end
