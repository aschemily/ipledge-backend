class Api::V1::ChallengesController < ApplicationController

def index
  @challenges = Challenge.all

    render json: @challenges
end

def show
  @challenge = Challenge.find(params[:id])

  render json: @challenge
end

def create
  @challenge = Challenge.create(challenge_params)
  render json:@challenge
end

def update
  @challenge.update(challenge_params)
  if @challenge.save
    render json: @challenege, status: :accepted
  else
    render json: {errors: @challenge.errors.full_messages}, status: :unprocessible_entity
  end
end

def destroy
  @challenge.destroy
  render json: @challenges
end

private
def challenge_params
  params.require(:challenge).permit(:title, :location, :information, :image, :user_id)
end


end
