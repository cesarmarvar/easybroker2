class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy create_contact ]
  skip_before_action :verify_authenticity_token

  def index
    @current_page = [1, params[:page].to_i].max
    @results = HTTParty.get(
      "https://api.stagingeb.com/v1/properties?page=#{@current_page}&limit=15&search%5Bstatuses%5D%5B%5D=published", 
      headers: { "accept": "application/json", "X-Authorization": "l7u502p8v46ba3ppgvj5y2aad50lb9"} 
      )
    @properties = @results["content"]
  end

  def show
    @property 
  end

  def create_contact
    @contact = HTTParty.post('https://api.stagingeb.com/v1/contact_requests', 
        headers: { 
          "Content-type": "application/json",
          "X-Authorization": "l7u502p8v46ba3ppgvj5y2aad50lb9"
          }, 
        body: {
          name: params[:name],
          phone: params[:phone],
          email: params[:email],
          property_id: params[:id],
          message: params[:message],
          source: "mydomain.com"
        }.to_json
      )
  end


  private

    def set_property
      @property = HTTParty.get("https://api.stagingeb.com/v1/properties/#{params[:id]}", 
      headers: { "accept": "application/json", "X-Authorization": "l7u502p8v46ba3ppgvj5y2aad50lb9"})
    end

    def property_params
      params.require(:property).permit(:public_id, :title, :property_type, :location, :thumbnail_image)
    end
end
