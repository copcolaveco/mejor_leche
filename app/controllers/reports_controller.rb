class ReportsController < ApplicationController
    before_action :set_report, only: [ :show ,:edit ,:update ,:destroy ]

    def index
        @estates = current_user.estates.order(created_at: :desc)
        cambiarPredio
    end

    def new
		@report = Report.new
	end
        
    def cambiarPredio
        @p = Payroll.where(:estate_id => 1)
    end

    def update_graphics
        @payrolls = Payroll.where(:estate_id => params[:estate_id])
        respond_to do |format|
            format.js
            format.html
        end
    end

end
