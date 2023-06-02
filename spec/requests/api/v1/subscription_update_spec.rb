require 'rails_helper'

RSpec.describe 'create a Customer subsciption' do
  it 'creates a subscription for a customer given a tea_id ' do
    customer1 = Customer.create!(first_name: 'William', last_name: 'L', email: 'william@email', address: 'address')

    tea1 = Tea.create!("title": 'Green Tea', description: 'green in color', temperature: '100 degrees',
                       brew_time: '20 minutes')
    tea2 = Tea.create!("title": 'Blue Tea', description: 'blue in color', temperature: '200 degrees',
                       brew_time: '30 minutes')

    subscription1 = Subscription.create!(title: tea1.title, price: 7, status: 0, frequency: 'once a month',
                                         customer_id: customer1.id)
    subscription2 = Subscription.create!(title: tea2.title, price: 10, status: 0, frequency: 'once a month',
                                         customer_id: customer1.id)

    tea3 = Tea.create!("title": 'Red Tea', description: 'red in color', temperature: '200 degrees',
                       brew_time: '30 minutes')
    
    subscription3 = Subscription.create!(title: tea3.title, price: 7, status: 0, frequency: "once a month", customer_id: customer1.id)

    patch "/api/v1/customers/1/subscriptions/3"
    expect(response).to be_successful
    subscription = JSON.parse(response.body, symbolize_names: true)
    expect(subscription[:data]).to have_key(:id)
    expect(subscription[:data]).to have_key(:type)
    expect(subscription[:data][:attributes]).to have_key(:title)
    expect(subscription[:data][:attributes]).to have_key(:price)
    expect(subscription[:data][:attributes]).to have_key(:status)
    expect(subscription[:data][:attributes]).to have_key(:frequency)
    expect(subscription[:data][:attributes]).to have_key(:customer_id)
    expect(subscription[:data][:attributes][:status]).to eq("canceled")
  end
end
