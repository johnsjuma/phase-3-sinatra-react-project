# This is where requests will be processed

class ApplicationController < Sinatra::Base
set :default_content_type, 'application/json'
  
    # spaAttendants table
  
    get '/spaAttendants' do
      loc =SpaAttendant.all.order(:first_name)
      loc.to_json
    end
  
    get '/spaAttendants/:id' do
      loc = SpaAttendant.find(params[:id])
      loc.to_json
    end
  
    post '/spaAttendants' do
      loc = SpaAttendant.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        phone: params[:phone],
        practice_type: params[:practice_type],
        town: params[:town],
        service_type: params[:service_type],
        service_id: params[:service_id]
      )
      loc.to_json
    end
  
    patch '/spaAttendant/:id' do
      patched = SpaAttendant.find(params[:id])
      patched.update(
        phone: params[:phone],
        address: params[:address],
        department: params[:department],
        practice_type: params[:practice_type],
        town: params[:town]
      )
      patched.to_json
    end
  
    put '/spaAttendant' do
      patched = SpaAttendant.find(params[:id])
      patched.update(
        phone: params[:phone],
        address: params[:address],
        department: params[:department],
        practice_type: params[:practice_type],
        town: params[:town]
      )
      patched.to_json
    end
  
    delete '/spaAttendant/:id' do
      deleted = SpaAttendant.find(params[:id])
      puts deleted
      deleted.destroy
      deleted.to_json
    end
  
    # service table
  
    get '/services' do
      service = Service.all.order(:service_name)
      service.to_json
    end
  
    get '/service/:id' do
      service = Service.find(params[:id])
      service.to_json
    end
  
    post '/service' do
      ail = Service.create(
        service_name: params[:service_name],
        service_type: params[:service_type]
      )
      ail.to_json
    end
  
    patch '/service/:id' do
      patched = Service.find(params[:id])
      patched.update(
        service_name: params[:service_name],
        service_type: params[:service_type]
      )
      patched.to_json
    end
  
    put '/service' do
      patched = Service.find(params[:id])
      patched.update(
        service_name: params[:service_name],
        service_type: params[:service_type]
      )
      patched.to_json
    end
  
    delete '/service/:id' do
      deleted = Service.find(params[:id])
      deleted.destroy
      deleted.to_json
    end
  
    # customer table
  
    get '/customers' do
     customer = Customers.all.order(:customer_name)
      customer.to_json
    end
  
    get '/customers/:id' do
      customer = Customers.find(params[:id])
      customer.to_json
    end
  
    post '/customers' do
      pat = Customers.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        gender: params[:gender],
        email: params[:email],
        phone: params[:phone],
        address: params[:address],
        town: params[:town],
        service_name: params[:service_name],
        service_type: params[:service_type],
        service_id: params[:service_id]
      )
      pat.to_json
    end
  
    patch '/customers/:id' do
      patched = Customers.find(params[:id])
      patched.update(
        phone: params[:phone],
        address: params[:address],
        town: params[:town],
        service_name: params[:service_name],
        service_type: params[:service_type],
        service_id: params[:service_id]
      )
      patched.to_json
    end
  
    put '/customers' do
      patched = Customers.find(params[:id])
      patched.update(
        phone: params[:phone],
        address: params[:address],
        town: params[:town],
        service_name: params[:service_name],
        service_type: params[:service_type],
        service_id: params[:service_id]
      )
      patched.to_json
    end
  
    delete '/customers/:id' do
      deleted = Customers.find(params[:id])
      deleted.destroy
      deleted.to_json
    end
  end