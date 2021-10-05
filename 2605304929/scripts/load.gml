sprite_change_offset("idle", 128, 162);
sprite_change_offset("crouch", 128, 162);
sprite_change_offset("crouch_idle", 128, 162); // Non-standard animation
sprite_change_offset("walk_start", 128, 162); // Non-standard animation
sprite_change_offset("walk", 128, 162);
sprite_change_offset("walkturn", 128, 162);
sprite_change_offset("dash", 128, 162);
sprite_change_offset("dashstart", 128, 162);
sprite_change_offset("dashstop", 128, 162);
sprite_change_offset("dashturn", 128, 162);

sprite_change_offset("jumpstart", 128, 162);
sprite_change_offset("jump", 128, 162);
sprite_change_offset("doublejump", 128, 162);
sprite_change_offset("doublejump_backward", 128, 162);
sprite_change_offset("walljump", 128, 162);
sprite_change_offset("pratfall", 128, 162);
sprite_change_offset("land", 128, 162);
sprite_change_offset("landinglag", 128, 162);

sprite_change_offset("parry", 128, 162);
sprite_change_offset("roll_forward", 128, 162);
sprite_change_offset("roll_backward", 128, 162);
sprite_change_offset("airdodge", 128, 162);
sprite_change_offset("waveland", 128, 162);
sprite_change_offset("tech", 128, 162);

sprite_change_offset("jab", 128, 162);
sprite_change_offset("dattack", 128, 162);
sprite_change_offset("ftilt", 128, 162); 
sprite_change_offset("dtilt", 128, 162);
sprite_change_offset("utilt", 128, 162);
sprite_change_offset("nair", 128, 162);
sprite_change_offset("fair", 128, 162);
sprite_change_offset("bair", 128, 162); 
sprite_change_offset("uair", 128, 162); 
sprite_change_offset("dair", 128, 162); 
sprite_change_offset("dair_proj", 128, 128); 
sprite_change_offset("fstrong", 128, 162);
sprite_change_offset("fstrong_proj", 128, 138); 
sprite_change_offset("ustrong", 128, 162);
sprite_change_offset("dstrong", 128, 162);
sprite_change_offset("dstrong_proj", 124, 138); // Not sure why this ends up shifted a couple of pixels
sprite_change_offset("nspecial", 128, 162);
sprite_change_offset("nspecial_air", 128, 162);
sprite_change_offset("nspecial_proj", 128, 128);

sprite_change_offset("consume_elec", 128, 128);
sprite_change_offset("consume_water", 128, 128);

//Specials Throw Sprites
sprite_change_offset("fspecial", 128, 162);
sprite_change_offset("fthrow", 128, 162); // Fspecial Throw
sprite_change_offset("fspecial_2", 128, 162); //Fspecial Execute

sprite_change_offset("uspecial", 128, 162);
sprite_change_offset("uthrow", 128, 162);// Uspecial Throw
sprite_change_offset("uspecial_2", 128, 162); // Uspecial Execute

sprite_change_offset("dspecial", 128, 162);
sprite_change_offset("dspecial_air", 128, 162); 
sprite_change_offset("dthrow", 128, 162); // Dstrong Throw
sprite_change_offset("dspecial_2", 128, 162); // Dspecial Execute

// A+B Command Input Grabs
sprite_change_offset("extra_1", 128, 162); // Ground Throw
sprite_change_offset("nspecial_2", 128, 162); // Success Ground Throw Animation
sprite_change_offset("extra_2", 128, 162); // Air Throw
sprite_change_offset("nthrow", 128, 162); // Success Air Throw Animation
sprite_change_offset("extra_3", 128, 162); // Execute Variant
sprite_change_offset("extra_3_behind", 128, 162); // Execute Variant Aboce Sprites

//Element Sprites
sprite_change_offset("buildup_electricity", 128, 128); // 
sprite_change_offset("buildup_water", 128, 128); //
sprite_change_offset("meter_electricity", 128, 128); //
sprite_change_offset("meter_water", 128, 128); //

//HitFX
sprite_change_offset("hitfx_large_elec", 128, 128); //
sprite_change_offset("hitfx_large_water", 128, 128); //
sprite_change_offset("hitfx_large_combined", 128, 128); //
sprite_change_offset("hitfx_water_paw", 128, 128); // 
sprite_change_offset("hitfx_elec_paw", 128, 128); //

//Hurt Sprites
sprite_change_offset("hurt", 128, 162);
sprite_change_offset("bighurt", 128, 162);
sprite_change_offset("uphurt", 128, 162);
sprite_change_offset("downhurt", 128, 162);
sprite_change_offset("bouncehurt", 128, 162);
sprite_change_offset("spinhurt", 128, 162);
sprite_change_offset("hurtground", 128, 162);

//Platforms
sprite_change_offset("platform_grow", 128, 128);
sprite_change_offset("platform_idle", 128, 128);
sprite_change_offset("platform_impact", 128, 128);
sprite_change_offset("platform_vanish", 128, 128);
sprite_change_offset("platform_icon", 128, 128);

//Other Stuff
sprite_change_offset("intro", 128, 162);
sprite_change_offset("plat", 128, 162);
sprite_change_offset("plat_bg", 128, 162);
sprite_change_offset("plat_idle", 128, 162);
sprite_change_offset("idle_transition", 128, 162);
sprite_change_offset("bubbles", 128, 128);
sprite_change_offset("taunt", 128, 162);
sprite_change_offset("hud", 128, 128);


// Victory Stuff
set_victory_theme(sound_get("victory"));
set_victory_bg(sprite_get("victory_bg"));
//set_victory_theme(CH_CLAIREN);
//set_victory_bg( sprite_get( "custom" ));