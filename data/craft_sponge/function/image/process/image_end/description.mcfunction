# Append blank
function craft_sponge:image/process/append/blank

data modify storage craft_sponge:image data.tellraw append \
  from storage craft_sponge:image data.current.description_text

# Append blank
function craft_sponge:image/process/append/blank

# Append line_break
execute unless score $index.image_data craft_sponge.image = $length craft_sponge.image \
  run function craft_sponge:image/process/append/line_break

# Remove first element from the description
data remove storage craft_sponge:image data.current.description[0]
 