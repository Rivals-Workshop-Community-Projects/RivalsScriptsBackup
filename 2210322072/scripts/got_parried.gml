///

if soul_timer < 0 {
    			outline_color = [0, 0, 0]
	init_shader();
    spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
	sound_play(asset_get("sfx_holy_lightning"))
	sound_play(sound_get("slicen"))
	sound_play(sound_get("strong3"))
soultimer = 0
x = soulx
y = souly
            state_timer = 99
		    invincible = 0
		    window_timer = 99
    vsp = -7
    hsp = 0		    
		        spawn_hit_fx (x,y -30 , 302 )
    spawn_hit_fx (x,y - 30, wh )
    spawn_hit_fx (x,y - 30, bh )
    take_damage(player,-1,15)
    
    has_walljump = false 
    
    shake_camera(4,12)
set_state(PS_PRATFALL)
prat_land_time = 150;
window = 4
window_timer = 0
}