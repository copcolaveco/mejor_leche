class ReportsController < ApplicationController

    def index
        @estates = current_user.estates.order(created_at: :desc)
        @payrolls = Payroll.where(:estate_id => params[:estate_selection])
    end

    def estate_selection
        @estate = params[:estate_selection]
        @payrolls = Payroll.where(:estate_id => @estate).all
        render :json => @payrolls.map{|c| [c.id, c.cell_count, c.saved_date]}
    end

end
