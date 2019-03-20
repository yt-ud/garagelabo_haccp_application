require 'kintone'
class FormsController < ApplicationController

  def entry
  end

  def post
    api = Kintone::Api.new("garagelabo.cybozu.com", "WaPombVC4MyXbfJo1OQ1WUlPYcEvSbobIZviXONp")
    app = 39

    checkboxes = {
      "select1" => "・帳票管理が面倒くさい。\n",
      "select2" => "・業務が止まってしまう。\n",
      "select3" => "・何から始めていいかわからない。\n",
      "select4" => "・導入コストが高い。\n",
      "select5" => "・専門知識を持っていない。\n",
      "select6" => "・業界団体の手引書がまだ発行されていないので、対応方法がわからない。\n",
      "select7" => "・自社内でだれが担当すればいいかがわからない。\n",
      "select8" => "・社内に導入に反発する人が多い。\n",
      "select9" => "・ISOやFSSC、JFSなどの規格認証を取得するかどうか悩んでいる。\n",
      "select10" => "・自社内でだれが担当すればいいかがわからない。\n"
    }

    haccp2 = ""
    checkboxes.each { |key, value|
      if params[:"#{key}"]
        haccp2 += value
      end
    }

    record = {
      "date" => {"value" => params[:date]},
      "namekannji" => {"value" => params[:namekannji]},
      "namefurigana" => {"value" => params[:namefurigana]},
      "namecompany" => {"value" => params[:namecompany]},
      "addresscompany" => {"value" => params[:addresscompany]},
      "phonenumber" => {"value" => params[:phonenumber]},
      "faxnumber" => {"value" => params[:faxnumber]},
      "haccp1" => {"value" => params[:haccp1]},
      "haccp2" => {"value" => haccp2},
      "other" =>  {"value" => params[:other]},
      "haccp3" => {"value" => params[:haccp3]}
    }
    api.record.register(app, record)
  end

end