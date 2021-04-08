local params = {}
params.text = minetest.settings:get("mcl_welcome_hud_msg") or "WELCOME"
params.color = minetest.settings:get("mcl_welcome_hud_color") or "white"
params.timeout = minetest.settings:get("mcl_welcome_hud_timeout")


local ids = {}

minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    ids[name] = mcl_bossbars.add_bar(player, {text=params.text, color=params.color, percentage=100, dynamic=false})
    if params.timeout ~= 0 then
        minetest.after(params.timeout, function(name)
            local player = minetest.get_player_by_name(name)
            --minetest.chat_send_all(ids[name])
            if player and ids[name] then
                mcl_bossbars.remove_bar(ids[name])
            end
        end, name)
    end
end)

minetest.register_on_leaveplayer(function(player)
    ids[player:get_player_name()] = nil
end)