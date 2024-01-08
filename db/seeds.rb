user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_recipes = [
    {
        title: "Bad Soup",
        ingredients:"Spoiled veggie broth, moldy coliflower, chewed up leftover chicken, and one clean set of dentured",
        instructions:"Start with a base of overcooked, mushy cauliflower. Add in some over-salted vegetable broth that's been sitting in the back of your pantry for far too long. Toss in a handful of wilted spinach and overly mushy carrots for texture. For that extra 'oomph,' blend in some canned anchovies or a dash of fish sauce. Finally, sprinkle in a combination of expired spices like old bay leaves or dried herbs that have lost their flavor. Voilà, a soup that might leave you reconsidering your love for soup altogether!",
        image:"https://i1.sndcdn.com/artworks-000115307098-0yx5o4-t500x500.jpg",
    },
    {
        title:"Revolting Sandwich",
        ingredients:"Stale bread, expired mayonnaise, expired ketchup and mustard, expired processed cheese, canned sardines and/or pickled herring, uncomplimentary seasoning",
        instructions:"Well, you could start with stale bread as the base—maybe even a flavor you dislike. Then add a generous layer of expired mayonnaise or a combination of ketchup and mustard that's been sitting out for too long. Top that with a slice of processed cheese that's well past its expiration date. For some extra unpleasantness, add some canned sardines or pickled herring. Finish it off with a sprinkling of sugar or any seasoning that doesn’t complement the other flavors. Voila! You've got a sandwich that might just make your taste buds revolt!",
        image:"https://thumbs.dreamstime.com/b/moldy-sandwich-smoked-meat-plastic-bag-dark-bread-grains-covered-white-mold-moldy-sandwich-smoked-meat-155757787.jpg"
    }
]

user1_recipes.each do |recipe| 
    user1.recipes.create(recipe)
    p "created: #{recipe}"
end