//update
fxspd+=0.1;
hudspd+=0.1;
if hudspd>2
{
    hudspd=0;
}

if general_cooldown > 0
{
    general_cooldown--;

}
else
{
    initial_dash_speed = 7;
    dash_speed = 6.5;
    walk_speed = 3.25;
    walk_accel = 0.2;
    leave_ground_max = 7.35;
    air_accel = 0.35;
    
    buff_active = false;
    armor_active = false;
    speedbuff_active = false;
}

if cd_hero > 0
{
    cd_hero--;
}
else
{
    legend_used = 0;
}
if cd_tea > 0
{
    cd_tea--;

}
else
{
    tea_used = 0;
}

if cd_ribbon > 0
{
    cd_ribbon--;
}
else
{
    ribbon_used = 0;
}

if cd_sandwich > 0
{
    cd_sandwich--
    invincible=true;
    invince_time = 1;
}

if (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR)
{
    if attack != AT_DSPECIAL
    {
        char_height = lerp(char_height,62,0.3);
    }
}


if attack ==  AT_USTRONG
{
    if ustrong_char != noone
    {
        with ustrong_char
        {
            hitstop = 2;
            hitpause = true;
            x = floor(lerp(x,other.x+30*other.spr_dir,0.1));
            y = floor(lerp(y,other.y-79,0.2));
            if other.window = 3 && other.window_timer > 4
            {
                other.ustrong_char = noone;
                hitstop = false;
                hitstop = 0;
            }
            
        }
    }
}

if buffer >= 12 
{
    buffer = 0;
}

if cancel == false && (state == PS_LAND)
{
    buffer = 0;
}


with asset_get("obj_article2")
{
    if (player_id == other.id)
    {
        flowydir = spr_dir;
        if state == 4 && state_timer == 1
        {
            var pellet = instance_create(x,y-20,"obj_article1")
            pellet.spr_dir = spr_dir;
        }
    }
}

if !free || state == (PS_WALL_JUMP)
{
    move_cooldown[AT_USPECIAL] = 0;
}

if state_cat == (SC_HITSTUN) && ustrong_char != noone
{
    timer = 0;
    ustrong_char = noone;       
}
//copypaste description
/*
The Fallen Child, Frisk from Undertale arrives to Rivals of Aether!

MECHANICS

Inventory (Down special)

Frisk has 4 items in their inventory, you will get a boost depending on the item you choose.
-Legendary hero: attacks will deal 2% extra damage
-Faded Ribbon: you will receive less damage from attacks.
-Sea Tea: Your speed will increase for 15 seconds.
-Ghost Sandwich: You will be invincible for 5 seconds.

Flowey (Dash attack)

During Dash attack, Frisk will throw flowey on the ground (or offstage if u hate Flowey), Flowey
will get angry at frisk after landing and he will start shooting "friendliness pelletes" at the
nearest opponent. Flowey can be shut down by either hitting him or killing Frisk.

Yellow soul (Neutral special)
It can be cancelled after landing on the ground.

SAVE (Forward special)
Frisk will throw a SAVE point (or star), and if it hits an opponent, Frisk will teleport to the opponent it hit.

SPECIAL THANKS:

SuperSonic and Ravyn - for helping with code

CREDITS:

Snowdin stage: Aestha
Sans Battle stage: RuberCuber
Waterfall stage: Aestha
Chara: Sai
Sans: Shaunt
Papyrus: TheSmashWaffle

¿You prefer the genocide route of Undertale? You can download Chara right here:
https://steamcommunity.com/sharedfiles/filedetails/?id=2300438860

-SleP16*/
