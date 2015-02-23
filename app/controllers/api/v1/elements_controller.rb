module Api
  module V1
    class ElementsController < ApplicationController
      before_action :set_element, only: [:show, :edit, :update, :destroy]

      # GET /api/elements
      # GET /api/elements.json
      def index
        @elements = Element.all
        render json: @elements
      end

=begin
      # GET /api/elements/1
      # GET /api/elements/1.json
      def show
      end

      # GET /api/elements/new
      def new
        @element = Element.new
      end

      # GET /api/elements/1/edit
      def edit
      end

      # POST /api/elements
      # POST /api/elements.json
      def create
        @element = Element.new(element_params)

        respond_to do |format|
          if @element.save
            format.json { render :show, status: :created, location: @element }
          else
            format.json { render json: @element.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /api/elements/1
      # PATCH/PUT /api/elements/1.json
      def update
        respond_to do |format|
          if @element.update(element_params)
            format.json { render :show, status: :ok, location: @element }
          else
            format.json { render json: @element.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /api/elements/1
      # DELETE /api/elements/1.json
      def destroy
        @element.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_element
          @element = Element.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def element_params
          params.require(:element).permit(:name, :description)
        end
=end
    end
  end
end
