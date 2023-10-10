// called when the character gets KO'd

if (door_storage!=-4){
	door_storage.state = 2;
	door_storage.state_timer = 0;
	door_storage.state_end = 8;
	door_storage.replaced = true;
}
with(asset_get("pHitBox")){
    if (player_id == other.id){
        if (attack==AT_DSPECIAL && hbox_num==1){
            destroyed = true;
            spawn_hit_fx( x, y, 66 )
        }
    }
}
if (projectileidwhatever.player_id == player)
if (projectileidwhatever.attack == AT_DSPECIAL)
if (projectileidwhatever.hbox_num == idk)
              projectileidwhatever.destroyed = true;