class MaileeListsController < ApplicationController
  # GET /mailee_lists
  # GET /mailee_lists.xml
  def index
    @mailee_lists = Mailee::List.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailee_lists }
    end
  end

  # GET /mailee_lists/1
  # GET /mailee_lists/1.xml
  def show
    @mailee_list = Mailee::List.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailee_list }
    end
  end

  # GET /mailee_lists/new
  # GET /mailee_lists/new.xml
  def new

    @mailee_list = Mailee::List.new :name => '', :active => '', :company => '', :description => '', :address => '', :phone => '', :site => ''

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailee_list }
    end
  end

  # GET /mailee_lists/1/edit
  def edit
    @mailee_list = Mailee::List.find(params[:id])
  end

  # POST /mailee_lists
  # POST /mailee_lists.xml
  def create
    @mailee_list = Mailee::List.new(params[:mailee_list])

    respond_to do |format|
      if @mailee_list.save
        format.html { redirect_to(@mailee_list, :notice => 'Mailee list was successfully created.') }
        format.xml  { render :xml => @mailee_list, :status => :created, :location => @mailee_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailee_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailee_lists/1
  # PUT /mailee_lists/1.xml
  def update
    @mailee_list = Mailee::List.find(params[:id])

    respond_to do |format|
      if @mailee_list.update_attributes(params[:mailee_list])
        format.html { redirect_to(@mailee_list, :notice => 'Mailee list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailee_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailee_lists/1
  # DELETE /mailee_lists/1.xml
  def destroy
    @mailee_list = Mailee::List.find(params[:id])
    @mailee_list.destroy

    respond_to do |format|
      format.html { redirect_to(mailee_lists_url) }
      format.xml  { head :ok }
    end
  end
end
