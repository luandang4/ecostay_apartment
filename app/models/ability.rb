class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role.house_owner?
      can [:read, :update, :destroy], ActiveAdmin::Page, name: 'Dashboard'
      can [:read, :update, :destroy], Apartment, admin_user: user
      can [:read, :update, :destroy], Service, apartment: user.apartments
      can [:read, :update, :destroy], Room, apartment: user.apartments
      can [:read, :update, :destroy], User
    end

    if user.role.admin?
      can :manage, :all
    end
  end
end
