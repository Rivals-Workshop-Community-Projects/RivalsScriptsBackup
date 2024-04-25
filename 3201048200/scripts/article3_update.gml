
// article1_update - runs every frame the article exists
// Minor objects

/*STATE LIST

- Default (-1): Failed initialization

- 00: Parachute
- 01: Spawn platform
- 02: Drone despawn ~ fly away

- 10: Rune A manager

- 20-21: DSpec parry cooldown manager
- 22-23: DSpec empowered parry cooldown (rune K) parry cooldown

*/



switch state {
    
    // Parachute
    case 00:
        if (state_timer == 0) {
            vis_angle = player_id.vis_parachute_angle;
            vis_alpha = 1;
            vis_frame = player_id.vis_parachute_frame;
            hsp = vis_angle/38;
            vsp = -1.2;
        }
        vsp -= 0.2;
        if (state_timer > 10) vis_alpha -= 0.1;
        if (vis_frame < 2) vis_frame += 0.25;
        if (vis_alpha <= 0) {
            instance_destroy();
            exit;
        }
        break;
    
    // Spawn platform
    case 01:
        if (state_timer == 0) {
            hsp = 0.5*spr_dir;
            vsp = 0;
        }
        if (abs(hsp) < 6) hsp += 1 * spr_dir;
        vsp -= 0.2;
        if (state_timer > 10) vis_alpha -= 0.1;
        if (vis_alpha <= 0) {
            instance_destroy();
            exit;
        }
        break;
    
    // Drone despawn ~ fly away
    case 02:
        if (state_timer == 0) {
            hsp = 0.5*spr_dir;
            vsp = 0;
        }
        vis_frame = 12 + (state_timer / 5) % 2;
        if (abs(hsp) < 3) hsp += 0.5 * spr_dir;
        vsp -= 0.2;
        if (state_timer > 2) vis_alpha -= 0.1;
        if (vis_alpha <= 0) {
            instance_destroy();
            exit;
        }
        break;
    
    
    
    // Rune A manager
    case 10:
        break;
    
    
    // DSpec parry cooldown
    case 20:
        player_id.dspec_article_cooldown = 2;
        vis_frame = 8 + (state_timer / 6) % 9;
        vis_y_offset = 2 * round(sin(pi*state_timer/30));
        if (state_timer >= player_id.dspec_parry_article_cooldown) {
            state = 21;
            state_timer = 0;
            vis_frame = 2;
            vis_y_offset = 0;
            exit;
        }
        break;
    
    // DSpec parry cooldown: fadeout
    case 21:
        vis_frame = 2 - (state_timer / 3);
        if (state_timer >= 9) {
            instance_destroy();
            exit;
        }
        break;
        
    // DSpec empowered parry cooldown (rune K)
    case 22:
        player_id.dspec_article_cooldown = 2;
        vis_frame = 8 + (state_timer / 6) % 9;
        vis_y_offset = 2 * round(sin(pi*state_timer/30));
        
        if (state_timer == player_id.dspec_max_article_cooldown-13) sound_play(sound_get("snake_prime1"));
        if (state_timer == player_id.dspec_max_article_cooldown-6) sound_play(sound_get("snake_prime1"));
        if (state_timer == player_id.dspec_max_article_cooldown-2) sound_play(sound_get("boom"));
        if (state_timer >= player_id.dspec_max_article_cooldown) {
            state = 23;
            state_timer = 0;
            vis_frame = 2;
            vis_y_offset = 0;
            
            x_offs = [-50, 50];
            y_offs = [-30, -130];
            for (var i = 0; i < 4; i++) spawn_hit_fx(x+x_offs[floor(i/2)], y+6+y_offs[i%2], player_id.vfx_dspec_explode);
        }
        break;
    
    // DSpec empowered parry cooldown: explode!
    case 23:
        if (state_timer == 3) {
            for (var i = 0; i < 4; i++) create_hitbox(AT_DSPECIAL, 3, x+x_offs[floor(i/2)], y-4+y_offs[i%2]); // Rune drone explosion
            instance_destroy();
            exit;
        }
        
        break;
    
    //#region Failed initialization
    default:
        print_debug("Error: article 3 was not properly initialized")
        instance_destroy();
        exit;
    //#endregion
    
}

state_timer++;


#define do_air_friction(decel)
    var dec_dir = point_direction(hsp, vsp, 0, 0);
    var hsp_dec = lengthdir_x(decel, dec_dir);
    var vsp_dec = lengthdir_y(decel, dec_dir);
    
    hsp = (abs(hsp_dec) < abs(hsp)) ? (hsp + hsp_dec) : 0;
    vsp = (abs(vsp_dec) < abs(vsp)) ? (vsp + vsp_dec) : 0;