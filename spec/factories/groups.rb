FactoryGirl.define do
  factory :group do
    sequence :name do |n|
    	"Name #{n}"
    end
    thumbnail 1
    gallery
  end
end
