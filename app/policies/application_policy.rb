# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @user.user?
  end

  def show?
    @user.user?
  end

  def create?
    @user.user?
  end

  def new?
    create?
  end

  def update?
    @user.user?
  end

  def edit?
    update?
  end

  def destroy?
    @user.user?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
