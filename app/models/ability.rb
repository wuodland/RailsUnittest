class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new
    if user.admin?
       can :manage, :all
    elsif user.driver?
      can :read, :all
      can :manage, Car
    elsif user.customer?
      can :read, :all
      can :manage, Booking
    else       
      can :read, :all 
    end
  end
end
