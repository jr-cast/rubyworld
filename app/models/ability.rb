# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
      return unless user.present?
      can :delete, Post, user: user
      can :delete, Comment, user: user

      return unless user.admin?

      can: :delete, Post
      can: :delete, Comment
  end
end
