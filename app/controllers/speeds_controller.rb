class SpeedsController < ApplicationController
  # GET /speeds
  # GET /speeds.xml
  def index
    @speeds = Speed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @speeds }
    end
  end

  # GET /speeds/1
  # GET /speeds/1.xml
  def show
    @speed = Speed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @speed }
    end
  end

  # GET /speeds/new
  # GET /speeds/new.xml
  def new
    @speed = Speed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @speed }
    end
  end

  # GET /speeds/1/edit
  def edit
    @speed = Speed.find(params[:id])
  end

  # POST /speeds
  # POST /speeds.xml
  def create
    @speed = Speed.new(params[:speed])

    respond_to do |format|
      if @speed.save
        flash[:notice] = 'Speed was successfully created.'
        format.html { redirect_to(@speed) }
        format.xml  { render :xml => @speed, :status => :created, :location => @speed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @speed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /speeds/1
  # PUT /speeds/1.xml
  def update
    @speed = Speed.find(params[:id])

    respond_to do |format|
      if @speed.update_attributes(params[:speed])
        flash[:notice] = 'Speed was successfully updated.'
        format.html { redirect_to(@speed) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @speed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /speeds/1
  # DELETE /speeds/1.xml
  def destroy
    @speed = Speed.find(params[:id])
    @speed.destroy

    respond_to do |format|
      format.html { redirect_to(speeds_url) }
      format.xml  { head :ok }
    end
  end
end
