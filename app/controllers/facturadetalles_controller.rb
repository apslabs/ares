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
     @factura = Factura.find(params[:factura_id])

     respond_to do |format|
       format.html # new.html.erb
       format.xml  { render :xml => @facturadetalle }
     end
   end

  # GET /facturadetalles/1/edit
  #def edit
  #  @facturadetalle = Facturadetalle.find(params[:id])
  #end

  def edit
    @facturadetalle = Facturadetalle.find(params[:id])
    @factura = Factura.find(@facturadetalle.factura_id)
  end

  # POST /facturadetalles
  # POST /facturadetalles.xml
  def create
    @factura = Factura.find(params[:factura_id])
    @facturadetalle = @factura.facturadetalle.create(params[:facturadetalle])
    
    #@facturadetalle = Facturadetalle.new(params[:facturadetalle])

    respond_to do |format|
      if @facturadetalle.save
        format.html { redirect_to(@factura, :notice => 'Facturadetalle was successfully created.') }
        format.xml  { render :xml => @factura, :status => :created, :location => @factura }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @factura.errors, :status => :unprocessable_entity }
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
    @factura = Factura.find(@facturadetalle.factura_id)
    @facturadetalle.destroy

    respond_to do |format|
      format.html { redirect_to(edit_factura_url(@factura)) }
      format.xml  { head :ok }

      #format.html { redirect_to(factura_url) }
      #format.xml  { head :ok }
    end
  end
end
