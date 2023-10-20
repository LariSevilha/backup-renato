class Ability
  include CanCan::Ability

  def initialize(user)
    can :update, User, user: user
  end
end
