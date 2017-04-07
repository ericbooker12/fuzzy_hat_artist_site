FactoryGirl.define do
  factory :gallery do
    sequence :name do |n|
    	"Name #{n}"
    end
  end
end
