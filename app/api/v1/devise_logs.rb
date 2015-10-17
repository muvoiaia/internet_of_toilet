module V1
  class DeviseLogs < Grape::API

    helpers do
      def devise
        Devise.where(address: params[:devise_address]).first
      end
    end

    resource :devise_log do
      # トイレ状態
      desc 'POST /api/v1/devise_log'
      params do
        requires :vacant
        requires :devise_address
      end
      post '' do
        DeviseLog.create(devise: devise, vacant: params[:vacant] )
      end
    end
  end
end

