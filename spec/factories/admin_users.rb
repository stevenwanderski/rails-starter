FactoryBot.define do
  factory :admin_user do
    email { 'admin@admin.com' }
    password { 'testtest' }
    password_confirmation { 'testtest' }
  end
end
