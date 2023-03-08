class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    
  end

  def new
    @member = Member.new
  end

  def create
    member = Member.create(member_params)
    redirect_to members_path
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)

    redirect_to member_path(@member)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:name, :bio, :role)
  end

  def current_member
    @member = Member.find(params[:id])
  end

end
