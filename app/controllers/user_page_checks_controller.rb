class UserPageChecksController < ApplicationController
  
  before_action :set_user_page_check, only: [:show, :edit, :update, :destroy]

  # GET /user_page_checks
  # GET /user_page_checks.json
  def index
    @user_page_checks = UserPageCheck.all
  end

  # GET /user_page_checks/1
  # GET /user_page_checks/1.json
  def show
  end

  # GET /user_page_checks/new
  def new
    @user_page_check = UserPageCheck.new
  end

  # GET /user_page_checks/1/edit
  def edit
  end

  # POST /user_page_checks
  # POST /user_page_checks.json
  def create
    @user_page_check = UserPageCheck.new(user_page_check_params)

    respond_to do |format|
      if @user_page_check.save
        format.html { redirect_to @user_page_check, notice: 'User page check was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_page_check }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_page_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_page_checks/1
  # PATCH/PUT /user_page_checks/1.json
  def update
    respond_to do |format|
      if @user_page_check.update(user_page_check_params)
        format.html { redirect_to @user_page_check, notice: 'User page check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_page_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_page_checks/1
  # DELETE /user_page_checks/1.json
  def destroy
    @user_page_check.destroy
    respond_to do |format|
      format.html { redirect_to user_page_checks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_page_check
      @user_page_check = UserPageCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_page_check_params
      params.require(:user_page_check).permit(:user_id, :page_id)
    end
end
