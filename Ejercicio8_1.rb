def customer_state(session_id = nil)
    return {state: 'chat_disabled'} unless Setting.get('chat')
  
    reconnect_data = reconnect(session_id)
    return reconnect_data if reconnect_data
  
    return {state: 'offline'} if Chat.active_agent_count([id]).zero?
  
    waiting_count = Chat.waiting_chat_count(id)
    return {state: 'online'} if max_queue < waiting_count
  
    {
      state: 'no_seats_available',
      queue: waiting_count
    }
  end
  
  def reconnect(session_id)
    return unless session_id
  
    chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])
    return unless chat_session
  
    case chat_session.state
      when 'running'
        running_state_data(chat_session, session_id)
      when 'waiting'
        {
          state: 'reconnect',
          position: chat_session.position,
        }
    end
  end
  
  def running_state_data(chat_session, session_id)
    return unless chat_session.user_id
  
    chat_user = User.lookup(id: chat_session.user_id)
    url = image_url(chat_user)
    user = {
      name: chat_user.fullname,
      avatar: url
    }
    session = Chat::Session.messages_by_session_id(session_id)
    return unless session
  
    {
      state: 'reconnect',
      session: session,
      agent: user
    }
  end
  
  def image_url(chat_user)
    invalid_image = chat_user.image.blank? || (chat_user.image == 'none')
    return if invalid_image
  
    "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
  end