class CarsController < ApplicationController
  def index
		@data=Car.all
  end
  
  def input
  
  end
  
  def detail
		@data=Car.find_by(id:params[:id])
  end  
  
  def edit
	@data=Car.find_by(id:params[:id])
  
  end
  
  def update
      
	    @data =Car.find_by(id:params[:id])
		@data.merk=params[:merk]
		@data.publish=params[:publish]
		@data.merk=params[:harga]
		@data.save
	    flash[:pesan]="data berhasil diupdate"
		redirect_to("/cars/")
  end
  
  def delete 
			  @data =Car.find_by(id:params[:id])
			  @data.destroy
			  flash[:pesan]="data berhasil dihapus"
			  redirect_to("/cars/")

  end
  def create 
	@data =Car.new(merk:params[:merk],publish:params[:publish],harga:params[:harga])
	@data.save
	flash[:pesan]="data berhasil disimpan"
	redirect_to("/cars/")
  end
end
