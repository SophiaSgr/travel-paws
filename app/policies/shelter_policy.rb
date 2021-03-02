class ShelterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    true
  end
  
  def show?
    true
  end

  

end
