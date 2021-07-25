if (state_cat = SC_HITSTUN || state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL)
{
    char_height = 56;
    ease_timer = 0;
    sound_stop(sound_get("mask"));
    sussy = false;
}

if (state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL || state == PS_WALL_JUMP)
{
    if (fuel < 2) fuel = 2;
}

if (instance_exists(fueltank_ins))
{
    if (fueltank_ins.orig_player != player) instance_destroy(fueltank_ins);
    infield = (fueltank_ins.state == 1 && point_distance(x,y-36,fueltank_ins.x,fueltank_ins.y) <= fueltank_ins.field_size);
     
}

if (infield && fuel <= 1 && fueltank_ins.state == 1 && fueltank_ins.health2 > 0)
{
    FieldRefuel();
    fueltank_ins.frame_update = 0
}

if (instance_exists(fueltank_ins) && fueltank_ins.orig_player == player && fueltank_ins.state < 2 && articlestate != 1)
{
    tankcooldown = 480;
}
else if (tankcooldown > 0)
{
    --tankcooldown;
    move_cooldown[AT_DSPECIAL] = 2;
}
else
{
    move_cooldown[AT_DSPECIAL] = 0;
}
       
// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:afterImageindex,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

// field gain fuel effect
if (fieldGain.timer>0)
{
    fieldGain.timer--;
    if (draw_indicator)
        spawn_hit_fx(floor(lerp(x,fieldGain.x,fieldGain.timer/fieldGainTimer)), floor(lerp(y-char_height/2,fieldGain.y,fieldGain.timer/fieldGainTimer)), fuel_trail_particle);
}

if (articlestate = 1) 
{
    if (fieldcooldown = 1) fieldcooldown--;
    else articlestate = 0;
}

if (articlestate = 2) 
{
    if (fieldcooldown = 1) fieldcooldown--;
    else articlestate = 0;
}

//article v2 function
#define FieldRefuel()
{
    if (instance_exists(fueltank_ins))
        fieldGain = {x:fueltank_ins.x, y:fueltank_ins.y, timer:fieldGainTimer};
    fuel++;
    sound_play(asset_get("mfx_coin"));
    articlestate = 1;
    fieldcooldown = 1;
}

// transcend
transcounter = clamp(((get_player_color(player) == 5 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);