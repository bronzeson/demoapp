class Micropost < ActiveRecord::Base
def user_params
      params.require(:user).permit(:name, :email)
end
belongs_to :user
validates :content, :length => { :maximum => 140 }
end