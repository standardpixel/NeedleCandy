class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.xml
  def index
    @albums = Albums.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.xml
  def show
    @albums = Albums.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @albums }
    end
  end

  # GET /albums/new
  # GET /albums/new.xml
  def new
    @albums = Albums.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @albums }
    end
  end

  # GET /albums/1/edit
  def edit
    @albums = Albums.find(params[:id])
  end

  # POST /albums
  # POST /albums.xml
  def create
    @albums = Albums.new(params[:albums])

    respond_to do |format|
      if @albums.save
        flash[:notice] = 'Albums was successfully created.'
        format.html { redirect_to(@albums) }
        format.xml  { render :xml => @albums, :status => :created, :location => @albums }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @albums.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.xml
  def update
    @albums = Albums.find(params[:id])

    respond_to do |format|
      if @albums.update_attributes(params[:albums])
        flash[:notice] = 'Albums was successfully updated.'
        format.html { redirect_to(@albums) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @albums.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.xml
  def destroy
    @albums = Albums.find(params[:id])
    @albums.destroy

    respond_to do |format|
      format.html { redirect_to(albums_url) }
      format.xml  { head :ok }
    end
  end
end
