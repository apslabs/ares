class FacturasController < ApplicationController
  # GET /facturas
  # GET /facturas.xml
  before_filter :authenticate_user!
  
  def index
    @facturas = Factura.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facturas }
    end
  end

  # GET /facturas/1
  # GET /facturas/1.xml
  def show
    @factura = Factura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @factura }
    end
  end

  # GET /facturas/new
  # GET /facturas/new.xml
  def new
    @factura = Factura.new
    @cliente = Cliente.find(params[:cliente_id])
    @factura.cliente_id = @cliente.id
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @factura }
    end
  end

  # GET /facturas/1/edit
  def edit
    @factura = Factura.find(params[:id])
  end

  # POST /facturas
  # POST /facturas.xml
  def create
    @factura = Factura.new(params[:factura])

    respond_to do |format|
      if @factura.save
        format.html { redirect_to(@factura, :notice => 'Factura was successfully created.') }
        format.xml  { render :xml => @factura, :status => :created, :location => @factura }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @factura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /facturas/1
  # PUT /facturas/1.xml
  def update
    @factura = Factura.find(params[:id])

    respond_to do |format|
      if @factura.update_attributes(params[:factura])
        format.html { redirect_to(@factura, :notice => 'Factura was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @factura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.xml
  def destroy
    @factura = Factura.find(params[:id])
    @factura.destroy

    respond_to do |format|
      format.html { redirect_to(facturas_url) }
      format.xml  { head :ok }
    end
  end
end
