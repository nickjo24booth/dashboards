class CovidController < ApplicationController
  def summary_page
    require "date"

    @today = Date.today

    render({ :template => "covid_templates/summary.html.erb" })
  end
end
