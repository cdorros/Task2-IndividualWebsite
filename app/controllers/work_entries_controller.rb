class WorkEntriesController < ApplicationController

#AUTO GENERATED METHODS:
  # GET /work_entries
  # GET /work_entries.xml
  def index
    @work_entries = WorkEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_entries }
    end
  end

  # GET /work_entries/1
  # GET /work_entries/1.xml
  def show
    @work_entry = WorkEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_entry }
    end
  end

  # GET /work_entries/new
  # GET /work_entries/new.xml
  def new
    @work_entry = WorkEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_entry }
    end
  end

  # GET /work_entries/1/edit
  def edit
    @work_entry = WorkEntry.find(params[:id])
  end

  # POST /work_entries
  # POST /work_entries.xml
  def create
    @work_entry = WorkEntry.new(params[:work_entry])

    respond_to do |format|
      if @work_entry.save
        format.html { redirect_to(@work_entry, :notice => 'Work entry was successfully created.') }
        format.xml  { render :xml => @work_entry, :status => :created, :location => @work_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_entries/1
  # PUT /work_entries/1.xml
  def update
    @work_entry = WorkEntry.find(params[:id])

    respond_to do |format|
      if @work_entry.update_attributes(params[:work_entry])
        format.html { redirect_to(@work_entry, :notice => 'Work entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_entries/1
  # DELETE /work_entries/1.xml
  def destroy
    @work_entry = WorkEntry.find(params[:id])
    @work_entry.destroy

    respond_to do |format|
      format.html { redirect_to(work_entries_url) }
      format.xml  { head :ok }
    end
  end
end
