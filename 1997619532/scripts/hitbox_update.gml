if attack == AT_EXTRA_3 && hbox_num != 1 {
	
	if hitbox_timer == 1 {
		vsp -= 6
		sound_play(asset_get("sfx_blow_medium1"),false,noone,.5,0.85);
		spawn_hit_fx(x,y + 6,14)
	}
	
	vsp += 0.3


	if !free  {

		sound_play(sound_get("slicel"),false,noone,.7,1.1);
		y += 10
		destroyed = true
		
	}
	
}

if attack == AT_NSPECIAL && hbox_num == 1 {
	
	if hitbox_timer == 34 {
		spawn_hit_fx(x + hsp,y + hsp,14)
		sound_play(sound_get("slicel"),false,noone,.7,0.9);
	}
	
	if !free && hitbox_timer < 30 {
		hitbox_timer = 60 
		spawn_hit_fx(x + hsp,y + vsp,14)
		sound_play(sound_get("slicel"),false,noone,.7,0.9);
	}
	
}

if attack == AT_EXTRA_2  {
	vsp -= 0.1
    hsp /= 1.02
   if hitbox_timer == 59 or hitbox_timer = random_func(2,30,true) + 30 {
   	destroyed = true
   	sound_play(asset_get("sfx_waterhit_medium"),false,noone,.4,0.85);
   }
}