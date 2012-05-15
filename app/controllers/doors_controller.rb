class DoorsController < ApplicationController
  # GET /doors
  # GET /doors.json
  def index
    @doors = Door.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @doors }
    end
  end

  # GET /doors/1
  # GET /doors/1.json
  def show
    @door = Door.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @door }
    end
  end

  # GET /doors/new
  # GET /doors/new.json
  def new
    @door = Door.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @door }
    end
  end

  # GET /doors/1/edit
  def edit
    @door = Door.find(params[:id])
  end

  # POST /doors
  # POST /doors.json
  def create
    @door = Door.new(params[:door])

    respond_to do |format|
      if @door.save
        format.html { redirect_to @door, :notice => 'Door was successfully created.' }
        format.json { render :json => @door, :status => :created, :location => @door }
      else
        format.html { render :action => "new" }
        format.json { render :json => @door.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doors/1
  # PUT /doors/1.json
  def update
    @door = Door.find(params[:id])

    respond_to do |format|
      if @door.update_attributes(params[:door])
        format.html { redirect_to @door, :notice => 'Door was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @door.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doors/1
  # DELETE /doors/1.json
  def destroy
    @door = Door.find(params[:id])
    @door.destroy

    respond_to do |format|
      format.html { redirect_to doors_url }
      format.json { head :no_content }
    end
  end
end
