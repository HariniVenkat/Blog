class Article < ApplicationRecord

#this is validation....we have few more parameters to be added..

validates :title, presence: true,
                    length: { minimum: 5 }  


has_many :comments


end
