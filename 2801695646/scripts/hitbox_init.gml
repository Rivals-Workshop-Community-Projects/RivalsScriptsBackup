//hitbox_init
sna_parent_ent = noone;
depth = 0;

//=========================================================
// INITIALIZE CUSTOM HITBOX VARIABLES
//=========================================================
sna_dmg_life = 0;
sna_dmg_psyche = 0;
sna_dmg_psyche_ko_type = -1;                                                     // -1 = no change, 0 = stun, 1 = sleep
sna_sfx_deplete = noone;
sna_force_deplete = false;                                                      // Does this deplete the gauge, even when the gauge has already been depleted? (Should usually only true for explosions.)

//=========================================================
// SET HITBOX STAT DAMAGE
//=========================================================
switch(attack){
    
    //------------------------------------
    // Firearms
    //------------------------------------
    case AT_FSPECIAL:
        switch(hbox_num){
            case 1: // .45 Bullet
                sna_dmg_life = 13;
                sna_sfx_deplete = sound_get("sfx_hit_bullet_ko_lyr");
            break;
            
            case 2: // .9mm Dart
                sna_dmg_psyche = 33;
                sna_sfx_deplete = sound_get("sfx_hit_tranq_ko_lyr");
                sna_dmg_psyche_ko_type = 1;
            break;
            
            case 3: // 5.56 Bullet
                sna_dmg_life = 10;
                sna_sfx_deplete = sound_get("sfx_hit_bullet_ko_lyr");
            break;
            
            case 4: // 7.62 Dart
                sna_dmg_psyche = 66;
                sna_sfx_deplete = sound_get("sfx_hit_tranq_ko_lyr");
                sna_dmg_psyche_ko_type = 1;
            break;
        }
        
    break;
    
    //------------------------------------
    // Throwables
    //------------------------------------
    case AT_NSPECIAL:
        switch(hbox_num){
            case 3: // KO "DING!" Magazine
                sna_dmg_psyche = 200;
                sna_dmg_psyche_ko_type = 0;
            break;
            
            //case 4: // Frag Inner Explosion
                //sna_dmg_life = 100;
            //break;
            case 5: // Frag Outer Explosion
                sna_dmg_life = 200;
                sna_force_deplete = true;
            break;
            
            case 6: // Stun Grenade
                sna_dmg_psyche = 50;
                sna_dmg_psyche_ko_type = 0;
            break;
            
            case 7: // Claymore Explosion
                sna_dmg_life = 200;
                sna_force_deplete = true;
            break;
            
            case 8: // C4 Explosion
                sna_dmg_life = 200;
                sna_force_deplete = true;
            break;
            
            case 9: // Sleep Gas
                sna_dmg_psyche = 200;
                sna_dmg_psyche_ko_type = 1;
            break;
            
            case 10: // Supply Drop Box
                sna_dmg_psyche = 200;
                sna_dmg_psyche_ko_type = 0;
            break;
        }
    break;
    
}