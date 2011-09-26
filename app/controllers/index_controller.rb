class IndexController < ApplicationController

  def index
    redirect_to "http://365weiyi.com" , :status=>301
    return
    # Get the chat user by passing in the current cookie session
    @user = ChatUser.user(session)
  end

end
