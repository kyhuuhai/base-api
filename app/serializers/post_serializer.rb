class PostSerializer < ActiveModel::Serializer
  def attributes(*args)
    object.attributes.symbolize_keys.merge!({
      user_name: custom,
      created_at: object.created_at.strftime("%d/%m/%Y")
    }).except(
      :id, :user_id, :updated_at
    )
  end

  def custom
    object.user.name
  end
end
