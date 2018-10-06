class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all # allow everyone to read everything
    # return unless user && user.admin?
    if user.admin == true
        can :access, :rails_admin # only allow admin users to access Rails Admin
        can :dashboard
        can :manage, :all 
        can :history, :all        
    end
  end
end