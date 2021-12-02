module ApplicationHelper
  ALERT_TYPES = [:danger, :info, :success, :warning, :notice, :alert, :error] unless const_defined?(:ALERT_TYPES)

  def eval_with_rescue(code)
    begin
      eval(code)
    rescue Exception => e
      "error"
    end
  end
end
