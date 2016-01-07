class User < ActiveRecord::Base
def user_params
      params.require(:user).permit(:name, :email)
end
has_many :microposts
end