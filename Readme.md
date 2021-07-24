### dh11_live_view
export MIX_TARGET=rpi4
export NERVES_NETWORK_SSID="Your Network SSID"
export NERVES_NETWORK_PSK=Your Network Password

mix deps.get

mix compile

mix run

mix firmware

mix firmware.gen.script

./upload.sh

### Run UI
cd path/to/ui
iex -S mix phx.server


https://github.com/visciang/nerves_dht

https://github.com/esdrasedu/nerves_dht_sample


https://github.com/jjcarstens/dht