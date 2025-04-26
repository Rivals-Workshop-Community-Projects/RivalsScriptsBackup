//css init

name_fade = 0
who_tf_asked = noone
compressed_vars = 0

if(get_synced_var(player) == true){
	masked = true
}else{
	masked = false
}
set_synced_var(player, compressed_vars)