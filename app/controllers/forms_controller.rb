require 'kintone'
class FormsController < ApplicationController

  def entry
  end

  def post
    api = Kintone::Api.new("garagelabo.cybozu.com", "WaPombVC4MyXbfJo1OQ1WUlPYcEvSbobIZviXONp")
    app = 39

    record = {
      "date" => {"value" => params[:date]},
      "namekannji" => {"value" => params[:namekannji]},
      "namefurigana" => {"value" => params[:namefurigana]},
      "namecompany" => {"value" => params[:namecompany]},
      "addresscompany" => {"value" => params[:addresscompany]},
      "phonenumber" => {"value" => params[:phonenumber]},
      "faxnumber" => {"value" => params[:faxnumber]},
      "haccp1" => {"value" => params[:haccp]},
      "haccp2" => {"value" => params[:select1]}
    }

    api.record.register(app, record)
  end

end
