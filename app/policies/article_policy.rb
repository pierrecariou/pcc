class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :article
    def resolve
      scope.all
    end

    def index
      @articles = policy_scope(Article).order(created_at: :desc)
    end

    def new?
      create?
    end

    def create?
      true
    end

    def update?
      true
    end

    def update?
      record.user == user
      # - record: the restaurant passed to the `authorize` method in controller
      # - user:   the `current_user` signed in with Devise.
    end

    def destroy?
      record.user == user
    end
  end
end
