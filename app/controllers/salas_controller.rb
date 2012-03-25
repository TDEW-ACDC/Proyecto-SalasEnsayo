class SalasController < ApplicationController
  # GET /salas
  # GET /salas.json
  def index
    @salas = Sala.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salas }
    end
  end

  # GET /salas/1
  # GET /salas/1.json
  def show
    @sala = Sala.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sala }
    end
  end

  # GET /salas/new
  # GET /salas/new.json
  def new
    @sala = Sala.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sala }
    end
  end

  # GET /salas/1/edit
  def edit
    @sala = Sala.find(params[:id])
  end

  # POST /salas
  # POST /salas.json
  def create
    @sala = Sala.new(params[:sala])

    respond_to do |format|
      if @sala.save
        format.html { redirect_to @sala, notice: 'Sala was successfully created.' }
        format.json { render json: @sala, status: :created, location: @sala }
      else
        format.html { render action: "new" }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salas/1
  # PUT /salas/1.json
  def update
    @sala = Sala.find(params[:id])

    respond_to do |format|
      if @sala.update_attributes(params[:sala])
        format.html { redirect_to @sala, notice: 'Sala was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sala.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salas/1
  # DELETE /salas/1.json
  def destroy
    @sala = Sala.find(params[:id])
    @sala.destroy

    respond_to do |format|
      format.html { redirect_to salas_url }
      format.json { head :no_content }
    end
  end

  # POST /search
  # POST /search.json
  def search
  	if(params[:nombre])
	    @salas = Sala.search(params[:nombre])
	    render action: "map"
  	end
  end

  # POST /map
  # POST /map.json
  def map
  	if(params[:nombre])
	    @salas = Sala.search(params[:nombre])
	  else
    	@salas = Sala.all
  	end

    respond_to do |format|
      format.html # map.html.erb
      format.json { render json: @salas }
    end
  end
end