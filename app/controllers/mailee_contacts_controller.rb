class MaileeContactsController < ApplicationController
  # GET /mailee_contacts
  # GET /mailee_contacts.xml
  def index
    @mailee_contacts = Mailee::Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailee_contacts }
    end
  end

  # GET /mailee_contacts/1
  # GET /mailee_contacts/1.xml
  def show
    @mailee_contact = Mailee::Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailee_contact }
    end
  end

end