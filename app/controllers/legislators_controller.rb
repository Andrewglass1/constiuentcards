class LegislatorsController < ApplicationController
  def index
    legislators = [
      {name: "Peter J. Abbate, Jr.", street_address: "123 Stuff Ave", city: "New York", state: "NY", zip: "12121"},
      {name: "Thomas J. Abinanti", street_address: "123 Stuff Ave", city: "New York", state: "NY", zip: "12121"},
      {name: "Carmen E. Arroyo", street_address: "123 Stuff Ave", city: "New York", state: "NY", zip: "12121"},
      {name: "Jeffrion L. Aubry", street_address: "123 Stuff Ave", city: "New York", state: "NY", zip: "12121"}
    ]

    respond_to do |format|
      format.json do
        # Adding this as a placeholder until we can fetch actual legislator data
        render json: legislators
      end
    end
  end
end
