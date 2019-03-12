require 'unirest'

# INDEX ACTION
response = Unirest.get("http://localhost:3000/api/products")
puts JSON.pretty_generate(response.body)

# SHOW ACTION
response = Unirest.get("http://localhost:3000/api/products/2")
puts JSON.pretty_generate(response.body)

# CREATE ACTION  
response = Unirest.post("http://localhost:3000/api/products",
  parameters: {
                name: "Crazy Explosives",
                price: "120",
                image_url: "https://images.footlocker.com/pi/BW0931/zoom/adidas-crazy-explosive-pk-mens",
                description: "These shoes are crazy comfortable and are a collab from Andrew Wiggins of the Timberwolves and Adidas"}
    )
puts JSON.pretty_generate(response.body)

# UPDATE ACTION
product_id = 3
runner_params = {
                price: 200,
                }
response = Unirest.patch("http://localhost:3000/api/products/#{product_id}",
                        parameters: runner_params)
product_hash = response.body
puts JSON.pretty_generate(product_hash)

# DESTROY ACTION
product_id = 6
response = Unirest.delete("http://localhost:3000/api/products/#{product_id}")
data = response.body
puts JSON.pretty_generate(data)