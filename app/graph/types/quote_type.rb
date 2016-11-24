QuoteType = GraphQL::ObjectType.define.do
	name "Quote"
	description "A quote with a title, boday, author, and type"
	#Expose these fields in the quote model
	field :id, types.ID, "This is the id of the quote"
	field :title, types.String, "The title of the quote"
	field :body, types.String, "The quote itself"
	field :author, types.String, "The author of the quote"
	field :type, types.String, "The type of quote it is"
end
