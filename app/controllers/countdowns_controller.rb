class CountdownsController < ApplicationController
  # GET /countdowns
  # GET /countdowns.json
  def index
    @countdowns = Countdown.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @countdowns }
    end
  end

  # GET /countdowns/1
  # GET /countdowns/1.json
  def show
    @countdown = Countdown.find(params[:id])
    @countdown.name = @countdown.name.upcase
    date = @countdown.countdown_date
    @year = date.strftime('%Y')
    @month = date.strftime('%m').to_i - 1
    @day = date.strftime('%d')
    @hour = date.strftime('%H')
    @minute = date.strftime('%M')
    @second = date.strftime('%S')

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @countdown }
    end
  end

  # GET /countdowns/new
  # GET /countdowns/new.json
  def new
    @countdown = Countdown.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @countdown }
    end
  end

  # GET /countdowns/1/edit
  def edit
    @countdown = Countdown.find(params[:id])
  end

  # POST /countdowns
  # POST /countdowns.json
  def create
    @countdown = Countdown.new(params[:countdown])

    respond_to do |format|
      if @countdown.save
        format.html { redirect_to @countdown, notice: 'Countdown was successfully created.' }
        format.json { render json: @countdown, status: :created, location: @countdown }
      else
        format.html { render action: "new" }
        format.json { render json: @countdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /countdowns/1
  # PUT /countdowns/1.json
  def update
    @countdown = Countdown.find(params[:id])

    respond_to do |format|
      if @countdown.update_attributes(params[:countdown])
        format.html { redirect_to @countdown, notice: 'Countdown was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @countdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countdowns/1
  # DELETE /countdowns/1.json
  def destroy
    @countdown = Countdown.find(params[:id])
    @countdown.destroy

    respond_to do |format|
      format.html { redirect_to countdowns_url }
      format.json { head :no_content }
    end
  end
end
