class DutiesController < ApplicationController
    def create
        @duty = @@employee.duties.build(duty_params)
        if @duty.save
            flash[:success] = "Duty created!"
            #redirect_to employees_url
            redirect_back(fallback_location: employees_url)
        else
            render 'employee#index'
        end
    end

    def destroy
    end


    def self.set_employee(employee)
        @@employee = employee
        ""
    end

    

    private
        def duty_params
            params.require(:duty).permit(:description)
        end
    
        
        def current_user()
            Employee.find_by(id: 1)
        end

        
end
