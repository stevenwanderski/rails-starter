FactoryBot.define do
  factory :user do
    email { 'frank@zappa.com' }
    password { 'testtest' }
    password_confirmation { 'testtest' }
  end
end
