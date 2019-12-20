require 'rails_helper'

RSpec.describe ReportsController, type: :routing do
  it "succes route" do
    expect(:get => "/reports/info").to route_to("reports#info")
  end
end
