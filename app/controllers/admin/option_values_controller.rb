class OptionValuesController < ApplicationController
  before_action :set_option_value, only: [:show, :edit, :update, :destroy]

  # GET /option_values
  def index
    @option_values = OptionValue.all
  end

  # GET /option_values/1
  def show
  end

  # GET /option_values/new
  def new
    @option_value = OptionValue.new
  end

  # GET /option_values/1/edit
  def edit
  end

  # POST /option_values
  def create
    @option_value = OptionValue.new(option_value_params)

    if @option_value.save
      redirect_to @option_value, notice: 'Option value was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /option_values/1
  def update
    if @option_value.update(option_value_params)
      redirect_to @option_value, notice: 'Option value was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /option_values/1
  def destroy
    @option_value.destroy
    redirect_to option_values_url, notice: 'Option value was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_value
      @option_value = OptionValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def option_value_params
      params.require(:option_value).permit(:name, :active)
    end
end
