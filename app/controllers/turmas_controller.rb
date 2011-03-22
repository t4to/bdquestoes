class TurmasController < ApplicationController
  # GET /turmas
  # GET /turmas.xml
  def index
    @turmas = Turma.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @turmas }
    end
  end

  # GET /turmas/1
  # GET /turmas/1.xml
  def show
    @turma = Turma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @turma }
    end
  end

  # GET /turmas/new
  # GET /turmas/new.xml
  def new
    @turma = Turma.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @turma }
    end
  end

  # GET /turmas/1/edit
  def edit
    @turma = Turma.find(params[:id])
  end

  # POST /turmas
  # POST /turmas.xml
  def create
    @turma = Turma.new(params[:turma])

    respond_to do |format|
      if @turma.save
        format.html { redirect_to(@turma, :notice => 'Turma was successfully created.') }
        format.xml  { render :xml => @turma, :status => :created, :location => @turma }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @turma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /turmas/1
  # PUT /turmas/1.xml
  def update
    @turma = Turma.find(params[:id])

    respond_to do |format|
      if @turma.update_attributes(params[:turma])
        format.html { redirect_to(@turma, :notice => 'Turma was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @turma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /turmas/1
  # DELETE /turmas/1.xml
  def destroy
    @turma = Turma.find(params[:id])
    @turma.destroy

    respond_to do |format|
      format.html { redirect_to(turmas_url) }
      format.xml  { head :ok }
    end
  end
end
