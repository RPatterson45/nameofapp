class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.nil?
      can :read, :all
    elsif user.admin?
      can :manage, :all
    else
      can :manage, User, id: user.id
      can :read, :all
    end
  end
end
