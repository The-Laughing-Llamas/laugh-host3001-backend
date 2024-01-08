require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  describe "GET /index" do
    it 'gets a list of recipe' do
      recipe = user.recipes.create(
        title: 'Cereal',
        ingredients: 'Milk and cookies',
        instructions: 'Dump everyting into a bowl',
        image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg',
      )
      get '/recipes'

      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(recipe.first['title']).to eq('Cereal')
    end
  end

  describe "POST /create" do 
    it "cannot create a recipe without title" do 
      recipe_params = {
          recipe: {
              ingredients: "Hot Pocket",
              instructions: "Put in microwave",
              image: "https://media.apts247.info/ce/ce9560e9239c4c3b8369663b0a699279/floorplans/1196_CoconutPalm_504586.jpg",
              user_id: user.id
          }
      }

      post '/recipes', params: recipe_params
      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(recipe['title']).to include "can't be blank"
    end

    it "cannot create a recipe without ingredients" do 
      recipe_params = {
          recipe: {
              title: "Hot Pocket", 
              instructions: "Put in microwave",
              image: "https://media.apts247.info/ce/ce9560e9239c4c3b8369663b0a699279/floorplans/1196_CoconutPalm_504586.jpg",
              user_id: user.id
          }
      }

      post '/recipes', params: recipe_params
      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(recipe['ingredients']).to include "can't be blank"
    end

    it "cannot create a recipe without instructions" do 
      recipe_params = {
          recipe: {
              title: "Hot Pocket", 
              ingredients: "Hot Pocket",
              image: "https://media.apts247.info/ce/ce9560e9239c4c3b8369663b0a699279/floorplans/1196_CoconutPalm_504586.jpg",
              user_id: user.id
          }
      }

      post '/recipes', params: recipe_params
      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(recipe['instructions']).to include "can't be blank"
    end

    it "cannot create a recipe without image" do 
      recipe_params = {
          recipe: {
              title: "Hot Pocket", 
              ingredients: "Hot Pocket",
              instructions: "Put in microwave",
              user_id: user.id
          }
      }

      post '/recipes', params: recipe_params
      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(recipe['image']).to include "can't be blank"
    end
  end
end
