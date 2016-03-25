class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, :presence=>true,:exclusion=>{:in=>[" "]}
  validates :body, :presence=>true,:exclusion=>{:in=>[" "]}
end
