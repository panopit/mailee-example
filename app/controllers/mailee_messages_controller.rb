class MaileeMessagesController < ApplicationController
  # GET /mailee_messages
  # GET /mailee_messages.xml
  def index
    @mailee_messages = Mailee::Message.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailee_messages }
    end
  end

  # GET /mailee_messages/1
  # GET /mailee_messages/1.xml
  def show
    @mailee_message = Mailee::Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailee_message }
    end
  end

  # GET /mailee_messages/new
  # GET /mailee_messages/new.xml
  def new
    @mailee_message = Mailee::Message.new(:newsletter_id => '', :template_id => '', :list_id => '', :contacts => '', :segment_id => '', :title => '', :subject => '', :from_name => '', :from_email => '', :reply_email => '', :html => '', :analytics => true)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailee_message }
    end
  end

  # GET /mailee_messages/1/edit
  def edit
    @mailee_message = Mailee::Message.find(params[:id])
  end

  # POST /mailee_messages
  # POST /mailee_messages.xml
  def ready
    @mailee_message = Mailee::Message.find(params[:id])
    @mailee_message.ready
    redirect_to @mailee_message
  end
  def create
#    raise params[:mailee_message].inspect
    params[:mailee_message][:content_from] ||= 2 if params[:mailee_message][:html] != ''
    params[:mailee_message][:content_from] ||= 1 if params[:mailee_message][:template_id] != ''

    params[:mailee_message].delete(:contacts) if params[:mailee_message][:contacts] == ''
    
#    raise params[:mailee_message].inspect
    
    @mailee_message = Mailee::Message.new(params[:mailee_message])

    respond_to do |format|
      if @mailee_message.save
        format.html { redirect_to(@mailee_message, :notice => 'Mailee message was successfully created.') }
        format.xml  { render :xml => @mailee_message, :status => :created, :location => @mailee_message }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailee_message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailee_messages/1
  # PUT /mailee_messages/1.xml
  def update
    @mailee_message = Mailee::Message.find(params[:id])

    respond_to do |format|
      if @mailee_message.update_attributes(params[:mailee_message])
        format.html { redirect_to(@mailee_message, :notice => 'Mailee message was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailee_message.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailee_messages/1
  # DELETE /mailee_messages/1.xml
  def destroy
    @mailee_message = Mailee::Message.find(params[:id])
    @mailee_message.destroy

    respond_to do |format|
      format.html { redirect_to(mailee_messages_url) }
      format.xml  { head :ok }
    end
  end
end
