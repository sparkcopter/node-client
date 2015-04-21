drone  = require "ar-drone"
dotenv = require "dotenv"

# Load environmental variables
dotenv.load()

# Create an ar-drone client
client  = drone.createClient
  ip: process.env.DRONE_IP

# Output navdata
client.on "navdata", (navdata) ->
  console.log "roll/pitch/yaw: #{navdata.demo.rotation.roll}/#{navdata.demo.rotation.pitch}/#{navdata.demo.rotation.yaw}"
