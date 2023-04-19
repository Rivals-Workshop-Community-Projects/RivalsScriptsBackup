//Remove SL Mode on Death. "RIP BOZO" - Landkon2, 2022
SL_mode_active = false;
SL_damage_timer = 0;
SL_activated_by_opponent_ID = noone;
init_shader();

// Cleanse marks on opponents on Iroh's Death
with(asset_get("oPlayer")){
    if (id != other.id){
			electric_mark = false;
		}
    }