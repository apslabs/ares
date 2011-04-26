class FacturaitemsController < ApplicationController
  # GET /facturaitems
  # GET /facturaitems.xml
  def index
    @facturaitems = Facturaitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facturaitems }
    end
  end

  # GET /facturaitems/1
  # GET /facturaitems/1.xml
  def show
    @facturaitem = Facturaitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @facturaitem }
    end
  end

  # GET /facturaitems/new
  # GET /facturaitems/new.xml
  def new
    @facturaitem = Facturaitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @facturaitem }
    end
  end

  # GET /facturaitems/1/edit
  def edit
    @facturaitem = Facturaitem.find(params[:id])
  end

  # POST /facturaitems
  # POST /facturaitems.xml
  def create
    @facturaitem = Facturaitem.new(params[:facturaitem])

    respond_to do |format|
      if @facturaitem.save
        format.html { redirect_to(@facturaitem, :notice => 'Facturaitem was successfully created.') }
        format.xml  { render :xml => @facturaitem, :status => :created, :location => @facturaitem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @facturaitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /facturaitems/1
  # PUT /facturaitems/1.xml
  def update
    @facturaitem = Facturaitem.find(params[:id])

    respond_to do |format|
      if @facturaitem.update_attributes(params[:facturaitem])
        format.html { redirect_to(@facturaitem, :notice => 'Facturaitem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @facturaitem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /facturaitems/1
  # DELETE /facturaitems/1.xml
  def destroy
    @facturaitem = Facturaitem.find(params[:id])
    @facturaitem.destroy

    respond_to do |format|
      format.html { redirect_to(facturaitems_url) }
      format.xml  { head :ok }
    end
  end
end
