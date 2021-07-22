unused_args = false
allow_defined_top = true
max_line_length = 125

globals = {
    "minetest",
}

read_globals = {
    string = {fields = {"split"}},
    table = {fields = {"copy", "getn", "shuffle"}},
    math = {fields = {"round"}},

    -- Builtin
    "vector", "ItemStack",
    "dump", "DIR_DELIM", "VoxelArea", "Settings",

    -- MCL
	--------------------------------------------
    -- CORE
    "biomeinfo", "flowlib", "mcl_explosions", "mcl_sounds", "mcl_loot", "mcl_particles", "mcl_util", "mcl_worlds", "walkover", "mcl_colors", "mcl_autogroup",
    -- ENTITIES
    "mobs", "mobs_mc",
    -- ENVIRONNEMENT
    "lightning", "mcl_weather",
    -- HELP
    "mcl_craftguide", "tt",
    -- HUD
    "awards", "mcl_death_messages", "mcl_experience", "mcl_formspec", "mcl_tmp_message", "mcl_bossbars",
    -- ITEMS
    "mcl_armor", "mcl_crafting_table", "mcl_buckets", "mcl_doors", "mcl_enchanting", "mcl_fire",
	"mcl_potions", "mcl_throwing", "mcl_stairs", "screwdriver", "mesecon", "tnt",
    -- PLAYER
    "mcl_hunger", "playerphysics", "mcl_death_drop", "mcl_damage",
    
    --OTHER
    "mcl_vars",
}
