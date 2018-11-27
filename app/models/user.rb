class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship", foreign_key: "collaborator_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "collaborated_id", dependent: :destroy

  has_many :collaborations, through: :active_relationships, source: :collaborated

  def collaborate(other)
    active_relationships.create(collaborated_id: other.id)
  end
  def uncollaborate(other)
    active_relationships.find_by(collaborated_id: other.id).destroy
  end
  def collaborating?(other)
    following.include?(other)
  end
  def show
    @user = User.find(params[:id])
  end
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
