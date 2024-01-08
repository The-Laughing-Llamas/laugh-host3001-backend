require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'has a title' do
    recipe = user.recipes.create(
      ingredients: 'Milk and Lucky Charms',
      instructions: 'Pour into bowl',
      image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg'
    )
    expect(recipe.errors[:title]).to include("can't be blank")
  end  

  it 'has ingredients' do
    recipe = user.recipes.create(
      title: 'Cereal',
      instructions: 'Pour into bowl',
      image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg'
    )
    expect(recipe.errors[:ingredients]).to include("can't be blank")
  end  

  it 'has instructions' do
    recipe = user.recipes.create(
      title: 'Cereal',
      ingredients: 'Milk and Lucky Charms',
      image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg'
    )
    expect(recipe.errors[:instructions]).to include("can't be blank")
  end  

  it 'has an image' do
    recipe = user.recipes.create(
      title: 'Cereal',
      ingredients: 'Milk and Lucky Charms',
      instructions: 'Pour into bowl'
    )
    expect(recipe.errors[:image]).to include("can't be blank")
  end 

  it 'Has at least 10 characters for Ingredients' do
    recipe = Recipe.create(
      title: 'Cereal',
      ingredients: 'Milk',
      instructions: 'Pour into bowl',
      image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg'
    )
    expect(recipe.errors[:ingredients]).to_not be_empty
  end

  it 'Has at least 10 characters for Instructions' do
    recipe = Recipe.create(
      title: 'Cereal',
      ingredients: 'Milk, bananas, cereal, andhoney',
      instructions: 'JustdoIt',
      image: 'https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg'
    )
    expect(recipe.errors[:instructions]).to_not be_empty
  end

  it 'Has an image link with 10+ characters' do
    recipe = Recipe.create(
      title: 'Cereal',
      ingredients: 'Milk, bananas, cereal, andhoney',
      instructions: 'JustdoIt',
      image: 'https:'
    )
    expect(recipe.errors[:image]).to_not be_empty
  end
  it 'Has a title with 5+ characters' do
    recipe = Recipe.create(
      title: 'kjl',
      ingredients: 'Milk, bananas, cereal, andhoney',
      instructions: 'JustdoIt',
      image: 'https:'
    )
    expect(recipe.errors[:title]).to_not be_empty
  end
end
