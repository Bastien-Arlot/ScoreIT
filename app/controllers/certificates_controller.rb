class CertificatesController < ApplicationController

  def index
    @scores = Score.all
    @find = 0
  end

end
