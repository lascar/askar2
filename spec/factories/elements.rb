FactoryGirl.define do
  factory :element_valid_1, class: Element do
    name 'element 1'
    description 'first element'
  end

  factory :element_valid_2, class: Element do
    name 'element 2'
    description 'second element'
  end

  factory :element_invalid, class: Element do
    description 'invalid element'
  end

end
