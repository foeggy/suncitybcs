class PromosController < ApplicationController
  # GET /promos
  # GET /promos.xml
  def index
    @promos = Promo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @promos }
    end
  end

  # GET /promos/1
  # GET /promos/1.xml
  def show
    @promo = Promo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @promo }
    end
  end

  # GET /promos/new
  # GET /promos/new.xml
  def new
    @promo = Promo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @promo }
    end
  end

  # GET /promos/1/edit
  def edit
    @promo = Promo.find(params[:id])
  end

  # POST /promos
  # POST /promos.xml
  def create
    @promo = Promo.new(params[:promo])

    respond_to do |format|
      if @promo.save
        flash[:notice] = 'Promo was successfully created.'
        format.html { redirect_to(@promo) }
        format.xml  { render :xml => @promo, :status => :created, :location => @promo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @promo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promos/1
  # PUT /promos/1.xml
  def update
    @promo = Promo.find(params[:id])

    respond_to do |format|
      if @promo.update_attributes(params[:promo])
        flash[:notice] = 'Promo was successfully updated.'
        format.html { redirect_to(@promo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @promo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promos/1
  # DELETE /promos/1.xml
  def destroy
    @promo = Promo.find(params[:id])
    @promo.destroy

    respond_to do |format|
      format.html { redirect_to(promos_url) }
      format.xml  { head :ok }
    end
  end
end
