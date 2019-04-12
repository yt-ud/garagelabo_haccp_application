require 'kintone'
class FormsController < ApplicationController

  def entry
  end

  def confirm
    @checkboxes = {
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
    @checkboxes.each { |key, value|
      if params[:"#{key}"]
        haccp2 += value
      end
    }
    @post = {
     "date" => params[:date],
     "namekannji" => params[:namekannji],
     "namefurigana" => params[:namefurigana],
     "namecompany" => params[:namecompany],
     "addresscompany" => params[:addresscompany],
     "phonenumber" => params[:phonenumber],
     "email" => params[:email],
     "faxnumber" => params[:faxnumber],
     "haccp1" => params[:haccp1],
     "haccp2" => haccp2,
     "other" => params[:other],
     "haccp3" => params[:haccp3]
   }
  end

  def create
    if params[:back].present?
      redirect_to "/entry"
    else
      @record = {
      "date" => {"value" => params[:date]},
      "namekannji" => {"value" => params[:namekannji]},
      "namefurigana" => {"value" => params[:namefurigana]},
      "namecompany" => {"value" => params[:namecompany]},
      "addresscompany" => {"value" => params[:addresscompany]},
      "phonenumber" => {"value" => params[:phonenumber]},
      "email" => {"value" => params[:email]},
      "faxnumber" => {"value" => params[:faxnumber]},
      "haccp1" => {"value" => params[:haccp1]},
      "haccp2" => {"value" => params[:haccp2]},
      "other" =>  {"value" => params[:other]},
      "haccp3" => {"value" => params[:haccp3]}
      }
      api = Kintone::Api.new("garagelabo.cybozu.com", "wYQmJdGHEOODJWmlWWMqY8bdkvQMpU0Y5ZUrf7kf")
      app = 40
      api.record.register(app, @record)
    end
  end

end