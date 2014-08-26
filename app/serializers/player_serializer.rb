class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :position, :rank, :firstname, :lastname, :team, :total, :ppg, :full_name

  def full_name
    [object.firstname, object.lastname].join(" ")
  end
end
