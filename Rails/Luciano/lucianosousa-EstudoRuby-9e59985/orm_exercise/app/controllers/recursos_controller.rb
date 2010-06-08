class RecursosController < ApplicationController
  # GET /recursos
  # GET /recursos.xml
  def index
    @recursos = Recurso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recursos }
    end
  end

  # GET /recursos/1
  # GET /recursos/1.xml
  def show
    @recurso = Recurso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recurso }
    end
  end

  # GET /recursos/new
  # GET /recursos/new.xml
  def new
    @recurso = Recurso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recurso }
    end
  end

  # GET /recursos/1/edit
  def edit
    @recurso = Recurso.find(params[:id])
  end

  # POST /recursos
  # POST /recursos.xml
  def create
    @recurso = Recurso.new(params[:recurso])

    respond_to do |format|
      if @recurso.save
        flash[:notice] = 'Recurso was successfully created.'
        format.html { redirect_to(@recurso) }
        format.xml  { render :xml => @recurso, :status => :created, :location => @recurso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recurso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recursos/1
  # PUT /recursos/1.xml
  def update
    @recurso = Recurso.find(params[:id])

    respond_to do |format|
      if @recurso.update_attributes(params[:recurso])
        flash[:notice] = 'Recurso was successfully updated.'
        format.html { redirect_to(@recurso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recurso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recursos/1
  # DELETE /recursos/1.xml
  def destroy
    @recurso = Recurso.find(params[:id])
    @recurso.destroy

    respond_to do |format|
      format.html { redirect_to(recursos_url) }
      format.xml  { head :ok }
    end
  end
end
