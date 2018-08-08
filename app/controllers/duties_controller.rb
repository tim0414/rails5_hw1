class DutiesController < ApplicationController
    def create
        @duty = current_user.duties.build(duty_params)
        if @duty.save
            flash[:success] = "Duty created!"
            redirect_to root_url
        else
            render 'employee#index'
        end
    end

    def destroy
    end

    def set_employee(employee)
        @employee = employee
    end

    

    private
        def duty_params
            params.require(:duty).permit(:description)
        end
        
        def current_user()
            Employee.find_by(id: 1)
        end

        
end
