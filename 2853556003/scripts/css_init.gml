//css init

correct_inputs = 0
button = noone
compressed_vars = 0

if(get_synced_var(player) == 1 || get_synced_var(player) == 3){
	tap_jump_suppress = true
}else{
	tap_jump_suppress = false
}
css_vars = [0, 0]
set_synced_var(player, compressed_vars)
secret_skins = false
name_fade = 0

//lmao
who_tf_asked = noone
die = false