class Ability
  include CanCan::Ability

  def initialize(user)
    if
      user ||= User.new # guest
      can :manage, User, id: user.id
    else
      if
        user.admin?  # administrators
        can :manage, :all
      else
        can :read, :all
      end
    end
  end
end
