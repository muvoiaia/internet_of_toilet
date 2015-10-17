module V1
  class Base < Grape::API
    version 'v1', using: :path

    rescue_from :all do |e|
      if Rails.env.development?
        raise e
      else
        error_response(message: "Internal server error", status: 500)
      end
    end
    mount V1::DeviseLogs
    #      mount V1::Rooms

  end
end

