# app/graphql/types/mutation_type.rb
module Types
  class MutationType < Types::BaseObject
    field :shopify_proxy, String, null: false, description: "Proxy requests to Shopify" do
      argument :query, String, required: true
      argument :variables, GraphQL::Types::JSON, required: false
    end

    def shopify_proxy(query:, variables: {})
      client = ShopifyAPI::Clients::Graphql::Admin.new(
        session: ShopifyAPI::Context.active_session
      )
      response = client.query(query: query, variables: variables)
      response.to_json
    end
  end
end