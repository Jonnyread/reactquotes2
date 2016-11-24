class Quote
  include Mongoid::Document
  field :type, type: String
  field :title, type: String
  field :body, type: String
  field :author, type: String
end
