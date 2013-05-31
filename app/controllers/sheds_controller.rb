require 'rake'

class ShedsController < ApplicationController
  before_filter :authorize!, :load_tasks!, :find_tasks!
  
  def index
    render json: { tasks: @tasks }
  end
  
  def rake
    errors = nil
    task_name = params[:id].humanize
    task = @tasks.find{|t| t[:name] == task_name }
    if task
      begin
        rake_task = Rake.application.tasks.find{|t| t.name ==  task[:command]}
        rake_task.execute
      rescue Exception => e
        errors = e.to_s
      end
    else
      errors = "Task #{task_name} could not be found"
    end

    if errors
      render json: { errors: errors }
    else
      render json: :ok
    end
  end
  
  private
    def authorize!
      if ! Rails.env.development? || request.remote_ip != '127.0.0.1'
        raise ActiveResource::UnauthorizedAccess
      end
    end

    def load_tasks!
      Rake::Task.clear
      Rake.application.load('lib/tasks/shed.rake')
    end

    def find_tasks!
      @tasks ||= Rake.application.tasks.map do |task|
        namespace, name = task.name.split ':'
        {
          name: name.humanize,
          url: rake_shed_url(name),
          command: task.name
        } if namespace == Rakeshed::RAKE_NAMESPACE
      end
    end
end