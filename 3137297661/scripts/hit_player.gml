//hit_player.gml
if(adrenaline_timer){
    dam_mult = min(max_mult, dam_mult + mult_inc);
    var extra_dmg = round(my_hitboxID.damage * dam_mult);
    set_player_damage(hit_player_obj.player, get_player_damage(hit_player_obj.player) + extra_dmg);
    if (extra_dmg < 4){
        spawn_hit_fx(hit_player_obj.x + 20, hit_player_obj.y - 40, adrenaline_hit_small_fx[random_func(0, 3, true)]);
    }
    else{
        spawn_hit_fx(hit_player_obj.x + 20, hit_player_obj.y - 40, adrenaline_hit_fx[random_func(0, 2, true)]);
    }
    sound_play(asset_get("sfx_ell_dspecial_explosion_1"), false, noone, 1.5, 0.6 + min(0.5, (extra_dmg*0.05) + (dam_mult/max_mult)));
}

//fstrong grab
if(my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_FSPECIAL ){
    if(my_hitboxID.hbox_num == 1){
        if (k_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
        {
            grab_posX = hit_player_obj.x;
            grab_posY = hit_player_obj.y;
            k_grab_id = hit_player_obj;
        }
    }
}

if(my_hitboxID.attack == AT_DAIR){
    if(my_hitboxID.hbox_num == 1){
        if (k_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
        {
            k_grab_id = hit_player_obj;
        }
        window = 4;
        window_timer = 0;
    }
    else if(my_hitboxID.hbox_num == 2){
        djumps = 0;
    }
}

if((my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num < 4) || (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num < 3) ) {
    if (k_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        k_grab_id = hit_player_obj;
    }
}

if((my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num < 10) || (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num < 11) ) {
    if (k_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled
    && !hit_player_obj.k_ring_debuff)
    {
        k_grab_id = hit_player_obj;
    }
}


//grab and spawn ring
if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num > 1){
    if (k_grab_id == hit_player_obj){
        if(!instance_exists(deathring) && hit_player_obj.k_poison_timer){
            deathring = instance_create(hit_player_obj.x, hit_player_obj.y - 30, "obj_article2");
            sound_play(asset_get("sfx_burnconsume"));
            if(hit_player_obj.k_poison_tier == 2){
                deathring.sprite_index = sprite_get("deathring_big");
                deathring.mask_index = sprite_get("deathring_big_mask");
                deathring.tier = 2;
                deathring.bell_yoff = -277
            }
            hit_player_obj.k_poison_timer = 0;
        }
        k_grab_id = noone;
    }
}

//increase combo but only let it increase once per attack
for(var i = 0; i < array_length(k_combo_attacks); ++i){
    if(my_hitboxID.attack == k_combo_attacks[i] && !k_can_combo && k_combo < 2 && hit_player_obj.k_poison_timer > 0){
        k_can_combo = true;
        k_combo_timer = 0;
        ++k_combo;
        if(k_combo == 1){
            sound_play(asset_get("sfx_abyss_hex_hit"));
        }
        else if(k_combo == 2){
        	k_finish_timer = 1;
            sound_play(asset_get("sfx_boss_charge"));
        }
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
    if(my_hitboxID.hbox_group == 2){
        if (k_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
        {
            k_grab_id = hit_player_obj;
        }
    }
    else if(my_hitboxID.hbox_group == 3 && !hit_player_obj.k_poison_lockout){
         with(hit_player_obj){
            k_poison_tier = 1;
            k_poison_timer = other.poison_maxtime;
            k_max_poison_time = other.poison_maxtime;
            k_poison_lockout = 200;
            k_poison_anim = 1;
            poison_applier = other.player;
        }
        sound_play(sound_get("ignite"));  
    }
   
}

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.sprite_index == ball_spr){
    instance_create(my_hitboxID.x, my_hitboxID.y, "obj_article1");
    sound_play(sound_get("gasglass"));
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 301);
}

//t2 poison on player on hits of fspec 2 and uspec 2
if((my_hitboxID.attack == AT_FSPECIAL_2 || my_hitboxID.attack == AT_USPECIAL_2) 
    && !hit_player_obj.k_poison_lockout){
    with(hit_player_obj){
        k_poison_tier = 2;
        k_poison_timer = other.poison_maxtime;
        k_max_poison_time = other.poison_maxtime;
        k_poison_lockout = 200;
        k_poison_anim = 1;
        poison_applier = other.player;
    }
    sound_play(sound_get("ignite"));
}

//on hit inside of death ring
if(instance_exists(deathring)){
	var should_transfer = false;
    //dampen kb of hits and add kb to store
    var absorb = false;
    var bkb = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_BASE_KNOCKBACK);
    with(hit_player_obj){
        if(place_meeting(x, y, other.deathring) && !other.deathring.dissipate){
            absorb = true;
            orig_knock = max(5, bkb * 0.5);
            should_make_shockwave = false;
        	other.multi_kb_total += bkb;
        }
        else if (other.my_hitboxID.attack == AT_FSPECIAL && other.my_hitboxID.hbox_num > 1 && !other.deathring.dissipate){
        	should_transfer = true;
        }
    }
    //add motes
    if(absorb){
        mote_index = mote_index % max_motes;
        mote_list[mote_index] = [MOTE_STORE, hit_player_obj.x, hit_player_obj.y - 35, [0,0], 0];
        mote_index++;
        num_motes = min(num_motes + 1, max_motes);
        if(max_move_kb < multi_kb_total){
        	bkb = max(0, bkb - (multi_kb_total - max_move_kb));
        }
        deathring.kb_store[hit_player_obj.player - 1] += bkb;
        deathring.kb_store_total += bkb;
    }
    //end old ring and create new one
    if(should_transfer){
    	deathring.transfer = true;
    	var temp_ring = instance_create(hit_player_obj.x, hit_player_obj.y - 30, "obj_article2");
    	sound_play(asset_get("sfx_burnconsume"));
    	if(deathring.tier == 2){
    		temp_ring.sprite_index = sprite_get("deathring_big");
    		temp_ring.mask_index = sprite_get("deathring_big_mask");
    		temp_ring.tier = 2;
    		temp_ring.bell_yoff = -277
        }
        temp_ring.kb_store = deathring.kb_store;
        temp_ring.kb_store_total = deathring.kb_store_total;
        deathring = temp_ring;
    }
}

//add extra hitbox containing kb store when hit player is effected by ring debuff
if(hit_player_obj.k_ring_debuff && my_hitboxID.attack != AT_FSPECIAL_2 && 
	my_hitboxID.attack != AT_USPECIAL_2 && my_hitboxID.kb_scale > 0){
	hit_player_obj.should_make_shockwave = false;
    hbox = create_hitbox(0, 1, floor(hit_player_obj.x + hsp), floor(hit_player_obj.y - hit_player_obj.char_height/2 + hit_player_obj.vsp));
    hbox.spr_dir = spr_dir;
    hbox.kb_angle = my_hitboxID.kb_angle;
    hbox.kb_value = hit_player_obj.orig_knock + hit_player_obj.k_ring_debuff;
    //this hitbox can only hit effected player
    for (var i = 0; i < 20; i++) if (i != hit_player_obj.player) hbox.can_hit[i] = false; 
}

if(my_hitboxID.attack = 0){
    hit_player_obj.hitstop = 30;
    hitstop = hit_player_obj.hitstop;
    hit_player_obj.k_ring_debuff = 0;
    hit_player_obj.k_ring_debuff_hits = 0;
    if(hit_player_obj.should_make_shockwave){
        death_ring_gal = true;
        fade_timer = 1;
        sound_play(sound_get("strike"), false, noone, 1.7, 1);
        fx_rot = random_func(0, 360, true);
    }
}


//sfx layering
switch(my_hitboxID.attack){
    
    case AT_DATTACK:
        if(my_hitboxID.hbox_num == 3){
			sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.8, 0.9);
        }
        break;

    case AT_FTILT:
        if(my_hitboxID.hbox_num == 3) {
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.8, 0.9);
        }
        break;
    
    case AT_UTILT:
        sound_play(asset_get("sfx_icehit_weak1"));
        break;
    
    case AT_NAIR:
        if(my_hitboxID.hbox_num == 3) sound_play(asset_get("sfx_icehit_weak2"));
        break;

    case AT_FAIR:
        sound_play(asset_get("sfx_icehit_weak2"));
        break;
    
    case AT_DAIR:
        if(my_hitboxID.hbox_num == 2) sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.8, 0.9);
        break;
    
    case AT_UAIR:
        sound_play(asset_get("sfx_icehit_weak2"));
        break;

    case AT_FSTRONG:
        if(my_hitboxID.hbox_num == 1) sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.8, 1.15);

        break;

    case AT_USTRONG:
        if(my_hitboxID.hbox_num == 4) sound_play(asset_get("sfx_icehit_medium2"));
        break;
    case AT_DSTRONG:
        sound_play(asset_get("sfx_icehit_medium2"), false, noone, 1.0, 1.4);
        break;
    
    case AT_USPECIAL:
        if(my_hitboxID.hbox_num > 4){
            sound_play(asset_get("sfx_waterhit_medium"), false, noone, 1.0, 1.1);
            sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 1.0, 0.9);
        }
        break;


}