// for dspecial boot sound when it lands
boot_land_sound = player_id.sound_boot_land_sound;
times_played = 0;

// boolean for smg bomb hitting shoe
shoe_collide = false;

// prevents crashes when smg bomb is parried by storing sound_get and hitbox data in variable
remotehitbox = AT_USPECIAL;
remotesound = sound_get("explode5");

// boot sprite/sound stuff
boot_sprite = sprite_get("oldboot");
boot_spin_sprite = sprite_get("oldboot_spin");

boot_rune_sprite = sprite_get("oldboot_rune");
boot_rune_spin_sprite = sprite_get("oldboot_rune_spin");

boot_hitpause_sprite = sprite_get("oldboot_hitpause");
boot_hitpause_spin_sprite = sprite_get("oldboot_hitpause_spin");

boot_weakhit_sound = asset_get("sfx_blow_weak1");
boot_medhit_sound = asset_get("sfx_blow_medium1");
boot_heavyhit_sound = asset_get("sfx_blow_heavy2");

// hitpause stuff
hitstop = 0;
old_vsp = 0;
old_hsp = 0;

// effect when bullet hits the ground
gun_ground_effect = hit_fx_create( sprite_get( "guneffect_ground" ), 7 );

// effect when dspecial
dspecial_spawn_effect = hit_fx_create( sprite_get( "dspecial_effect" ), 14 );

// blastzone stuff
stage_left_blast = get_stage_data( SD_X_POS ) - get_stage_data( SD_SIDE_BLASTZONE );
stage_right_blast = room_width - get_stage_data( SD_X_POS ) + get_stage_data( SD_SIDE_BLASTZONE );
stage_bottom_blast = get_stage_data( SD_BOTTOM_BLASTZONE ) + get_stage_data( SD_Y_POS ) + 40;