local params = {}
params.text = minetest.settings:get("mcl_welcome_hud_msg") or "WELCOME"
params.color = minetest.settings:get("mcl_welcome_hud_color") or "white"
params.timeout = minetest.settings:get("mcl_welcome_hud_timeout")

minetest.register_on_joinplayer(function(player)
    mcl_bossbars.add_bar(player, {text=params.text, color=params.color, percentage=100, dynamic=false, timeout=params.timeout})
end)