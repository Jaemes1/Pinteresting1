class Pins2sController < ApplicationController
  before_action :set_pins2, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /pins2s
  # GET /pins2s.json
  def index
    @pins2s = Pins2.all
  end

  # GET /pins2s/1
  
  def show
  end

  # GET /pins2s/new
  def new
    @pins2 = current_user.pins2.build
  end

  # GET /pins2s/1/edit
  def edit
  end

  # POST /pins2s
  def create
    @pins2 = current_user.pins2.build(pins2_params)
  
    if @pins2.save
      redirect_to @pins2, notice: 'Pins2 was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pins2s/1
  def update
    if @pins2.update(pins2_params)
      redirect_to @pins2, notice: 'Pins2 was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pins2s/1
  def destroy
    @pins2.destroy
    redirect_to pins2s_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pins2
      @pins2 = Pins2.find(params[:id])
    end

    def correct_user
      @pins2 = current_user.pins2.find_by(id: params[:id])
      redirect_to pins2s_path, notice: "Not authorized to edit this pin" if @pins2.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pins2_params
      params.require(:pins2).permit(:description, :image)
    end
end
