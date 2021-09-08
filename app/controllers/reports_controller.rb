class ReportsController < ApplicationController

    def index
        @payrolls = Payroll.where(:estate_id => params[:estate_selection])
        
        @p = Payroll.where(:estate_id => 1)
    end

    def estate_selection
        @estate = params[:estate_selection]
        @payrolls = Payroll.where(:estate_id => @estate).all
        render :json => @payrolls.map{|c| [c.id, c.cell_count]}
    end

end
