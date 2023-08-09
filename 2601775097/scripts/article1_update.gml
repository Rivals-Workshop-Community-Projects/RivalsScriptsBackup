//article1_update

state_timer ++;
window_timer ++;

if (state != 0)
{
    if (window_timer >= window_length)
    {
        if (window < last_window)
        {
            if (window_looping) window = window;
            else window ++;

            window_timer = 0;
        }
    }
}

switch (state)
{
    case 0: //this is a special state i'm using to get a unique ID for bar's articles. DO NOT USE
        break;
    case "accel_indc":          //accel blitz indicator
        apply_base_logic(0, 0, sprite_get("fx_skill6_marker"), sprite_get("hitbox_skill6"), player_id.hb_color[2]);
        depth = player_id.depth-2;
        last_window = 0; //prevent the window animation system from working
        
        //sets up image stuff
        artc_image_index = alt_cur;
        if (alt_cur != 14 && alt_cur != 15) image_alpha = 0.8;
        else image_alpha = 1;

        image_index = artc_image_index;

        if (alt_cur == 9 && state_timer == 1) sound_play(sound_get("sfx_soul")); //undertale reference

        //records the position of the article for as long as it's active
        if (state_timer % 5 == 0) array_push(player_id.accel_pos, [x, y]);

        //when he's about to teleport, record the last position and delete the article
        if (player_id.window == 3)
        {
            switch (player_id.window_timer)
            {
                case 0:
                    hsp = 0;
                    vsp = 0;
                    array_push(player_id.accel_pos, [x, y]);
                case 1:
                    do_destroy();
                    exit;
            }
        }

        if (player_id.state_cat == SC_HITSTUN || player_id.state == PS_DEAD || player_id.state == PS_RESPAWN) do_destroy();
        break;
    case "power_crater":        //power smash burning ground
        apply_base_logic(1, 0, sprite_get("fx_skill5"), sprite_get("hitbox_skill5"), player_id.hb_color[3]);
        vsp = 1;

        image_index = artc_image_index;

        last_window = 3;
        switch (window)
        {
            case 1: //creation
                window_frame_start = 0;
                window_frames = 2;
                window_length = 6;

                switch (window_timer)
                {
                    case 2:
                        if (free) do_destroy();
                        break;
                }
                break;
            case 2: //idle
                window_frame_start = 2;
                window_frames = 1;
                window_length = 170 + (120 * had_burnbuff); //burning fury makes it stay for longer
                break;
            case 3: //destroyed
                window_frame_start = 3;
                window_frames = 2;
                window_length = 10;

                if (window_timer == 0) sound_play(asset_get("sfx_burnend"));
                break;
        }

        if (window < 3)
        {
            //fire particles
            var random_x = (random_func(26, 17,true)-8)*8;
            var random_dir = random_func(364, 2,true)-1;
            var fx_fire = spawn_hit_fx(x+random_x, y-16, hit_fx_create(sprite_get("fx_burn"), had_burnbuff ? 32 : 18));
            fx_fire.spr_dir = random_dir;
            if (fx_fire.spr_dir == 0) fx_fire.spr_dir = 1;
            fx_fire.draw_angle = 40*fx_fire.spr_dir;
            fx_fire.vsp = -1.25 - (had_burnbuff);
            fx_fire.hsp = had_burnbuff ? random_x/64 : -random_x/64;

            //hitbox stuff
            if (get_gameplay_time() % 30 == 0)
            {
                with (oPlayer)
                {
                    if (place_meeting(x, y, other) && player != other.player && (get_player_team(player) != get_player_team(other.player) ||
                    get_match_setting(SET_TEAMATTACK)) && !invincible)
                    {
                        holyburning = true;
                        holyburn_timer = other.player_id.holyburn_timer_set;
                        holyburner_id = other.player_id;
                    }
                }
            }

            //premature destruction
            if ((place_meeting(x, y, asset_get("plasma_field_obj")) || free && state_timer > 2))
            {
                sound_play(asset_get("sfx_burnend"));
                set_window(3);
            }
        }
        break;
    case "hook_chain":          //light hookshot chain particles
        apply_base_logic(0, 1);

        //this part is just the logic of the animation for the most part
        //for the logic of the chain itself go to article1_post_draw

        //captures bar's current position as long as the article is around
        with (player_id)
        {
            if (attack == AT_EXTRA_2)
            {
                hook_bar_pos[0] = x+64*spr_dir;
                hook_bar_pos[1] = y-32;
            }
        }

        //animation logic
        last_window = 3;
        switch (window)
        {
            case 1: //forming
                window_frame_start = 0;
                window_frames = 3;
                window_length = 8;
                break;
            case 2: //idle
                window_frame_start = 3;
                window_frames = 4;
                window_length = 16;
                window_looping = true;
                break;
            case 3: //chain vanish
                window_frame_start = 7;
                window_frames = 4;
                window_length = 14;
                break;
        }
        break;
    case "theikos_fire":        //theikos D-strong fire
        apply_base_logic(1, 0);

        //drawn in post draw and the hitbox extends accordingly

        last_window = 3;
        switch (window)
        {
            case 1: //start
                window_frame_start = 0;
                window_frames = 3;
                window_length = 8;
                switch (window_timer)
                {
                    case 1:
                        rec_fire_count = player_id.dstrong2_fire_count;
                        break;
                }
                break;
            case 2: //idle
                window_frame_start = 3;
                window_frames = 8;
                window_length = 28;

                window_looping = !(player_id.attack == player_id.AT_OVERDRIVE ? state_timer >= 100 : state_timer >= 80);

                if (state_timer % 10 == 0) for (var count = -rec_fire_count; count <= rec_fire_count; ++count)
                {
                    var groundfire = create_hitbox(AT_DSTRONG_2, 3, x+fire_offset*count, player_id.attack == player_id.AT_OVERDRIVE ? y-24 : y-8);
                    groundfire.fx_particles = 2;
                }
                break;
            case 3: //end
                window_frame_start = 11;
                window_frames = 4;
                window_length = 14;

                switch (window_timer)
                {
                    case 1:
                        sound_play(asset_get("sfx_burnend"));
                        break;
                    case 9:
                        player_id.dstrong2_active = false;
                        break
                }
                break;
        }
        break;
    case "theikos_shockwave":   //theikos transformation shockwave
        apply_base_logic(0, 1, sprite_get("fx_theikos_shockwave"));

        last_window = 0;
        depth = player_id.depth-1;

        image_xscale = 1 + state_timer * 0.8;
        image_yscale = 1 + state_timer * 0.8;
        image_alpha = 1 - state_timer / 10;
        
        if (state_timer == 10)
        {
            do_destroy();
            exit;
        }
        break;
}


if (last_window > 0)
{
    artc_image_index = lerp(window_frame_start, window_frame_start+window_frames, window_timer/window_length);
    if (window_timer >= window_length) do_destroy();
}


//usage:
//apply_base_logic(can_be_grounded, ignores walls, sprite index, mask index, mask color, sprite scale)
#define apply_base_logic
{
    can_be_grounded = argument[0];
    ignores_walls = argument[1];
    var sprite = argument_count > 2 ? argument[2] : asset_get("empty_sprite");
    var mask = argument_count > 3 ? argument[3] : asset_get("empty_sprite");
    mask_color = argument_count > 4 ? argument[4] : 0;
    var scale = argument_count > 5 ? argument[5] : 2;

    sprite_index = sprite;
    mask_index = mask;
    image_xscale = scale;
    image_yscale = scale;
}
#define set_window(new_window)
{
    window = new_window;
    window_timer = 0;
}
#define do_destroy
{
    instance_destroy();
    exit;
}