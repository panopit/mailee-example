class MaileeTemplatesController < ApplicationController
  # GET /mailee_templates
  # GET /mailee_templates.xml
  def index
    @mailee_templates = Mailee::Template.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailee_templates }
    end
  end

  # GET /mailee_templates/1
  # GET /mailee_templates/1.xml
  def show
    @mailee_template = Mailee::Template.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailee_template }
    end
  end

  # GET /mailee_templates/new
  # GET /mailee_templates/new.xml
  def new
    @mailee_template = Mailee::Template.new(:title => '', :html => '')

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailee_template }
    end
  end

  # GET /mailee_templates/1/edit
  def edit
    @mailee_template = Mailee::Template.find(params[:id])
  end

  # POST /mailee_templates
  # POST /mailee_templates.xml
  def create
    @mailee_template = Mailee::Template.new(params[:mailee_template])

    respond_to do |format|
      if @mailee_template.save
        format.html { redirect_to(@mailee_template, :notice => 'Mailee template was successfully created.') }
        format.xml  { render :xml => @mailee_template, :status => :created, :location => @mailee_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailee_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailee_templates/1
  # PUT /mailee_templates/1.xml
  def update
    @mailee_template = Mailee::Template.find(params[:id])

    respond_to do |format|
      if @mailee_template.update_attributes(params[:mailee_template])
        format.html { redirect_to(@mailee_template, :notice => 'Mailee template was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailee_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailee_templates/1
  # DELETE /mailee_templates/1.xml
  def destroy
    @mailee_template = Mailee::Template.find(params[:id])
    @mailee_template.destroy

    respond_to do |format|
      format.html { redirect_to(mailee_templates_url) }
      format.xml  { head :ok }
    end
  end
end
