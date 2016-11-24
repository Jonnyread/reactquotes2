class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path, notice: "We've added your quote!" and return
    end
    render 'new'
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])

    if @quote.update_attributes(quote_params)
      redirect_to quotes_path, notice: "We updated your quote!" and return
    end

    render 'edit'
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    redirect_to quotes_path, notice: "We deleted your quote!" and return
  end

  private
  def quote_params
    params.require(:quote).permit(:title, :type, :body, :author)
  end

end
