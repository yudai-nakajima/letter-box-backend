class StoresController < ApplicationController
  def search
    stores = Store.search(params[:keyword])
    if stores
      render json: {data: stores}
    else
      render json: {message: "no data"}
    end
  end
end
