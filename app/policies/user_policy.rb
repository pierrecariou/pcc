class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true
  end

  def edit?
    true
  end

   def update?
    true
  end



   def remove_photo?
    true
  end

  def circle_number_update?
    true
  end
end
