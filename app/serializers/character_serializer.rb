class CharacterSerializer < ActiveModel::Serializer
    attributes :id, :name, :strength, :fighting, :energy, :durability, :speed, :intelligence
  end
  