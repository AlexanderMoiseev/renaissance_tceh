class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :user_cars, dependent: :destroy
  has_many :user_insurances, dependent: :destroy
  has_many :insurances, through: :user_insurances
  has_many :cars, through: :user_cars

  def get_icon
    if role.name == "user"
      return "glyphicon-user"
    end

    if role.name == "tech"
      return "glyphicon-cog"
    end
      "glyphicon-lock"
  end

end
