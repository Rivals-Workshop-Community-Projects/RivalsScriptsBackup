//other_pre_draw.gml
if ("other_player_id" not in self) exit;

//===============================================================================
if (marked && marked_player == other_player_id.player) with (other_player_id)
{
    //Draw on behalf of Maypuls everywhere
    shader_start();
    var width = 40;
    draw_sprite(asset_get("fer_leaf_spr"), 1, other.x + width - 2 * (get_gameplay_time() % width), other.y - 20);
    shader_end();
}


//===============================================================================
if ("msg_unsafe_handler_id" in self && other_player_id == msg_unsafe_handler_id)
{
    //backup draw params (restored in post_draw)
    msg_copy_params(self, msg_anim_backup, msg_anim_backup);

    msg_gpu_push_state();

    //Get your random effects recalculated
    msg_apply_effects();

    msg_prep_negative_draw();

    shader_start();
    msg_draw_clones();
    msg_manual_draw(true);
    shader_end();

    msg_negative_draw()
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_manual_draw // Version 0
    // / msg_manual_draw(main_draw = true)
    // Handles REDRAW-type effects that need to draw differently than usual
    // also reused for clone's draws and glitch-bg draws
    var main_draw = argument_count > 0 ? argument[0] : true; //FALSE when rendering the glitch BG
    var skips_draw = false; //determines if the actual draw event needs to be prevented

    var scale = 1 + small_sprites;
    var g = msg_unsafe_garbage;

    //===========================================================
    // REDRAW EFFECT: VSYNC
    // sprite trisected vertically, middle displaced
    if (msg_unsafe_effects.bad_vsync.timer > 0)
    {
        var spr_w = abs(sprite_width); //why is this necessary !?
        var spr_h = abs(sprite_height); //why is this necessary !?
        var spr_cliptop = spr_h - msg_unsafe_effects.bad_vsync.cliptop;
        var spr_clipbot = spr_h - msg_unsafe_effects.bad_vsync.clipbot;
        var pos_x = x - scale*sprite_xoffset + draw_x;
        var pos_y = y - scale*abs(sprite_yoffset) + draw_y;

        var mid_cliptop = spr_cliptop;
        var mid_sprite = sprite_index;
        var mid_scale = scale;
        var mid_width = spr_w;
        var mid_posx = msg_unsafe_effects.bad_vsync.horz + pos_x;
        var mid_clipheight = spr_clipbot - spr_cliptop;

        if (msg_unsafe_effects.bad_vsync.garbage)
        {
            //middle bit borrowed from unrelated sprite
            mid_sprite = g.spr;
            mid_scale = g.scale;
            mid_width = g.width;
            mid_posx -= (spr_dir*mid_scale*g.x_offset - scale*sprite_xoffset);
            mid_clipheight *= (scale/mid_scale);
            mid_cliptop += (g.y_offset - abs(sprite_yoffset))
        }
        //draw_sprite_part_ext(sprite,subimg,left,top,width,height,x,y,xscale,yscale,colour,alpha)
        draw_sprite_part_ext(sprite_index, image_index, 0, 0, spr_w, spr_cliptop,
                             pos_x, pos_y, spr_dir * scale, scale, c_white, image_alpha);
        draw_sprite_part_ext(mid_sprite, image_index, 0, mid_cliptop, mid_width, mid_clipheight,
                             mid_posx, pos_y + spr_cliptop*scale, spr_dir * mid_scale, mid_scale, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, image_index, 0, spr_clipbot, spr_w, max(spr_h - spr_clipbot, 0),
                             pos_x, pos_y + spr_clipbot*scale, spr_dir * scale, scale, c_white, image_alpha);

        skips_draw = main_draw;
    }
    //===========================================================
    // REDRAW EFFECT: QUADRANT
    // sprite split in four corners, then rearranged
    else if (msg_unsafe_effects.quadrant.timer > 0)
    {
        var ofx = abs(sprite_xoffset);
        var ofy = abs(sprite_yoffset);
        var bbt = sprite_get_bbox_top(sprite_index);
        var bbl = sprite_get_bbox_left(sprite_index);
        var bbr = sprite_get_bbox_right(sprite_index);
        var bbb = sprite_get_bbox_bottom(sprite_index);

        //centerpoint of sprite quad division
        var half_h = min((ofy - bbt)*scale, char_height) / 2; //realspace (used for draw pos)
        var c_y = ofy - half_h/scale; //spritespace (used for sprite source cropping)

        //garbage variables
        var gofx = abs(g.x_offset);
        var gofy = abs(g.y_offset);
        var gbt = sprite_get_bbox_top(g.spr);
        var gbl = sprite_get_bbox_left(g.spr);
        var gbr = sprite_get_bbox_right(g.spr);
        var gbb = sprite_get_bbox_bottom(g.spr);
        var gcy = gofy - half_h/g.scale; //spritespace (used for sprite source cropping)

        // 0 1
        // 2 3
        var q = [noone, noone, noone, noone];
        q[0]=msg_unsafe_effects.quadrant.garbage[0] ?
             {scale:g.scale, spr:g.spr,        ind:image_index, x:gbl, y:gbt, w:(gofx- gbl), h:(gcy - gbt) }:
             {scale:scale,   spr:sprite_index, ind:image_index, x:bbl, y:bbt, w:(ofx - bbl), h:(c_y - bbt) };
        q[1]=msg_unsafe_effects.quadrant.garbage[1] ?
             {scale:g.scale, spr:g.spr,        ind:image_index, x:gofx,y:gbt, w:(gbr -gofx), h:(gcy - gbt) }:
             {scale:scale,   spr:sprite_index, ind:image_index, x:ofx, y:bbt, w:(bbr - ofx), h:(c_y - bbt) };
        q[2]=msg_unsafe_effects.quadrant.garbage[2] ?
             {scale:g.scale, spr:g.spr,        ind:image_index, x:gbl, y:gcy, w:(gofx- gbl), h:(gbb - gcy) }:
             {scale:scale,   spr:sprite_index, ind:image_index, x:bbl, y:c_y, w:(ofx - bbl), h:(bbb - c_y) };
        q[3]=msg_unsafe_effects.quadrant.garbage[3] ?
             {scale:g.scale, spr:g.spr,        ind:image_index, x:gofx,y:gcy, w:(gbr -gofx), h:(gbb - gcy) }:
             {scale:scale,   spr:sprite_index, ind:image_index, x:ofx, y:c_y, w:(bbr - ofx), h:(bbb - c_y) };

        //draw_line_color(x - (ofx - bbl)*scale, y - half_h, x + (bbr - ofx)*scale, y - half_h, c_white, c_white)
        //draw_line_color(x, y - half_h - half_h, x, y - half_h + half_h, c_white, c_white)

        //draw_sprite_part_ext(sprite,subimg,left,top,width,height,x,y,xscale,yscale,colour,alpha)

        var s = msg_unsafe_effects.quadrant.source[0];
        draw_sprite_part_ext(q[s].spr, q[s].ind, q[s].x, q[s].y, q[s].w, q[s].h,
                             x +draw_x - q[s].w*q[s].scale*spr_dir, y +draw_y - half_h - q[s].h*q[s].scale,
                             spr_dir * q[s].scale, q[s].scale, c_white, image_alpha);

        s = msg_unsafe_effects.quadrant.source[1];
        draw_sprite_part_ext(q[s].spr, q[s].ind, q[s].x, q[s].y, q[s].w, q[s].h,
                             x +draw_x, y +draw_y - half_h - q[s].h*q[s].scale,
                             spr_dir * q[s].scale, q[s].scale, c_white, image_alpha);

        s = msg_unsafe_effects.quadrant.source[2];
        draw_sprite_part_ext(q[s].spr, q[s].ind, q[s].x, q[s].y, q[s].w, q[s].h,
                             x +draw_x - q[s].w*q[s].scale*spr_dir, y +draw_y - half_h,
                             spr_dir * q[s].scale, q[s].scale, c_white, image_alpha);

        s = msg_unsafe_effects.quadrant.source[3];
        draw_sprite_part_ext(q[s].spr, q[s].ind, q[s].x, q[s].y, q[s].w, q[s].h,
                             x +draw_x, y +draw_y - half_h,
                             spr_dir * q[s].scale, q[s].scale, c_white, image_alpha);

        skips_draw = main_draw;
    }
    //===========================================================
    // REDRAW EFFECT: BAD_STRIP
    // sprite split vertically as if (n+1) was the strip number given
    else if (msg_unsafe_effects.bad_strip.timer > 0)
    {
        var num_img = sprite_get_number(sprite_index);
        var spr_w = abs(sprite_width); //why is this necessary !?
        var spr_h = abs(sprite_height);

        var clamped_index = floor(image_index % num_img);
        var crop_step = floor(spr_w / (num_img + 1));
        var crop_total = crop_step * clamped_index;
        var pos_x = x + draw_x  - scale* (sprite_xoffset - crop_step*sign(spr_dir)*0.5);
        var pos_y = y - scale*abs(sprite_yoffset) + draw_y;

        if (clamped_index > 0)
        {   //slice of previous image
            draw_sprite_part_ext(sprite_index, clamped_index-1, spr_w - crop_total, 0, crop_total, spr_h,
                                 pos_x, pos_y, spr_dir * scale, scale, c_white, image_alpha);
        }
        //current image, sliced
        draw_sprite_part_ext(sprite_index, clamped_index, 0, 0, spr_w - crop_total - crop_step, spr_h,
                             pos_x + scale*spr_dir*crop_total, pos_y, spr_dir * scale, scale, c_white, image_alpha);

        skips_draw = main_draw;
    }
    //===========================================================
    // REDRAW EFFECT: CRT
    // sprite R/G/B misaligned
    else if (msg_unsafe_effects.crt.timer > 0)
    {
        var crt_offset = msg_unsafe_effects.crt.offset;

        gpu_set_colorwriteenable(false, true, true, true); //R
        draw_sprite_ext(sprite_index, image_index, x+draw_x-crt_offset, y+draw_y,
                        scale*spr_dir, scale, spr_angle, c_white, image_alpha);

        gpu_set_colorwriteenable(true, false, false, true); //GB
        draw_sprite_ext(sprite_index, image_index, x+draw_x+crt_offset, y+draw_y,
                        scale*spr_dir, scale, spr_angle, c_white, image_alpha);

        gpu_set_colorwriteenable(true, true, true, true);

        skips_draw = main_draw;
    }
    //===========================================================
    // Normal draw (needed by glitch BG)
    else if (!main_draw)
         //changing small_sprites in pre_draw does not affect regular draw code.
         || (small_sprites != msg_anim_backup.small_sprites)
         //requires an extra pass to draw in negative colors
         || ((msg_unsafe_effects.blending.timer > 0) && (msg_unsafe_effects.blending.kind == 0))
    {
        draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y,
                        scale*spr_dir, scale, spr_angle, c_white, image_alpha);

        skips_draw = main_draw;
    }
    //===========================================================

    // to turn off normal rendering for this frame
    if (skips_draw) sprite_index = asset_get("empty_sprite");

#define msg_draw_clones // Version 0
    // Draws every clone you own
    with (obj_article2) if ("is_missingno_copy" in self)
                        && (client_id == other)
    {
        var cl_scale = (1 + other.small_sprites);
        var cl_alpha = (state == 2 ? 0.5 : 1);
        if (state == 0)
        {
            cl_scale *= floor(state_timer/5) * 0.25;
            with (other) draw_sprite_ext(sprite_index, image_index, other.x, other.y, cl_scale*spr_dir, cl_scale, 0, c_white, cl_alpha)
        }
        else with (other)
        {
            var temp = msg_unsafe_effects.quadrant.timer;
            if (other.is_clone_broken) msg_unsafe_effects.quadrant.timer = 1;
            draw_x += other.client_offset_x;
            draw_y += other.client_offset_y;
            image_alpha = cl_alpha;

            msg_manual_draw(false);

            image_alpha = 1;
            msg_unsafe_effects.quadrant.timer = temp;
            draw_x -= other.client_offset_x;
            draw_y -= other.client_offset_y;
        }
    }

#define msg_copy_params(source, target, limiter) // Version 0
    // Usage: for all variables in LIMITER: copy value from SOURCE to TARGET
    var keys = variable_instance_get_names(limiter)
    for (var k = 0; k < array_length(keys); k++)
    {
        variable_instance_set(target, keys[k],
                                variable_instance_get(source, keys[k]));
    }

#define msg_prep_negative_draw // Version 0
    if (msg_unsafe_effects.blending.timer > 0) && (msg_unsafe_effects.blending.kind == 0)
    {
        msg_negative_sprite_save = sprite_index;
        msg_negative_image_save = image_index;
    }

#define msg_negative_draw // Version 0
    if (msg_unsafe_effects.blending.timer > 0) && (msg_unsafe_effects.blending.kind == 0)
    {
        //Special draw step to make the blendmode draw a inverse-source-color sprite
        gpu_set_fog(true, c_white, 1, 1);
        gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_alpha);
        sprite_index = msg_negative_sprite_save;
        image_index = msg_negative_image_save;
        msg_draw_clones();
        msg_manual_draw(false);
        sprite_index = asset_get("empty_sprite");
        gpu_set_blendmode(bm_normal);
    }

#define msg_gpu_push_state // Version 0
    gpu_push_state(); msg_unsafe_gpu_stack_level++;

#define msg_apply_effects // Version 0
    // aka. unsafe_animation.gml
    // placed in pre_draw (runs on draw frames)

    //essential for rendering-random checks.
    if ("msg_unsafe_random" not in self) return;

    msg_reroll_random();

    //special msg_is_missingno-only effects are denoted 'M
    //===================================================================
    // BITWISE RANDOM UINT32 MAP = 0x00000000 00000000 00000000 00000000
    // Effects:    Frequency uses: .
    //  - Shudder                  .                   ttffffff VVVVHHHH
    //  - VSync                    .       tt GGffffff BBBBBBBB TTTTHHHH
    //  - Quadrant                 .             tttff ffffGGSS 22GGSS11
    //  - CRT                      .                OO OOOO  tt ffff
    //  - bad strip                .                 t tt         ffff
    //  - alt reroll               .                      aaaa
    //  - bad blend                .               bb        ff fffff
    //  - wrong image_index
    //'M- garbage collector        . P4P3P2P1                    EEEEFF
    //'M- gaslit dodge             .                         FF  F
    //'M- gaslit parry             .               YYY  XXXFFF
    //'M- glitch trail             .          wwwwhhhh   xxxxxx  yyyyy
    //'M- Alt Sprites              .     FFFF FFFF        NNN
    //'M- Hurt Sprites             .                         hh hhG
    //  - Hurt Corruptions         . FFFFFFFF ff  fSMB sssccc
    //===================================================================
    //'M- Compat:Pokemon Stadium   .                              RNG
    //===================================================================
    // Also see animation.gml, set_attack.gml


    //===========================================================
    //effect: SHUDDER, type: DRAW PARAMETER
    var fx = msg_unsafe_effects.shudder
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(8, 0x3F))
        {
            fx.impulse -= (fx.impulse > 0);
            //reroll parameters
            fx.timer = 2 * GET_INT(14, 0x03);
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply
            draw_x += max(fx.impulse , 1) * fx.horz_max * GET_INT(0, 0x0F, true);
            draw_y += max(fx.impulse , 1) * fx.vert_max * GET_INT(4, 0x0F, true);
        }
    }
    //===========================================================
    //effect: VSYNC, type: REDRAW
    var fx = msg_unsafe_effects.bad_vsync
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(16, 0x3F))
        {
            fx.impulse -= (fx.impulse > 0);
            //reroll parameters
            fx.timer = 4 + GET_RNG(22, 0x03);

            fx.clipbot = floor(GET_INT(8, 0xFF) * abs(sprite_height)/2)
            fx.cliptop = fx.clipbot + GET_INT(4, 0x0F) * abs(sprite_height)/2;
            fx.horz = fx.horz_max * max(fx.impulse / 2 , 2) * GET_INT(0, 0x0F, true);
            fx.garbage = (2 > GET_RNG(22, 0x07));
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply
        }
    }
    //===========================================================
    //effect: QUADRANT, type: REDRAW
    var fx = msg_unsafe_effects.quadrant
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(12, 0x3F))
        {
            fx.source[0]  = 0; fx.source[1]  = 1; fx.source[2]  = 2; fx.source[3]  = 3;
            fx.garbage[0] = 0; fx.garbage[1] = 0; fx.garbage[2] = 0; fx.garbage[3] = 0;

            fx.impulse -= (fx.impulse > 0);
            //reroll parameters
            fx.timer = 4 + GET_RNG(18, 0x07);

            //roll twice for sector corruption
            var sector = GET_RNG(0, 0x03);
            fx.source[sector] = GET_RNG(2, 0x03);
            fx.garbage[sector] = (0 == GET_RNG(4, 0x03));

            sector = GET_RNG(6, 0x03);
            fx.source[sector] = GET_RNG(8, 0x03);
            fx.garbage[sector] = (0 == GET_RNG(10, 0x03));
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply
        }
    }
    //===========================================================
    //effect: CRT, type: REDRAW
    var fx = msg_unsafe_effects.crt
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(4, 0x0F))
        {
            fx.impulse -= (fx.impulse > 0);
            //reroll parameters
            fx.timer = 4 + GET_RNG(8, 0x03);

            fx.offset = floor(GET_INT(12, 0x3F) * fx.maximum);
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply
        }
    }
    //===========================================================
    //effect: BAD_STRIP, type: REDRAW
    var fx = msg_unsafe_effects.bad_strip
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(2, 0x0F))
        {
            fx.impulse -= (fx.impulse > 0);
            //reroll parameters
            fx.timer = 1 + GET_RNG(14, 0x07);
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply
        }
    }
    //===========================================================
    //effect: ALT SWAP, type: PERMANENT - SPECIAL
    var fx = msg_unsafe_effects.altswap
    {
        if (fx.trigger)
        {
            fx.trigger = false;
            //reroll alt
            if (msg_is_missingno) msg_effective_alt = GET_RNG(9, 0x0F);
            else if (msg_is_basecast)
            {
                parse_basecast_colors(GET_RNG(9, 0x0F));
                fx.active = true;
            }
            else
            {
                if (fx.workshop_altnum_cache == 0) fx.workshop_altnum_cache = max(1, determine_num_alts());
                var alt_roll = GET_RNG(9, 0x3F) % fx.workshop_altnum_cache;

                for (var i = 0; i < 8; i++)
                {
                    fx.coloring[i*4 + 0] = get_color_profile_slot_r(alt_roll, i)/256;
                    fx.coloring[i*4 + 1] = get_color_profile_slot_g(alt_roll, i)/256;
                    fx.coloring[i*4 + 2] = get_color_profile_slot_b(alt_roll, i)/256;
                    fx.coloring[i*4 + 3] = 1;
                }
                fx.active = true;
            }
        }
        if (fx.active) && !msg_is_missingno
        {
            //apply

            //COPY COLORO GRID HERE
            for (var i = 0; i < 8*4; i++)
            {
                colorO[i] = fx.coloring[i];
                static_colorO[i] = fx.coloring[i];
            }
        }
    }
    //===========================================================
    //effect: BLENDING, type: DRAW PARAMETER
    var fx = msg_unsafe_effects.blending
    {
        if (fx.impulse > 0) || (fx.freq > GET_RNG(3, 0x7F))
        {
            fx.impulse -= (fx.impulse > 0);
            //reroll parameters

            fx.kind = GET_RNG(17, 0x03);

            fx.timer = 5;
            fx.frozen = true;
        }
        if (fx.timer > 0)
        {
            fx.timer -= !fx.frozen;
            //apply

            switch (fx.kind)
            {
                case 0: //Negative (done weirdly in pre_draw)
                    break;
                case 1: //Cutaway silhouette
                    gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
                    break;
                case 2: //Red ghost
                    gpu_set_blendmode(bm_add);
                    gpu_set_colorwriteenable(1, 0, 0, 1);
                    break;
                case 3: //No alpha
                    gpu_set_blendmode_ext(bm_one, bm_zero);
                    break;
                default: break;
            }
        }
    }

#define msg_reroll_random // Version 0
    // reroll msg_unsafe_random

    //DEBUG utility
    var debug_pass = false;
    if (string_count("*", keyboard_string)) { keyboard_string = ""; debug_pass = true; }
    msg_unsafe_paused_timer |= (keyboard_lastchar == '*');

    //xorshift algorithm
    if (msg_unsafe_paused_timer <= 0 || debug_pass)
    {
        var UINT_MAX = 0xFFFFFFFF;
        var rng = msg_unsafe_random;

        rng = (rng ^(rng << 13)) % UINT_MAX;
        rng = (rng ^(rng >> 17)) % UINT_MAX;
        rng = (rng ^(rng << 5 )) % UINT_MAX;

        msg_unsafe_random = rng;
    }

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);

#define GET_INT // Version 0
    // ===========================================================
    // returns an intensity for the effect, between 0 and 1.
    // if centered is true, this will be between -0.5 and +0.5 instead.
    // uses "msg_unsafe_random" implicitly.
    var offset = argument[0], mask = argument[1];
    var centered = argument_count > 2 ? argument[2] : false;
    return (mask <= 0) ? 0
           : ((msg_unsafe_random >> offset) & mask) * (1.0/mask) - (centered * 0.5);

#define parse_basecast_colors(target_alt) // Version 0
    // ===========================================================
    // fill the msg_unsafe_effects.altswap.coloring cache with the Nth alt found
    var data = string(color_grid);
    data = string_replace_all(data, "},", "#");
    data = string_replace_all(data, " ", "");
    data = string_replace_all(data, "{", "");

    var splitdata = string_split(data, "#");

    target_data_index = 0;
    var i = target_alt;
    while (i > 0)
    {
        target_data_index = (target_data_index + 1) % array_length(splitdata);
        if (string_length(splitdata[target_data_index]) > 1) i--;
    }

    //found target row
    var rowdata = string_split(splitdata[target_data_index], ",");
    var num_slots = array_length(rowdata) / 3; //RGB

    for (i = 0; i < num_slots; i++)
    {
        msg_unsafe_effects.altswap.coloring[i*4 + 0] = real(rowdata[i*3 + 0]);
        msg_unsafe_effects.altswap.coloring[i*4 + 1] = real(rowdata[i*3 + 1]);
        msg_unsafe_effects.altswap.coloring[i*4 + 2] = real(rowdata[i*3 + 2]);
        msg_unsafe_effects.altswap.coloring[i*4 + 3] = 1;
    }

#define string_split(str, delimiter) // Version 0
    // because Dan said no
    {
        var num_dels = string_count(delimiter, str);
        var split_array = array_create(num_dels + 1);

        for (var i = 0; i < num_dels; i++)
        {
            var p = string_pos(delimiter, str)
            if (p > 0)
            {
                split_array[i] = string_copy(str, 1, p - 1);
                str = string_delete(str, 1, p);
            }
            else split_array[i] = str;
        }

        return split_array;
    }

#define determine_num_alts // Version 0
    // ===========================================================
    // check the number of alts defined
    var num_max = string_count("},",string(color_grid)); //{
    //assumes RGB of slot one is defined to something nonzero to proceed
    for (var i = num_max; i > 0; i--)
    {
        if ( get_color_profile_slot_r(i-1, 0) != 0 )
        || ( get_color_profile_slot_g(i-1, 0) != 0 )
        || ( get_color_profile_slot_b(i-1, 0) != 0 )
            return i;
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion