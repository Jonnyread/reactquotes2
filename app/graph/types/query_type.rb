QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema. See available queries."
  
  # Get Quote by ID
  field :quote, QuoteType do
    argument :id, !types.ID
    description 'Root object to get viewer related collections'
    resolve -> (obj, args, ctx) {
      Quote.find(args["id"])
    }
  end
end