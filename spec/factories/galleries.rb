FactoryGirl.define do
  factory :gallery do
    sequence :name do |n|
    	"Name #{n}"
    end
    user
  end
end
