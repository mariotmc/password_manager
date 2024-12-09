class UserPassword < ApplicationRecord
  belongs_to :user
  belongs_to :password

  enum role: { viewer: 0, editor: 1, owner: 2 }, _default: :viewer

  validates :role, presence: true, inclusion: { in: roles.keys }

  def editable?
    owner? || editor?
  end

  def shareable?
    owner?
  end

  def deletable?
    owner?
  end
end
