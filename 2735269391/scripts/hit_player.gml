/// my_hitboxID.attack
//

if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 2 {
            ax = create_hitbox(AT_NSPECIAL,4,floor(my_hitboxID.x),floor(my_hitboxID.y) - 8)
        	ax.spr_dir = my_hitboxID.spr_dir*-1
            spawn_hit_fx(my_hitboxID.x,my_hitboxID.y + 60,fx_ustrong)
            fx2 = spawn_hit_fx(my_hitboxID.x,my_hitboxID.y - 60,fx_ustrong)
            fx2.draw_angle = 180
            sound_play(asset_get("sfx_ice_shatter_big"))
            my_hitboxID.hitbox_timer = 999 
            
}

            
if my_hitboxID.attack != AT_FSPECIAL {
sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,max(.6, hitstop*hitstop/150), 3 - min(2, 1 + hitstop*hitstop/150) )
sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,max(.6, hitstop*hitstop/150), 3 - min(2, 1 + hitstop*hitstop/150) )
}

if my_hitboxID.attack == AT_FSPECIAL  && my_hitboxID.hbox_num == 2 {
    my_hitboxID.destroyed = true
    //my_hitboxID.vsp = -8
    //my_hitboxID.hsp = -5*my_hitboxID.spr_dir
    //my_hitboxID.gravity = 0.5
    sound_play(asset_get("sfx_absa_kickhit"),false,noone,max(.6, hitstop*hitstop/150), 3 - min(2, 1 + hitstop*hitstop/150) )
    sound_play(asset_get("sfx_blow_heavy2"),false,noone,max(.6, hitstop*hitstop/150), 3 - min(2, 1 + hitstop*hitstop/150) )
}


if attack == AT_JAB {
    old_hsp /= 1.2
}
if attack == AT_DATTACK {
    old_hsp /= 1.2
}
if attack == AT_UTILT {
    old_hsp /= 3
}

if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.image_xscale != .8 {
    fx_fstrong = hit_fx_create( sprite_get( "fx_fstrong" ),floor(hitstop)*2);
   fxf = spawn_hit_fx(x,y,fx_fstrong)
   fxf.depth = -10
}

if my_hitboxID.attack == AT_USTRONG && my_hitboxID.image_xscale != .8 && my_hitboxID.hbox_num == 3 {
    fx_ustrong = hit_fx_create( sprite_get( "fx_ustrong" ),floor(hitstop)*2);
   fxf = spawn_hit_fx(x,y,fx_ustrong)
   fxf.depth = -10
}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.image_xscale != .8 {
fx_dstrong = hit_fx_create( sprite_get( "fx_fstrong" ),30);
       	fxf = spawn_hit_fx(x + (60)*spr_dir,y - 70,fx_dstrong)
       	  fxf.depth = -10
       	  fxf.draw_angle = 180
}
if my_hitboxID.attack == AT_NAIR {
    window_timer += 3
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num != 1 {
    with (asset_get("pHitBox")) {
        if player_id == other.id && attack == AT_NSPECIAL{
            if hbox_num != 4 {
            hsp += 1*spr_dir
            }
            hitbox_timer += 1
          pausing = other.hit_player_obj.hitstop*1.5
        }
   }
    
}
    
/*
if my_hitboxID.type == 1 {
my_hitboxID.x_pos += hit_player_obj.x - my_hitboxID.x
my_hitboxID.y_pos += hit_player_obj.y - 40 - my_hitboxID.y
my_hitboxID.image_xscale = .8
my_hitboxID.image_yscale = .8
}



