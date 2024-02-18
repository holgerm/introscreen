local introscreen = {
    playerPos = {},
    playing = {}
}

-- set the image size manually:
local image_width = 2481
local image_height = 1746

local form_width = (image_height / image_width) * 20


introscreen.form = {
    "formspec_version[4]",
    "size[20," .. tostring(form_width) .. "]",
    "image[0,0;20," .. tostring(form_width) .. ";introscreen.png]",
    "modal[]",
}


minetest.register_on_joinplayer(function(player)
    minetest.show_formspec(player:get_player_name(), "introscreen:start", table.concat(introscreen.form, ""))
end)

