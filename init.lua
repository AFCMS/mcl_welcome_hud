local params = {}
params.text = minetest.settings:get("mcl_welcome_hud.msg") or "WELCOME"
params.color = minetest.settings:get("mcl_welcome_hud.color") or "white"
params.timeout = minetest.settings:get("mcl_welcome_hud.timeout")

minetest.register_on_joinplayer(function(player)
    mcl_bossbars.add_bar(player, {text=params.text, color=params.color, percentage=100, dynamic=false, timeout=params.timeout})
end)
