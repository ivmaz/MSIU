class Film < ActiveRecord::Base

  scope :full_load, includes(:genres, :countries, :people, :contracts)
  

  has_many :contracts
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :people,:order => 'name'
  has_attached_file :cover, :styles => { :medium => "200x", :thumb => "64x" }

  validates_attachment_content_type :cover,:content_type=>/^image\/(gif|png|x\-png|jpeg|jpg|pjpeg)$/

  validates :name,:presence=>true
  # validates :country_id,:presence => true
  
  validates :length,:numericality => {:only_integer=>true,:greater_than=>0},:allow_blank => true
  validates :year,:numericality => {:only_integer=>true,:greater_than=>1900},:allow_blank => true
  validates :trailer_url,:format => /\w+/i,:allow_blank => true
  attr_reader :person_tokens
  attr_reader :genre_tokens
  attr_reader :country_tokens
  attr_reader :post_tokens
  
  
  def task_attributes=(task_attributes)
    task_attributes.each do |attributes|
      tasks.build(attributes)
    end
  end
  

  
  def person_tokens=(ids)
    self.person_ids = ids.split(",")
  end
  
  
  def genre_tokens=(ids)
    self.genre_ids = ids.split(",")
  end
  
  def country_tokens=(ids)
    self.country_ids = ids.split(",")
  end
  
  def post_tokens=(ids)
    self.person_ids = ids.split(",")
  end
  
  def can_be_edited?(user)
    user && user.admin?
  end

  def title
    res=name
    res+=" (#{year})" if year
    res
  end
end
