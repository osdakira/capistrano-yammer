Capistrano::Configuration.instance(:must_exist).load do
  namespace :yammer do
    desc "Notify a Yammer account that a deploy just started"
    task :notify_deploy_start do
      yammer.notify(yammer_message("[START]"))
    end

    desc "Notify a Yammer account that a deploy just finished"
    task :notify_deploy_success do
      yammer.notify(yammer_message("[END]"))

    end

    desc "Notify a Yammer account that a deploy just failed"
    task :notify_deploy_fail do
      yammer.notify(yammer_message("end"))
    end
  end

  def yammer
    Yammer.new(fetch(:yammer_options))
  end

  def yammer_message(action)
    name = `git config --get user.name`.strip
    task_name = @logger.instance_variable_get(:@options)[:actions].last.capitalize || "Deploy"
    action_name = format "%-5s", action
    "#{application.upcase}::#{action_name}: #{task_name} [#{stage}:#{branch}] by【#{name}】"
  end

  before "deploy",          "yammer:notify_deploy_start"
  after  "deploy",          "yammer:notify_deploy_success"
  after  "deploy:rollback", "yammer:notify_deploy_fail"
end
