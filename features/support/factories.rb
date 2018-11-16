FactoryBot.define do
    factory :customer, class: User do
    email {"c@ait.asia"}
    password {"password"}
    password_confirmation {"password"}
    role {"customer"}
    end

    factory :driver, class: User do
    email {"d@ait.asia"}
    password {"password"}
    password_confirmation {"password"}
    role {"driver"}


    end

    factory :car2, class: Car do

    end

    factory :booking, class: Booking do
        queue_id {1}
        number_of_seats {1}
        status {"active"}
    end
    factory :car, class: Car do
        queue_id {1}
        available_seats {4}
        car_number {'HHH22222'}
        status {'in_queue'}
    end
end