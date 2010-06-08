class AvaliacoesController < ApplicationController
  # GET /avaliacoes
  # GET /avaliacoes.xml
  def index
    @avaliacoes = Avaliacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @avaliacoes }
    end
  end

  # GET /avaliacoes/1
  # GET /avaliacoes/1.xml
  def show
    @avaliacao = Avaliacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @avaliacao }
    end
  end

  # GET /avaliacoes/new
  # GET /avaliacoes/new.xml
  def new
    @avaliacao = Avaliacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @avaliacao }
    end
  end

  # GET /avaliacoes/1/edit
  def edit
    @avaliacao = Avaliacao.find(params[:id])
  end

  # POST /avaliacoes
  # POST /avaliacoes.xml
  def create
    @avaliacao = Avaliacao.new(params[:avaliacao])

    respond_to do |format|
      if @avaliacao.save
        flash[:notice] = 'Avaliacao was successfully created.'
        format.html { redirect_to(@avaliacao) }
        format.xml  { render :xml => @avaliacao, :status => :created, :location => @avaliacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @avaliacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /avaliacoes/1
  # PUT /avaliacoes/1.xml
  def update
    @avaliacao = Avaliacao.find(params[:id])

    respond_to do |format|
      if @avaliacao.update_attributes(params[:avaliacao])
        flash[:notice] = 'Avaliacao was successfully updated.'
        format.html { redirect_to(@avaliacao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @avaliacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacoes/1
  # DELETE /avaliacoes/1.xml
  def destroy
    @avaliacao = Avaliacao.find(params[:id])
    @avaliacao.destroy

    respond_to do |format|
      format.html { redirect_to(avaliacoes_url) }
      format.xml  { head :ok }
    end
  end
end
