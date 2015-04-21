drone  = require "ar-drone"
dotenv = require "dotenv"

# Load environmental variables
dotenv.load()

# Create an ar-drone client
client  = drone.createClient
  ip: process.env.DRONE_IP

# Create a repl to control the drone
client.createRepl()
