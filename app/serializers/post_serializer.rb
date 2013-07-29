class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :source, :created_at, :updated_at
end
