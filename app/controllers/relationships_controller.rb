class RelationshipsController < ApplicationController
  def create
    @relationship.new()
  end
  
  private 
  
    def relationship_params
    end
end
