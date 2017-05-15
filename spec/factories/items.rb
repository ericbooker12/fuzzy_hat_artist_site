include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :item do
    title "MyString"
    image { fixture_file_upload(Rails.root.join('spec', 'photos', 'test.png'), 'image/png') }
    length 1
    width 1
    height 1
    collection
  end
end
