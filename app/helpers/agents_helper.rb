module AgentsHelper
  # Returns a dynamic path based on the provided parameters
  def sti_agent_path(type = 'agent', agent = nil, action = nil)
    send "#{format_sti(action, type, agent)}_path", agent
  end

  def format_sti(action, type, agent)
    action || agent ? "#{format_action(action)}#{type.underscore}" : type.underscore.pluralize.to_s
  end

  def format_action(action)
    action ? "#{action}_" : ''
  end
end
