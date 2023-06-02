require 'rails_helper'

RSpec.describe 'get Customer subsciptions' do
  it 'can get all subscriptions from a customer' do
    customer1 = Customer.create!(first_name: 'William', last_name: 'L', email: 'william@email', address: 'address')
    tea1 = Tea.create!("title": 'Green Tea', description: 'green in color', temperature: '100 degrees',
                       brew_time: '20 minutes')
    tea2 = Tea.create!("title": 'Blue Tea', description: 'blue in color', temperature: '200 degrees',
                       brew_time: '30 minutes')
    subscription1 = Subscription.create!(title: tea1.title, price: 7, status: 0, frequency: 'once a month',
                                         customer_id: customer1.id)
    subscription2 = Subscription.create!(title: tea2.title, price: 10, status: 0, frequency: 'once a month',
                                         customer_id: customer1.id)

    get '/api/v1/customers/1/subscriptions'
    expect(response).to be_successful
    subscriptions = JSON.parse(response.body, symbolize_names: true)
    expect(subscriptions[:data][0]).to have_key(:id)
    expect(subscriptions[:data][0]).to have_key(:type)
    expect(subscriptions[:data][0][:attributes]).to have_key(:title)
    expect(subscriptions[:data][0][:attributes]).to have_key(:price)
    expect(subscriptions[:data][0][:attributes]).to have_key(:status)
    expect(subscriptions[:data][0][:attributes]).to have_key(:frequency)
    expect(subscriptions[:data][0][:attributes]).to have_key(:customer_id)
     
  end
end
