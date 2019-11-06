class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species
  belongs_to :species

  # def attributes(*args)
  #   object.attributes.symbolize_keys
  # end

  # def gender
  #   @object.name + " " + @object.gender
  # end

  # def species
  #   object.species.name
  # end

end
