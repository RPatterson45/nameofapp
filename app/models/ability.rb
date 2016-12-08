class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all   
    else
      can :read, [Product, Comment]
      can :manage, User, id: user.id
    end
  end
end
