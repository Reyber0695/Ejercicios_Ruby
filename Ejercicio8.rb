def customer_state(session_id = nil)
  return { state: 'chat_disabled' } unless Setting.get('chat')

  reconnect_data = reconnect(session_id)
  return reconnect_data if reconnect_data
  find_user(session_id)
  find_session(session_id) 
  return { state: 'offline' } if Chat.active_agent_count([id]).zero?
  { state: 'online' }
end

end

def find_user(session_id)
  return unless session_id
  chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])
  return unless chat_session
  user = nil if chat_session.state == 'running'
  return unless chat_session.user_id
  chat_user = User.lookup(id: chat_session.user_id)
  url = nil
  url = "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
  if chat_user.image && chat_user.image != 'none'
  user = {
  name: chat_user.fullname,
  avatar: url,
  }
  find_waiting(chat_session)
end

def find_session(session_id)
  return unless session_id
  session = Chat::Session.messages_by_session_id(session_id)
  return unless Session
  return {
    state:   'reconnect',
    session: session,
    agent:   user,
  }
end

def find_waiting(value)
  if value.state == 'waiting'
    return {
      state: 'reconnect',
      position: value.position,
      }
  end 
end

def find_waiting_chat(chat)
  waiting_count = Chat.waiting_chat_count(id)
  if waiting_count >= max_queue
  return {
    state: 'no_seats_available',
    queue: waiting_count,
      }
  end
end