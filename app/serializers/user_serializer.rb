class UserSerializer < ActiveModel::Serializer

  def attributes(*args)
    object.attributes.symbolize_keys.merge!({
      created_at: object.created_at.strftime("%d/%m/%Y")
    }).except(
      :id, :updated_at
    )
  end

  has_many :posts
end
