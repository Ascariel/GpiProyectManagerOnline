FactoryGirl.define do
  factory :project do
  sequence(:name)  { |i| "Proyecto N: #{i}" }
  description 'Alguna descripcion..'
  status { rand(4) }
  category { rand(4) }
  start_date { Time.current }
  end_date { Time.current }
  funding { ((rand(1000000000) + 10000000)/1000000)*1000000 }
  end
end
