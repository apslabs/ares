class RecibosController < ApplicationController
  # GET /recibos
  # GET /recibos.xml
  
  def index
    @search = Recibo.search(params[:search])
    @recibos = @search.page(params[ :page ]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recibos }
    end
  end

  # GET /recibos/1
  # GET /recibos/1.xml
  def show
    @recibo = Recibo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recibo }
    end
  end

  # GET /recibos/new
  # GET /recibos/new.xml
  def new
    @recibo = Recibo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recibo }
    end
  end

  # GET /recibos/1/edit
  def edit
    @recibo = Recibo.find(params[:id])
  end

  # POST /recibos
  # POST /recibos.xml
  def create
    @recibo = Recibo.new(params[:recibo])

    respond_to do |format|
      if @recibo.save
        format.html { redirect_to(@recibo, :notice => 'Recibo was successfully created.') }
        format.xml  { render :xml => @recibo, :status => :created, :location => @recibo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recibo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recibos/1
  # PUT /recibos/1.xml
  def update
    @recibo = Recibo.find(params[:id])

    respond_to do |format|
      if @recibo.update_attributes(params[:recibo])
        format.html { redirect_to(@recibo, :notice => 'Recibo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recibo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recibos/1
  # DELETE /recibos/1.xml
  def destroy
    @recibo = Recibo.find(params[:id])
    @recibo.destroy

    respond_to do |format|
      format.html { redirect_to(recibos_url) }
      format.xml  { head :ok }
    end
  end
end
