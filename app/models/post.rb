class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :presence=>true,:exclusion=>{:in=>[" "]}
end
