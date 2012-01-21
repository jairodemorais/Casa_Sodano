class ItemsController < ApplicationController
  before_filter :set_cart
  
  # GET /items
  # GET /items.json
  def index
    if params[:category_id]
      @items = Item.by_category(params[:category_id]).paginate(:page => params[:page], :per_page => 6)
    else
      @items = Item.paginate(:page => params[:page], :per_page => 6)
    end
    
    @news = News.all.sample(5)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new
    p @item.inspect
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to item_url }
      format.json { head :ok }
    end
  end
  
  def get_items_by_category
    items = Item.by_category params[:id]
    
    respond_to do |format|
      format.json { render json: items }
    end
  end
end
