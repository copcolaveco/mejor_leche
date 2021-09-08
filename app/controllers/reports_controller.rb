class ReportsController < ApplicationController

    def index
        @payrolls = Payroll.where(:estate_id => params[:estate_id])
        @p = Payroll.where(:estate_id => 1)
    end

    def estate_selection
        @payrolls = Payroll.where(:estate_id => :estate_id)
    end

end
