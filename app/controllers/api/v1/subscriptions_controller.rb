class Api::V1::SubscriptionsController < ApplicationController
    def index
        customer = Customer.find(params[:id])
        subscriptions = customer.subscriptions
        render json: SubscriptionSerializer.new(subscriptions)
    end

    def create 
        customer = Customer.find(params[:id])
        tea = Tea.find(params[:tea_id])
        subscription = Subscription.create!(title: tea.title, price: 7, status: 0, frequency: "once a month", customer_id: customer.id)
        render json: SubscriptionSerializer.new(subscription)
    end

    def update
        subscription = Subscription.find(params[:id])
        subscription.update(status: 1)
        render json: SubscriptionSerializer.new(subscription)
    end
end