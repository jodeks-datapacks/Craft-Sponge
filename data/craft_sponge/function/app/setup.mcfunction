scoreboard objectives add jodek.config dummy
execute unless score &craft_sponge_load_message jodek.config = &craft_sponge_load_message jodek.config run scoreboard players set &craft_sponge_load_message jodek.config 1
execute unless score &craft_sponge_advancements jodek.config = &craft_sponge_advancements jodek.config run scoreboard players set &craft_sponge_advancements jodek.config 1

scoreboard objectives add craft_sponge.image dummy

# Print the image
function craft_sponge:config/image