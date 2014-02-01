class User < ActiveRecord::Base
  validates :email, uniqueness: true, format: {with: /\A([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})\z/, message: "not a valid email"}
  validates :password, format: { with: /\A((?=.*[^a-zA-Z])(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{3,})\z/, message: "not a valid password" }
  validates :name, presence: true

  has_many :posts

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user && password == user.password
      return user
    else
      false
    end
  end

  def self.signup(args)
    name = args[:name]
    email = args[:email]
    password = args[:password]
    User.create(name: name, email: email, password: password)
  end

  def self.session(value)
    @user = User.find(session[:value]) if value.is_a?(Integer)
  end

end
