class FacturadetallesController < ApplicationController
  # GET /facturadetalles
  # GET /facturadetalles.xml
  def index
    @facturadetalles = Facturadetalle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facturadetalles }
    end
  end

  # GET /facturadetalles/1
  # GET /facturadetalles/1.xml
  def show
    @facturadetalle = Facturadetalle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @facturadetalle }
    end
  end

  # GET /facturadetalles/new
  # GET /facturadetalles/new.xml
  def new
    @facturadetalle = Facturadetalle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @facturadetalle }
    end
  end

  # GET /facturadetalles/1/edit
  def edit
    @facturadetalle = Facturadetalle.find(params[:id])
  end

  # POST /facturadetalles
  # POST /facturadetalles.xml
  def create
    @facturadetalle = Facturadetalle.new(params[:facturadetalle])

    respond_to do |format|
      if @facturadetalle.save
        format.html { redirect_to(@facturadetalle, :notice => 'Facturadetalle was successfully created.') }
        format.xml  { render :xml => @facturadetalle, :status => :created, :location => @facturadetalle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @facturadetalle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /facturadetalles/1
  # PUT /facturadetalles/1.xml
  def update
    @facturadetalle = Facturadetalle.find(params[:id])

    respond_to do |format|
      if @facturadetalle.update_attributes(params[:facturadetalle])
        format.html { redirect_to(@facturadetalle, :notice => 'Facturadetalle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @facturadetalle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /facturadetalles/1
  # DELETE /facturadetalles/1.xml
  def destroy
    @facturadetalle = Facturadetalle.find(params[:id])
    @facturadetalle.destroy

    respond_to do |format|
      format.html { redirect_to(facturadetalles_url) }
      format.xml  { head :ok }
    end
  end
end
