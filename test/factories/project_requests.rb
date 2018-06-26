FactoryGirl.define do
  factory :project_request do
    sequence(:name)  { |i| "Solicitud N: #{i}" }
    sequence(:description) { |i| "Alguna descripcion para la solicitud N: #{i}.." }
    status { rand(2) }
    category { rand(4) }
    created_at { Time.current }
  end
end
