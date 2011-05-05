class UsuarioempresasController < ApplicationController
  # GET /usuarioempresas
  # GET /usuarioempresas.xml
  def index
    @usuarioempresas = Usuarioempresa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usuarioempresas }
    end
  end

  # GET /usuarioempresas/1
  # GET /usuarioempresas/1.xml
  def show
    @usuarioempresa = Usuarioempresa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usuarioempresa }
    end
  end

  # GET /usuarioempresas/new
  # GET /usuarioempresas/new.xml
  def new
    @usuarioempresa = Usuarioempresa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usuarioempresa }
    end
  end

  # GET /usuarioempresas/1/edit
  def edit
    @usuarioempresa = Usuarioempresa.find(params[:id])
  end

  # POST /usuarioempresas
  # POST /usuarioempresas.xml
  def create
    @usuarioempresa = Usuarioempresa.new(params[:usuarioempresa])

    respond_to do |format|
      if @usuarioempresa.save
        format.html { redirect_to(@usuarioempresa, :notice => 'Usuarioempresa was successfully created.') }
        format.xml  { render :xml => @usuarioempresa, :status => :created, :location => @usuarioempresa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usuarioempresa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usuarioempresas/1
  # PUT /usuarioempresas/1.xml
  def update
    @usuarioempresa = Usuarioempresa.find(params[:id])

    respond_to do |format|
      if @usuarioempresa.update_attributes(params[:usuarioempresa])
        format.html { redirect_to(@usuarioempresa, :notice => 'Usuarioempresa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usuarioempresa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarioempresas/1
  # DELETE /usuarioempresas/1.xml
  def destroy
    @usuarioempresa = Usuarioempresa.find(params[:id])
    @usuarioempresa.destroy

    respond_to do |format|
      format.html { redirect_to(usuarioempresas_url) }
      format.xml  { head :ok }
    end
  end
end
