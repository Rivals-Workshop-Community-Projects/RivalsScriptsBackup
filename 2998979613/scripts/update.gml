init_shader();
soft_armor = armor_val;
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
update_particles();

//rotate head segment
with oPlayer if self != other && state != PS_DEAD{
    if !instance_exists(other.target_pl) other.target_pl = self;
    else if point_distance(x, y - char_height/2, other.x, other.y - other.char_height/2) < point_distance(other.target_pl.x, other.target_pl.y - other.target_pl.char_height/2, other.x, other.y - other.char_height/2) other.target_pl = self;
}

if instance_exists(target_pl) && laser_timer && laser_timer < 500{
    aim = lerp(aim, clamp((target_pl.x - x)/80, -1, 1), 0.3);
    body_angles[@2] = floor(90 - 55*aim);
}else if !disable_head{
    body_angles[@2] = lerp(body_angles[2], 90 - 60*spr_dir, 0.3);
    aim = spr_dir;
}
disable_head = 0;

//rotate centre segment randomly
if randrot_cool randrot_cool--
else{
    mid_angle_target = floor(random_func_2(abs(floor(x%200)), 90, 1) - 45)*4;
    randrot_cool = floor(abs(mid_angle_target)/4) + random_func_2(abs(floor((x + 1)%200)), 20, 1);
}
if body_angles[1] != mid_angle_target body_angles[@1] += sign(mid_angle_target - body_angles[1])*2;

//fix segment rotation
for(var a = 0; a < 3; a++){
    if body_angles[a] < 0 body_angles[@a] = (body_angles[a]+360)%360; 
}

//disable fspecial and nspecial
move_cooldown[AT_FSPECIAL] = 4;
move_cooldown[AT_NSPECIAL] = 4;

//handle main body vfx
if stun_vfx stun_vfx = hitstop;

//collision thing
if !(is_attacking){
    col_displace = floor(lerp(col_displace, 10*!(state == PS_CROUCH && down_down), 0.2));
    if reset_room_speed room_speed = prev_spd;
}
if free col_displace = 0;
sprite_change_offset("body_0", 39, -15 + col_displace);
sprite_change_offset("body_1", 39, col_displace);
sprite_change_offset("body_2", 39, 34 + col_displace);
sprite_change_offset("body_2b", 39, 34 + col_displace);
sprite_change_offset("guardian_hurt", 60, 100 + col_displace);
prev_free = free;

//remove stage music
if play_medley{
    suppress_stage_music(0, 1);
    if intro_timer && intro_timer < 300 + 135*(alt_cur == 1) intro_timer++;
    else if intro_timer && alt_cur != 4{
        intro_timer = 0;
        music = sound_play(sound_get((alt_cur == 1? "tested": "guardian") + "_medley"), 1);
    }
}

//hurtbox
with pHurtBox if self == other.hurtboxID with other{
    other.sprite_index = sprite_get("guardian_hurt");
}

//#region guardian laser
if (!special_down && laser_timer < 00) || instance_exists(grabp) laser_timer++;
if (special_down && state != PS_SPAWN && !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSTRONG || attack == AT_UAIR)) && state_cat != SC_HITSTUN) || laser_timer > 370 laser_timer++;
else if !instance_exists(grabp) laser_timer = 0;
if !laser_timer sound_stop(lock_on_sfx);
if line_fx_timer line_fx_timer--;
if instance_exists(target_pl) && laser_timer depth = target_pl.depth - 10;
if laser_timer == 60 lock_on_sfx = sound_play(sound_get("guardian_lock1"), 1, noone, 0.8);

if laser_timer == 270{
    sound_stop(lock_on_sfx);
    lock_on_sfx = sound_play(sound_get("guardian_lock2"), 1, noone, 0.8);
}

if laser_timer = 370{
    sound_stop(lock_on_sfx);
    sound_play(sound_get("guardian_firebeep"), 0, noone, 0.8);
}

if laser_timer = 390{
    line_fx_timer = 50;
    sound_play(sound_get("guardian_fire"), 0, noone, 0.8);
    var e = create_hitbox(AT_NSPECIAL, 1, floor(fire_pos[0]), floor(fire_pos[1]));
    beam_pos = [[fire_pos[0], fire_pos[1], point_direction(fire_pos[0], fire_pos[1], target_pl.x, target_pl.y - target_pl.char_height/2)]];
    if instance_exists(target_pl){
        e.hsp = 40*dcos(point_direction(fire_pos[0], fire_pos[1], target_pl.x, target_pl.y - target_pl.char_height/2));
        e.vsp = -40*dsin(point_direction(fire_pos[0], fire_pos[1], target_pl.x, target_pl.y - target_pl.char_height/2));
        e.kb_angle = 50 + 80*(spr_dir == -1);
    }else{
        e.hsp = 40*dcos(-30);
        e.vsp = -40*dsin(-30);
    }
    if instance_exists(grabp) e.damage = 10;
    grabp = noone;
}
if laser_timer == 500 laser_timer = -60;
//#endregion

//#region skystrike
if skystrike_timer{
    move_cooldown[AT_DSPECIAL] = 120;
    skystrike_timer--;
    var col = make_color_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_b(alt_cur, 6));
    if skystrike_timer == 202 sound_play(sound_get("guardian_beam_fire"), 0, noone, .8, 1.2);
    if skystrike_timer = clamp(skystrike_timer, 15, 199){
        if skystrike_timer%4 == 0 sound_play(sound_get("guardian_beam_fire"), 0, noone, .8, 1.2);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, skystrike_pos[2]);
        set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, skystrike_pos[2]);
        set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 4 + 5*(skystrike_pos[2] >= room_height)); 
        if skystrike_timer > 21{
            create_hitbox(AT_DSPECIAL, 2, round(skystrike_pos[0]), round(skystrike_pos[1]) - 20);
            create_hitbox(AT_DSPECIAL, 1, round(skystrike_pos[0]), round(skystrike_pos[1]) - floor(skystrike_pos[2]/2*(skystrike_pos[2] < room_height)));
        }else if skystrike_timer == 21 create_hitbox(AT_DSPECIAL, 3, round(skystrike_pos[0]), round(skystrike_pos[1]) - floor(skystrike_pos[2]/2*(skystrike_pos[2] < room_height)));
        
        var i = 0;
        repeat(random_func_2(142, 4, 1)){
            i++;
            array_push(lwfx_buffer, {xpos:floor(skystrike_pos[0]), ypos:floor(random_func_2(124 + i, floor(skystrike_pos[1]), 1)), sprite:sprite_get("light_particle"), frame:0, alpha:2, decay:.1, layer:-1, blend:col, fog:0, shade:0, frame_adv:0, angle:0, dir:1, scale:2, scale_increment:0, vspd:random_func_2(9 + i, 10, 1) - 5, hspd:((get_gameplay_time()%2)*2 - 1)*(random_func(56 + i, 6, 1) + 2)});
            if skystrike_pos[2] < room_height{
                var x_pos = random_func_2(178 + i, 70, 1) - 35;
                var y_pos = clamp((15 - abs(x_pos))*8, 0, 8);
                special_dust(skystrike_pos[0] + x_pos, skystrike_pos[1] + 2 + y_pos, -3, (x_pos = 0? 1: sign(x_pos)), round(55*-x_pos/35));
            }
        }
    }
}
skystrike = sign(skystrike_timer);
//#endregion

#define update_particles()
var i = 0;
while (i < array_length(lwfx_buffer)){
    var p = lwfx_buffer[i];
    p.alpha -= p.decay;
    p.scale += p.scale_increment;
    p.frame += p.frame_adv;
    p.xpos += p.hspd;
    p.ypos += p.vspd;
    if p.alpha <= 0 || (p.frame_adv != 0 && p.frame >= sprite_get_number(p.sprite)) || p.scale <= 0 lwfx_buffer = array_delete(lwfx_buffer, i);
    i++;
}

#define array_delete(arr, idx)
var tarr = [];
for(var h = 0; h < array_length(arr); h++){
    if h != idx array_push(tarr, arr[h]);
}
return tarr;

#define special_dust
/// special_dust(x_pos, y_pos, layer, dir, angle = 0;)
var x_pos = argument[0], y_pos = argument[1], layer = argument[2], dir = argument[3];
var angle = argument_count > 4 ? argument[4] : 0;;

var e = spawn_hit_fx(x_pos, y_pos, vfx_beam_particle);
e.depth = depth + layer;
e.draw_angle = angle;
return e;