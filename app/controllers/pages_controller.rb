class PagesController < ApplicationController
  def index
      @a = 'b'
  end

  def generate

        category_num = 2;
        ingredient_num = 2;
        product_num = 10;
        ingredients_per_product = 2;
        related_images = 2;
        tags = 5;
        slide_images = 5;
        articles = 20;
        options = 2;
        reviews = 1;
        stockists = 5;
        # Your command logic here

        # If you have any errors, just raise them
        # raise "that command made no sense"
        1.upto(category_num) do |i|
        name = Faker::Name.title
        Category.create(
          slug: name.parameterize,
          thumbnail: Faker::Avatar.image("my-own-slug"),
          title_en: name,
          title_nb: Faker::Name.title + ' nb',
          description_en: Faker::Lorem.paragraph(5),
        )
        end

    render inline: "asdasd"
  end
end
