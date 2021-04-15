///

set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

if introhit = 0 {
	introhit = -1
}
intro = 1
lockon = 0
lockontime = 180
fcharge = 0
move_cooldown[AT_NSPECIAL] = 80

move_cooldown[AT_FSPECIAL] = 0
move_cooldown[AT_USPECIAL] = 0 	
move_cooldown[AT_DSPECIAL] = 0	


			with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
			}
			
			
			
 if get_gameplay_time() % 5 <= 4 { 
 	
	with (asset_get("oPlayer")) {
	if (player != other.player) {
    if "ai_target" in self && "nname" not in self{
             		if url != "2108469290" {

                   move_cooldown[AT_DSPECIAL] = 30
                   move_cooldown[AT_FSPECIAL] = 30
                   if move_cooldown[AT_USPECIAL] < 30{
                   move_cooldown[AT_USPECIAL] = 30
                   }
                   move_cooldown[AT_NSPECIAL] = 30
				   move_cooldown[AT_DTILT] = 30
				   move_cooldown[AT_UTILT] = 30
				   move_cooldown[AT_FTILT] = 30
				   move_cooldown[AT_JAB] = 30
				   move_cooldown[AT_DATTACK] = 30
				   move_cooldown[AT_DSTRONG] = 30
				   move_cooldown[AT_FSTRONG] = 30
				   move_cooldown[AT_USTRONG] = 30
				   move_cooldown[AT_BAIR] = 30
				   move_cooldown[AT_FAIR] = 30
				   move_cooldown[AT_NAIR] = 30
				   move_cooldown[AT_UAIR] = 30
				   move_cooldown[AT_DAIR] = 30
             	}
    }
					
				}
			}
        }
        
        
        
        
