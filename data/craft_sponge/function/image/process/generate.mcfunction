#> craft_sponge:image/process/generate
#
# This function generates the image data.

data modify storage craft_sponge:image data.current.image_data set from storage craft_sponge:image data.image_data
data modify storage craft_sponge:image data.current.description set from storage craft_sponge:image data.description
data modify storage craft_sponge:image data.current.pixel_character set from storage craft_sponge:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data craft_sponge.image 0
# Set width
execute store result score $width craft_sponge.image run data get storage craft_sponge:image data.width
# Set height
execute store result score $height craft_sponge.image run data get storage craft_sponge:image data.height
# Set length
scoreboard players operation $length craft_sponge.image = $width craft_sponge.image
scoreboard players operation $length craft_sponge.image *= $height craft_sponge.image
# Clear remaining entries in tellraw
data remove storage craft_sponge:image data.tellraw

# Add spacing on top
function craft_sponge:image/process/append/line_break
# Loop over image data
function craft_sponge:image/process/loop_over_image_data
# Add spacing on bottom
function craft_sponge:image/process/append/line_break