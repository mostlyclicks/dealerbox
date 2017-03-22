class DealersController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]


	def index

	end

	def new
		@dealer = Dealer.new
	end

	def create
		@dealer = Dealer.new dealer_params

		if @dealer.save
			redirect_to @dealer, notice: "Dealer saved"
		else
			render 'new', notice: "Dealer was not saved"
		end
	end

	def show
		
	end

	def edit

	end

	def update
		if @dealer.update dealer_params
			redirect_to @dealer, notice: 'Dealer was saved'
		else
			render 'edit'
		end
	end

	def destroy
		@dealer.destroy
		redirect_to dealers_path
	end

	private

	def dealer_params
		params.require(:dealer).permit(:name, :address, :city, :state, :zip, :country, :phone, :email, :rep, :website, :facebook, :twitter, :instagram)
	end

	def find_post
		@dealer = Dealer.find(params[:id])
	end

end		



# @dealers = [
# 	{name: 'Bob Bikes', address: '123 Main St.', city: 'Anytown', state: 'UT', zip: '88888', country: 'US', phone: '555-555-5555', email: 'email@example.com', rep: 'Joe Rep', website: 'www.bikeshop.com', facebook: '/fb-account', twitter: '/twitter-account', instagram: 'inst-account'  },
# 	{name: 'BILLY BIKES', address: '9999 State St.', city: 'SmallTown', state: 'AZ', zip: '99999', country: 'US', phone: '666-666-6666', email: 'billy@billybikes.com', rep: 'Sam Rep', website: 'www.billybikes.com', facebook: '/fb-billybikes', twitter: '/twitter-billybikes', instagram: 'inst-billybikes'  }
# ]