//hit_player - called when one of your hitboxes hits a player




if my_hitboxID.attack == AT_DAIR {
old_vsp = -7;
old_hsp = 0;
}
if my_hitboxID.attack == AT_FSPECIAL {
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
}

if (my_hitboxID.attack == AT_DSPECIAL) {
    if(my_hitboxID.hbox_num < 3){
    create_smogball_on_self();
    old_vsp = -7;
    old_hsp = 0;
    destroy_hitboxes();
    djumps = 0;
    move_cooldown[AT_DSPECIAL] = 60;
    window = 7;
    window_timer = 0;
    }
}

if(my_hitboxID.attack == AT_FSTRONG){
    if(my_hitboxID.hbox_num == 3){
    	if(my_hitboxID.hit_priority == 4){
    	create_smogball();
		destroyed = true;
    	}
    }
}

if(my_hitboxID.attack == AT_USTRONG){
    if(my_hitboxID.hbox_num == 3){
    	if(my_hitboxID.hit_priority == 4){
    	create_smogball();
		destroyed = true;
    	}
    }
}

if(my_hitboxID.attack == AT_USPECIAL){
    	if(my_hitboxID.hit_priority == 4){
    	create_smogball();
		destroyed = true;
    }
}

//sfx
if (attack == AT_FTILT) {
    sound_play(asset_get("sfx_hod_steamhit1"));
}

if (attack == AT_DATTACK) {
    sound_play(asset_get("sfx_hod_steamhit3"));
}

if (my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_DSPECIAL_2){
    hit_player_obj.sdi_mult = 1;
    hit_player_obj.dumb_di_mult = 1;
}

#define create_smogball
sound_play(asset_get("sfx_absa_cloud_place"));
if (!my_hitboxID.was_parried){
    if(poisonsmog_article == 0){
        poisonsmog_article = instance_create(x, y-8, "obj_article1");
    }
}
if(poisonsmog_article != 0){
poisonsmog_article.array_size += 1;
poisonsmog_article.poison_array[poisonsmog_article.array_size-1] = {sprite_index:cloud_sprite, poison_active:true, x:hit_player_obj.x, y:hit_player_obj.y-30, player_id:my_hitboxID.player_id, player:my_hitboxID.player, state_timer:0, lifetime:600, image_index:0, color:c_gray, introtime:40, alpha:0, radiuscircle:55, travel_angle:0, usedbydspec:false, upgradecooldown:0};
}
#define create_smogball_on_self
sound_play(asset_get("sfx_absa_cloud_place"));
if (!my_hitboxID.was_parried){
    if(poisonsmog_article == 0){
        poisonsmog_article = instance_create(x, y-8, "obj_article1");
    }
}
if(poisonsmog_article != 0){
poisonsmog_article.array_size += 1;
poisonsmog_article.poison_array[poisonsmog_article.array_size-1] = {sprite_index:cloud_sprite, poison_active:true, x:x, y:y-30, player_id:my_hitboxID.player_id, player:my_hitboxID.player, state_timer:0, lifetime:600, image_index:0, color:c_gray, introtime:40, alpha:0, radiuscircle:55, travel_angle:0, usedbydspec:false, upgradecooldown:0};
}