class IncidencesController < ApplicationController
  # GET /incidences
  # GET /incidences.xml
  def index
    @incidences = Incidence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @incidences }
    end
  end

  # GET /incidences/1
  # GET /incidences/1.xml
  def show
    @incidence = Incidence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incidence }
    end
  end

  # GET /incidences/new
  # GET /incidences/new.xml
  def new
    @incidence = Incidence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incidence }
    end
  end

  # GET /incidences/1/edit
  def edit
    @incidence = Incidence.find(params[:id])
  end

  # POST /incidences
  # POST /incidences.xml
  def create
    @incidence = Incidence.new(params[:incidence])

    respond_to do |format|
      if @incidence.save
        format.html { redirect_to(@incidence, :notice => 'Incidence was successfully created.') }
        format.xml  { render :xml => @incidence, :status => :created, :location => @incidence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incidence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incidences/1
  # PUT /incidences/1.xml
  def update
    @incidence = Incidence.find(params[:id])

    respond_to do |format|
      if @incidence.update_attributes(params[:incidence])
        format.html { redirect_to(@incidence, :notice => 'Incidence was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incidence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incidences/1
  # DELETE /incidences/1.xml
  def destroy
    @incidence = Incidence.find(params[:id])
    @incidence.destroy

    respond_to do |format|
      format.html { redirect_to(incidences_url) }
      format.xml  { head :ok }
    end
  end
end
