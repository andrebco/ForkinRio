class AssessoresController < ApplicationController
  # GET /assessores
  # GET /assessores.xml
  def index
    @assessores = Assessor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assessores }
    end
  end

  # GET /assessores/1
  # GET /assessores/1.xml
  def show
    @assessor = Assessor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assessor }
    end
  end

  # GET /assessores/new
  # GET /assessores/new.xml
  def new
    @assessor = Assessor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assessor }
    end
  end

  # GET /assessores/1/edit
  def edit
    @assessor = Assessor.find(params[:id])
  end

  # POST /assessores
  # POST /assessores.xml
  def create
    @assessor = Assessor.new(params[:assessor])

    respond_to do |format|
      if @assessor.save
        flash[:notice] = 'Assessor was successfully created.'
        format.html { redirect_to(@assessor) }
        format.xml  { render :xml => @assessor, :status => :created, :location => @assessor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assessor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assessores/1
  # PUT /assessores/1.xml
  def update
    @assessor = Assessor.find(params[:id])

    respond_to do |format|
      if @assessor.update_attributes(params[:assessor])
        flash[:notice] = 'Assessor was successfully updated.'
        format.html { redirect_to(@assessor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assessor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assessores/1
  # DELETE /assessores/1.xml
  def destroy
    @assessor = Assessor.find(params[:id])
    @assessor.destroy

    respond_to do |format|
      format.html { redirect_to(assessores_url) }
      format.xml  { head :ok }
    end
  end
end
