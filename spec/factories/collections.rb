FactoryGirl.define do
  factory :collection do
    sequence :name do |n|
    	"Name #{n}"
    end
    thumbnail 1
    gallery
  end
end
