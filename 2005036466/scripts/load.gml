var xx = 52;
var yy = 71;

var vfx_xx = 100;
var vfx_yy = 100;

// Hurtboxes
sprite_change_offset("penny_hurt", xx*2, yy*2);         // Done
sprite_change_offset("pennycrouch_hurt", xx*2, yy*2);   // Done

// C4
sprite_change_offset("mask_mine", 100, 100);            // Done

sprite_change_offset("mine_plant", 100, 100);           // Done
sprite_change_offset("mine", 100, 100);                 // Done
sprite_change_offset("mine_det", 100, 100);             // Done
sprite_change_offset("mine_charged", 100, 100);         // Done

sprite_change_offset("mineG_plant", 100, 100);          // Done
sprite_change_offset("mineG", 100, 100);                // Done
sprite_change_offset("mineG_det", 100, 100);            // Done

sprite_change_offset("mineV_plant", 100, 100);          // Done
sprite_change_offset("mineV", 100, 100);                // Done
sprite_change_offset("mineV_det", 100, 100);            // Done
sprite_change_offset("mineV_charged", 100, 100);        // Done

sprite_change_offset("mineP_plant", 100, 100);          // Done
sprite_change_offset("mineP", 100, 100);                // Done
sprite_change_offset("mineP_det", 100, 100);            // Done
sprite_change_offset("mineP_charged", 100, 100);        // Done

sprite_change_offset("mineAZ_plant", 100, 100);          // Done
sprite_change_offset("mineAZ", 100, 100);                // Done
sprite_change_offset("mineAZ_det", 100, 100);            // Done
sprite_change_offset("mineAZ_charged", 100, 100);        // Done

sprite_change_offset("mine_chargedstrapped", 100, 100); // Done
sprite_change_offset("mine_strapped", 100, 100);        // Done
sprite_change_offset("mine_strapped_off", 100, 100);    // Done
sprite_change_offset("dspecial_proj", 100, 100);        // Done

sprite_change_offset("mineAZ_chargedstrapped", 100, 100); // Done
sprite_change_offset("mineAZ_strapped", 100, 100);        // Done
sprite_change_offset("mineAZ_strapped_off", 100, 100);    // Done
sprite_change_offset("dspecial_projAZ", 100, 100);        // Done

// Normal Stuff
sprite_change_offset("idle", xx, yy);                   // Done
sprite_change_offset("crouch", xx, yy);                 // Done

// Walk
sprite_change_offset("walk", xx, yy);                   // Done
sprite_change_offset("walkturn", xx, yy);               // Done

// Dash
sprite_change_offset("dash", xx, yy);                   // Done
sprite_change_offset("dashstart", xx, yy);              // Done
sprite_change_offset("dashstop", xx, yy);               // Done
sprite_change_offset("dashturn", xx, yy);               // Done

// Air Movement
sprite_change_offset("jumpstart", xx, yy);              // Done
sprite_change_offset("jump", xx, yy);                   // Done
sprite_change_offset("doublejump", xx, yy);             // Done
sprite_change_offset("walljump", xx + 2, yy);           // Done

// Oofyies
sprite_change_offset("pratfall", xx, yy);               // Done
sprite_change_offset("land", xx, yy);                   // Done
sprite_change_offset("landinglag", xx, yy);             // Done
sprite_change_offset("hurt", xx, yy);                   // Done
sprite_change_offset("bighurt", xx, yy);                // Done
sprite_change_offset("downhurt", xx, yy);               // Done
sprite_change_offset("uphurt", xx, yy);                 // Done
sprite_change_offset("bouncehurt", xx, yy);             // Done
sprite_change_offset("spinhurt", xx, yy);               // Done
sprite_change_offset("hurtground", xx, yy);             // Done

// Defense
sprite_change_offset("parry", xx, yy);                  // Done
sprite_change_offset("parry_shield", xx, yy);           // Done
sprite_change_offset("roll_forward", xx, yy);           // Done
sprite_change_offset("roll_backward", xx, yy);          // Done
sprite_change_offset("airdodge", xx, yy);               // Done
sprite_change_offset("waveland", xx, yy);               // Done
sprite_change_offset("tech", xx, yy);                   // Done

// Tilts
sprite_change_offset("jab", xx, yy, true);              // Done
sprite_change_offset("dattack", xx, yy, true);          // Done
sprite_change_offset("ftilt", xx, yy, true);            // Done
sprite_change_offset("ftilt_plasma", xx, yy, true);     // Done
sprite_change_offset("dtilt", xx, yy, true);            // Done
sprite_change_offset("utilt", xx, yy, true);            // Done

// Aerials
sprite_change_offset("nair", xx, yy, true);             // Done
sprite_change_offset("fair", xx, yy, true);             // Done
sprite_change_offset("bair", xx, yy, true);             // Done
sprite_change_offset("uair", xx, yy, true);             // Done
sprite_change_offset("dair", xx, yy, true);             // Done

sprite_change_offset("dair_plasma", xx, yy);            // Done
sprite_change_offset("vfx_dair", xx*2, yy*2);           // Done

// Strongs (Temp as Zetter)
sprite_change_offset("fstrong", xx, yy, true);          // Done
sprite_change_offset("fstrong2", xx, yy, true);         // Done

sprite_change_offset("fstrong2_plasma", xx, yy);        // Done
sprite_change_offset("fstrong2_white", xx, yy);         // Done

sprite_change_offset("ustrong", xx, yy, true);          // Done
sprite_change_offset("ustrong2", xx, yy, true);         // Done

sprite_change_offset("ustrong2_plasma", xx, yy);        // Done
sprite_change_offset("ustrong2_white", xx, yy);         // Done

sprite_change_offset("dstrong", xx, yy, true);          // Done
sprite_change_offset("dstrong2", xx, yy, true);         // Done

sprite_change_offset("dstrong2_plasma", xx, yy);        // Done
sprite_change_offset("dstrong2_white", xx, yy);         // Done

// Specials
sprite_change_offset("nspecial", xx, yy, true);         // Done
//sprite_change_offset("nspecial_air", 50, 94);

sprite_change_offset("nspecial_plasma", xx, yy, true);  // Done
sprite_change_offset("nspecial_white", xx, yy, true);   // Done

sprite_change_offset("fspecial", xx, yy, true);         // Done
//sprite_change_offset("fspecial_air", 50, 94);

sprite_change_offset("fspecial_plasma", xx, yy,);       // Done

sprite_change_offset("uspecial", xx, yy, true);         // Done
sprite_change_offset("uspecial2", xx, yy, true);        // Done

sprite_change_offset("uspecial2_plasma", xx, yy, true); // Done
sprite_change_offset("uspecial2_white", xx, yy, true);  // Done
sprite_change_offset("uspecial_proj", vfx_xx, vfx_yy);  // Done

sprite_change_offset("dspecial", xx, yy, true);         // Done (Place)
//sprite_change_offset("dspecial_air", 50, 94);
sprite_change_offset("dspecial2", xx, yy, true);        // Done (Detonate)

// Extra
sprite_change_offset("taunt", xx, yy, true);            // Done
sprite_change_offset("taunt_plasma", xx, yy);           // Done
// Add More Later
sprite_change_offset("taunt_az", xx, yy);
sprite_change_offset("taunt_az_white", xx, yy);
sprite_change_offset("taunt_l", xx, yy);
sprite_change_offset("taunt_l_white", xx, yy);
sprite_change_offset("taunt_hf", xx, yy);
sprite_change_offset("taunt_hf_white", xx, yy);
sprite_change_offset("taunt_pog", xx, yy);
sprite_change_offset("taunt_pog_white", xx, yy);
sprite_change_offset("taunt_happy", xx, yy);
sprite_change_offset("taunt_happy_white", xx, yy);
sprite_change_offset("taunt_angy", xx, yy);
sprite_change_offset("taunt_angy_white", xx, yy);
sprite_change_offset("taunt_thumbsup", xx, yy);
sprite_change_offset("taunt_thumbsup_white", xx, yy);
sprite_change_offset("taunt_thumbsdown", xx, yy);
sprite_change_offset("taunt_thumbsdown_white", xx, yy);
sprite_change_offset("taunt_okhand", xx, yy);
sprite_change_offset("taunt_okhand_white", xx, yy);
sprite_change_offset("taunt_shock", xx, yy);
sprite_change_offset("taunt_shock_white", xx, yy);
sprite_change_offset("taunt_owo", xx, yy);
sprite_change_offset("taunt_owo_white", xx, yy);
sprite_change_offset("taunt_ko", xx, yy);
sprite_change_offset("taunt_ko_white", xx, yy);

sprite_change_offset("boxtaunt", xx, yy);               // WIP
sprite_change_offset("fthrow", 26, 20, true);           // Post-Beta (Needs New Codecs Written.)
sprite_change_offset("plat", 32, 46);                   // Done
sprite_change_offset("penny_bobblehead", 2, 4);
sprite_change_offset("halloweencostume", 26, 20); 
sprite_change_offset("halloweencostumetoss", 26, 20); 

//
sprite_change_offset("mark_top", 96, 96);
sprite_change_offset("mark_bot", 96, 96);
sprite_change_offset("mark_small_top", 96, 96);
sprite_change_offset("mark_small_bot", 96, 96);

// Projectiles
sprite_change_offset("fspecial_proj", vfx_xx+16, vfx_yy);

// VFX
sprite_change_offset("vfx_plasmastrong", 150, 150);
sprite_change_offset("vfx_fspecialvanish", vfx_xx, vfx_yy);
sprite_change_offset("vfx_fspecialhit", vfx_xx, vfx_yy);
sprite_change_offset("vfx_dspecialchargeexplosion", 150, 150)