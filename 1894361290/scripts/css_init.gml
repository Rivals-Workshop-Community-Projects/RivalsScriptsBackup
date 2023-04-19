//css_init.gml

//set_synced_var(player, power(2, 32) - 1)
//print(get_synced_var(player))
custom_slot = undefined;
custom_slots = [
    8,
    9,
    10,
    11,
    14
]

player_col = 0
cursor_cooldown = 0

icon_x = 14
icon_y = 64

icon_hovering = false

mute_dates = [
    [17, 12, 2022] //test date
]

mute_lockout = false

for (var i = 0; i < array_length(mute_dates); i++) {
	if mute_dates[i][0] == current_day
	&& mute_dates[i][1] == current_month
	&& mute_dates[i][2] == current_year {
		mute_lockout = true
	}
}

mute = get_synced_var(player)