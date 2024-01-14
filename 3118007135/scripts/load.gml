#region // Variables
var xx = 63; // 126
var yy = 96; // 192

var vfxx = 126;
var vfyy = 126;

small_sprites = true;
#endregion

#region // Hurtboxes
sprite_change_offset("wren_hurtbox", xx*2, yy*2);   // DONE
sprite_change_offset("wren_crouchbox", xx*2, yy*2); // DONE
#endregion

#region // Ground Animations [8/8]
sprite_change_offset("idle", xx, yy);               // DONE
sprite_change_offset("crouch", xx, yy);             // DONE
sprite_change_offset("walk", xx, yy);               // DONE
sprite_change_offset("walkturn", xx, yy);           // DONE

sprite_change_offset("dash", xx, yy);               // DONE
sprite_change_offset("dash_wavetop", xx, yy);       // DONE
sprite_change_offset("dash_wave1", xx, yy);         // DONE
sprite_change_offset("dash_wave2", xx, yy);         // DONE
sprite_change_offset("dash_wave3", xx, yy);         // DONE
sprite_change_offset("dash_wavegen", xx, yy);         // DONE

sprite_change_offset("dashstart", xx, yy);          // DONE
sprite_change_offset("dashstart_wavetop", xx, yy);  // DONE
sprite_change_offset("dashstart_wave1", xx, yy);    // DONE
sprite_change_offset("dashstart_wave2", xx, yy);    // DONE
sprite_change_offset("dashstart_wave3", xx, yy);    // DONE
sprite_change_offset("dashstart_wavegen", xx, yy);    // DONE

sprite_change_offset("dashstop", xx, yy);           // DONE
sprite_change_offset("dashstop_wavetop", xx, yy);   // DONE
sprite_change_offset("dashstop_wave1", xx, yy);     // DONE
sprite_change_offset("dashstop_wave2", xx, yy);     // DONE
sprite_change_offset("dashstop_wave3", xx, yy);     // DONE
sprite_change_offset("dashstop_wavegen", xx, yy);     // DONE

sprite_change_offset("dashturn", xx, yy);           // DONE
sprite_change_offset("dashturn_wavetop", xx, yy);   // DONE
sprite_change_offset("dashturn_wave1", xx, yy);     // DONE
sprite_change_offset("dashturn_wave2", xx, yy);     // DONE
sprite_change_offset("dashturn_wave3", xx, yy);     // DONE
sprite_change_offset("dashturn_wavegen", xx, yy);     // DONE
#endregion

#region // Hurt Animations [7/7]
sprite_change_offset("hurt", xx, yy);               // DONE
sprite_change_offset("bighurt", xx, yy);            // DONE
sprite_change_offset("hurtground", xx, yy);         // DONE
sprite_change_offset("bouncehurt", xx, yy);         // DONE
sprite_change_offset("spinhurt", xx, yy);           // DONE
sprite_change_offset("uphurt", xx, yy);             // DONE
sprite_change_offset("downhurt", xx, yy);           // DONE
#endregion

#region // Aerial Animations [7/7]
sprite_change_offset("jumpstart", xx, yy);          // DONE
sprite_change_offset("jump", xx, yy);               // DONE
sprite_change_offset("doublejump", xx, yy);         // DONE
sprite_change_offset("doublejump_yoyo", xx, yy);    // DONE
sprite_change_offset("walljump", xx, yy);           // DONE
sprite_change_offset("pratfall", xx, yy);           // DONE
sprite_change_offset("land", xx, yy);               // DONE
sprite_change_offset("landinglag", xx, yy);         // DONE
#endregion

#region // Defense Animations [6/6]
sprite_change_offset("parry", xx, yy);              // DONE
sprite_change_offset("roll_forward", xx, yy);       // DONE
sprite_change_offset("roll_backward", xx, yy);      // DONE
sprite_change_offset("roll_wavetop", xx, yy);       // DONE
sprite_change_offset("roll_wave1", xx, yy);         // DONE
sprite_change_offset("roll_wave2", xx, yy);         // DONE
sprite_change_offset("roll_wave3", xx, yy);         // DONE
sprite_change_offset("roll_wavegen", xx, yy);         // DONE

sprite_change_offset("airdodge", xx, yy);           // DONE
sprite_change_offset("airdodge_yoyo", xx, yy);      // DONE
sprite_change_offset("airdodge_bleh", xx, yy);      // DONE
sprite_change_offset("airdodge_yawn", xx, yy);      // DONE
//sprite_change_offset("airdodge_swoon", xx, yy);     // DONE

sprite_change_offset("waveland", xx, yy);           // DONE

sprite_change_offset("tech", xx, yy);               // DONE
sprite_change_offset("tech_yoyo", xx, yy);          // DONE
sprite_change_offset("tech_wavetop", xx, yy);       // DONE
sprite_change_offset("tech_wave1", xx, yy);         // DONE
sprite_change_offset("tech_wave2", xx, yy);         // DONE
sprite_change_offset("tech_wave3", xx, yy);         // DONE
sprite_change_offset("tech_wavegen", xx, yy);         // DONE
#endregion

#region // Attack Animations [22/22]

#region // Tilts [5/5]
sprite_change_offset("jab", xx, yy, true);          // DONE
sprite_change_offset("jab_yoyo", xx, yy, true);     

sprite_change_offset("dattack", xx, yy, true);      // DONE
sprite_change_offset("dattack_wavetop", xx, yy);    // DONE
sprite_change_offset("dattack_wave1", xx, yy);      // DONE
sprite_change_offset("dattack_wave2", xx, yy);      // DONE
sprite_change_offset("dattack_wave3", xx, yy);      // DONE
sprite_change_offset("dattack_wavegen", xx, yy);      // DONE

sprite_change_offset("ftilt", xx, yy, true);        // DONE
sprite_change_offset("ftilt_yoyo", xx, yy);         // DONE
sprite_change_offset("ftilt_wavetop", xx, yy);      // DONE
sprite_change_offset("ftilt_wave1", xx, yy);        // DONE
sprite_change_offset("ftilt_wave2", xx, yy);        // DONE
sprite_change_offset("ftilt_wave3", xx, yy);        // DONE
sprite_change_offset("ftilt_wavegen", xx, yy);        // DONE

sprite_change_offset("dtilt", xx, yy, true);        // DONE
sprite_change_offset("dtilt_wavetop", xx, yy);      // DONE
sprite_change_offset("dtilt_wave1", xx, yy);        // DONE
sprite_change_offset("dtilt_wave2", xx, yy);        // DONE
sprite_change_offset("dtilt_wave3", xx, yy);        // DONE
sprite_change_offset("dtilt_wavegen", xx, yy);        // DONE
sprite_change_offset("dtilt_yoyo", xx, yy);         // DONE

sprite_change_offset("utilt", xx, yy, true);        // DONE
#endregion

#region // Aerials [5/5]
sprite_change_offset("nair", xx, yy, true);         // DONE
sprite_change_offset("fair", xx, yy, true);         // DONE

sprite_change_offset("bair", xx, yy, true);         // DONE
sprite_change_offset("bair_yoyo", xx, yy, true);    // DONE

sprite_change_offset("uair", xx, yy, true);         // DONE
sprite_change_offset("uair_wavetop", xx, yy);      // DONE
sprite_change_offset("uair_wave1", xx, yy);        // DONE
sprite_change_offset("uair_wave2", xx, yy);        // DONE
sprite_change_offset("uair_wave3", xx, yy);        // DONE
sprite_change_offset("uair_wavegen", xx, yy);        // DONE

sprite_change_offset("dair", xx, yy, true);         // DONE
#endregion

#region // Strongs [3/3]
sprite_change_offset("fstrong", 29, yy, true);      // DONE
sprite_change_offset("ustrong", xx, yy, true);      // DONE
sprite_change_offset("dstrong", xx, yy, true);      // DONE
sprite_change_offset("dstrong_yoyo", xx, yy);       // DONE

#endregion
#region // Specials [8/8]
sprite_change_offset("nspecial", xx, yy, true);         // DONE
sprite_change_offset("nspecial2", xx, yy, true);        // DONE
//sprite_change_offset("nspecial_air", xx, yy, true);     // beta
//sprite_change_offset("nspecial2_air", xx, yy, true);    // beta

sprite_change_offset("fspecial", xx, yy, true);         // DONE
sprite_change_offset("fspecial_wavetop", xx, yy); // DONE
sprite_change_offset("fspecial_wave1", xx, yy);   // DONE
sprite_change_offset("fspecial_wave2", xx, yy);   // DONE
sprite_change_offset("fspecial_wave3", xx, yy);   // DONE
sprite_change_offset("fspecial_wavegen", xx, yy);   // DONE

sprite_change_offset("uspecial", xx, yy, true);         // DONE
sprite_change_offset("uspecial_wavetop", xx, yy);       // DONE
sprite_change_offset("uspecial_wave1", xx, yy);         // DONE
sprite_change_offset("uspecial_wave2", xx, yy);         // DONE
sprite_change_offset("uspecial_wave3", xx, yy);         // DONE
sprite_change_offset("uspecial_wavegen", xx, yy);         // DONE
sprite_change_offset("uspecial_yoyo", xx, yy);          // DONE

sprite_change_offset("uspecialex", xx, yy, true);       // DONE
sprite_change_offset("uspecialex_wavetop", xx, yy);     // DONE
sprite_change_offset("uspecialex_wave1", xx, yy);       // DONE
sprite_change_offset("uspecialex_wave2", xx, yy);       // DONE
sprite_change_offset("uspecialex_wave3", xx, yy);       // DONE
sprite_change_offset("uspecialex_wavegen", xx, yy);       // DONE
sprite_change_offset("uspecialex_yoyo", xx, yy);        // DONE

sprite_change_offset("uspecial2", xx, yy, true);        // DONE
sprite_change_offset("dspecial", xx, yy, true);         // DONE
sprite_change_offset("dspecial2", xx, yy, true);        // DONE
//sprite_change_offset("dspecial_air", xx, yy, true);     // beta
//sprite_change_offset("dspecial2_air", xx, yy, true);    // beta

#endregion
#region // Taunt [1/1]
sprite_change_offset("taunt", xx, yy, true);            // DONE
sprite_change_offset("taunt_wavetop", xx, yy);          // DONE
sprite_change_offset("taunt_wave1", xx, yy);            // DONE
sprite_change_offset("taunt_wave2", xx, yy);            // DONE
sprite_change_offset("taunt_wave3", xx, yy);            // DONE
sprite_change_offset("taunt_wavegen", xx, yy);            // DONE
sprite_change_offset("taunt_yoyo", xx, yy);             // DONE
#endregion

#region // Extra Anims
//sprite_change_offset("idle", xx, yy);                   // DONE

sprite_change_offset("shield_front", xx, yy);           // DONE
sprite_change_offset("shield", xx, yy);                 // DONE [0/3]
//sprite_change_offset("shield_back", xx, yy);            // DONE
sprite_change_offset("shield_health", xx, yy);          // DONE

sprite_change_offset("knockdown", xx, yy);              // DONE [0/4] (maybe /6)
//sprite_change_offset("ledge", xx, yy);                  // DONE [0/5]
#endregion

#region // Whirlspool Animations
sprite_change_offset("bubble", vfxx, vfyy);
sprite_change_offset("bubble_mask", vfxx, vfyy);
sprite_change_offset("bubble_whirl", vfxx, vfyy);
sprite_change_offset("bubble_whirlstart", vfxx, vfyy);
sprite_change_offset("bubble_whirlend", vfxx, vfyy);
sprite_change_offset("bubble_init", vfxx, vfyy);
sprite_change_offset("bubble_return", vfxx, vfyy);
sprite_change_offset("bubble_recall", vfxx, vfyy);
sprite_change_offset("bubble_pop", vfxx, vfyy);
sprite_change_offset("bubble_pull", vfxx, vfyy);

sprite_change_offset("bubble_gen", vfxx, vfyy);
sprite_change_offset("bubble_whirl_gen", vfxx, vfyy);
sprite_change_offset("bubble_whirlstart_gen", vfxx, vfyy);
sprite_change_offset("bubble_whirlend_gen", vfxx, vfyy);
sprite_change_offset("bubble_init_gen", vfxx, vfyy);
sprite_change_offset("bubble_return_gen", vfxx, vfyy);
sprite_change_offset("bubble_recall_gen", vfxx, vfyy);
sprite_change_offset("bubble_pop_gen", vfxx, vfyy);
sprite_change_offset("bubble_pull_gen", vfxx, vfyy);

sprite_change_offset("string", 0, 2);
sprite_change_offset("article_offscreen", 33, 33);
#endregion

#region // Wave Animations [DONE]
sprite_change_offset("wave", xx*2, yy*2);
sprite_change_offset("wave_mask", xx*2, yy*2);
sprite_change_offset("wave_death", xx*2, yy*2);
sprite_change_offset("wave_final", xx*2, yy*2);

sprite_change_offset("wave_gen", xx*2, yy*2);
sprite_change_offset("wave_death_gen", xx*2, yy*2);
sprite_change_offset("wave_final_gen", xx*2, yy*2);
#endregion

#region // Mark Sprites (Hello everyone my name is-)
sprite_change_offset("marksmallA_front", 96, 96);
sprite_change_offset("marksmallA_back",  96, 96);
sprite_change_offset("marksmallB_front", 96, 96);
sprite_change_offset("marksmallB_back",  96, 96);
sprite_change_offset("marksmallC_front", 96, 96);
sprite_change_offset("marksmallC_back",  96, 96);
sprite_change_offset("marklargeA_front", 96, 96);
sprite_change_offset("marklargeA_back",  96, 96);
sprite_change_offset("marklargeB_front", 96, 96);
sprite_change_offset("marklargeB_back",  96, 96);
sprite_change_offset("marklargeC_front", 96, 96);
sprite_change_offset("marklargeC_back",  96, 96);
#endregion

#region // VFX
sprite_change_offset("vfx_sweetspot", vfxx, vfyy);
sprite_change_offset("vfx_uspecialfinal", vfxx, vfyy);
sprite_change_offset("vfx_riptide_ichi", 0, 80);

sprite_change_offset("hfx_yoyo_small", 80, 80); // Jab 2, DAir, NAir
sprite_change_offset("hfx_yoyo_big", 128, 128); // FAir
sprite_change_offset("hfx_yoyo_huge", 257, 257); // Tipper FStrong, DStrong, UStrong
sprite_change_offset("hfx_waves_small", 80, 80); // FTilt, DTilt, NSpecial, DSpecial, FSpecial, USpecial
sprite_change_offset("hfx_waves_big", 128, 128); // Final USpecial
sprite_change_offset("hfx_waves_huge", vfxx, vfyy); // EX USpecial

sprite_change_offset("part_wave", 18, 18);
#endregion

sprite_change_offset("arrow", 4, 4);
sprite_change_offset("plat", 64/2, 94/2);