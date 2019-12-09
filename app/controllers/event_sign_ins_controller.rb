class EventSignInsController < ApplicationController
  before_action :set_event_sign_in, only: [:show, :edit, :update, :destroy]

  # GET /event_sign_ins
  # GET /event_sign_ins.json
  def index
    @event_sign_ins = EventSignIn.all
  end

  # GET /event_sign_ins/1
  # GET /event_sign_ins/1.json
  def show
  end

  # GET /event_sign_ins/new
  def new
    @event_sign_in = EventSignIn.new
  end

  # GET /event_sign_ins/1/edit
  def edit
  end

  # POST /event_sign_ins
  # POST /event_sign_ins.json
  def create
    @event_sign_in = EventSignIn.new(event_sign_in_params)
    @event_sign_in.event_date = Time.now

    respond_to do |format|
      if @event_sign_in.save
        format.html { redirect_to @event_sign_in, notice: 'Event sign in was successfully created.' }
        format.json { render :show, status: :created, location: @event_sign_in }
      else
        format.html { render :new }
        format.json { render json: @event_sign_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sign_ins/1
  # PATCH/PUT /event_sign_ins/1.json
  def update
    respond_to do |format|
      if @event_sign_in.update(event_sign_in_params)
        format.html { redirect_to @event_sign_in, notice: 'Event sign in was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_sign_in }
      else
        format.html { render :edit }
        format.json { render json: @event_sign_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sign_ins/1
  # DELETE /event_sign_ins/1.json
  def destroy
    @event_sign_in.destroy
    respond_to do |format|
      format.html { redirect_to event_sign_ins_url, notice: 'Event sign in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_sign_in
      @event_sign_in = EventSignIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_sign_in_params
      params.require(:event_sign_in).permit(:event_email, :event_password, :event_date)
    end
end
