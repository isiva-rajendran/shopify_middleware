ShopifyAPI::Context.setup(
  api_key: Rails.application.credentials.shopify_api_key,
  api_secret_key: Rails.application.credentials.shopify_api_secret,
  host: Rails.application.credentials.shopify_store_domain,
  scope: "read_products,write_products,read_customers,write_customers", # Adjust as needed
  # session_storage: ShopifyAPI::Auth::FileSessionStorage.new, # Or use Redis
  is_embedded: false,
  api_version: "2024-01",
  is_private: true
)