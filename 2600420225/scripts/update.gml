muno_event_type = 1;
user_event(14);

special_state_timer++; //state timer but for customstates
i_frames++;
special_cooldown++;
animation_counter++;
hud_text_timer++;
power_up_timer++;
space_timer++;
beam_trail++;
beam_cooldown++;
popup_timer++;
missile_cooldown++;
bomb_cooldown++;
smoke_trail++;
smoke_trail_anim++;
power_bomb_cooldown++;
shinespark_trigger++;
reserve_trigger++;
force_depth = 2;
hyper_beam_magic_timer++;
special_bomb_creation++;
visible = true;

if(state == PS_SPAWN){
    beam_cooldown = 0;
}

if(hyper_beam_magic == c_red && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_orange
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_orange && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_yellow
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_yellow && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_green
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_green && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_aqua
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_aqua && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_blue
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_blue && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_purple
    hyper_beam_magic_timer = 0;
}else if(hyper_beam_magic == c_purple && hyper_beam_magic_timer >= 4){
    hyper_beam_magic = c_red
    hyper_beam_magic_timer = 0;
}


//sfx stuff

if(charging_timer == 25 && charge == true && !phone.state && is_charged == false){
    sound_play(sound_get("charge"));
}else if(is_charged == true){
    sound_stop(sound_get("charge"));
    charge_sfx++;
}else if(is_charged == true || !attack_down){
    sound_stop(sound_get("charge"));
    charge_sfx = 0;
}

if(charge_sfx == 15){
    charge_sfx = 0;
    sound_play(sound_get("charged"));
}else if(!attack_down){
    sound_stop(sound_get("charged"));
}

if(shinespark_charged == true){
    if(spark_sfx >= 15){
        sound_play(sound_get("shine start"), false, false, 10)
        spark_sfx = 0;
    }
    spark_sfx++
}else{
    spark_sfx = 0;
}

if(shinespark_end == 10){
    sound_play(sound_get("dameg"), false, false, 15);
}

if(is_somersaulting == true){
    somer_sfx++
}else if(is_somersaulting == false){
    somer_sfx = 0;
}

print_debug(is_somersaulting)

if(somer_sfx == 15){
    if(jump_power_up == "normal_"){
        sound_play(sound_get("somer_1"), false, false, 20);
    }else if(jump_power_up == "space_jump_"){
        sound_play(sound_get("somer_2"), false, false, 15);
    }else if(jump_power_up == "screw_attack_"){
        sound_play(sound_get("somer_3"), false, false, 15);
    }
    somer_sfx = 0;
}else if(is_somersaulting == false){
    sound_stop(sound_get("somer_1"));
    sound_stop(sound_get("somer_2"));
    sound_stop(sound_get("somer_3"));
}

//death animation

if(is_dead == true){
    death_timer++
}
if(death_timer == 2){
    sound_play(sound_get("defeat"));
}
if(is_dead == true){
    y = room_height / 2
    x = room_width / 2
    hsp = 0;
    vsp = 0;
    gravity_speed = 0
    invincible = true;
}
if(death_timer >= 180){
    x = 9000
}


//fog magic
if(fog_magic == 0.1){
    fog_magic = 0.4;
}else if(fog_magic == 0.4){
    fog_magic = 0.7
}else if(fog_magic = 0.7){
    fog_magic = 0.1;
}
//fog magic 2
if(fog_magic2 == 0.2){
    fog_magic2 = 0.6;
}else if(fog_magic2 == 0.6){
    fog_magic2 = 0.2
}

//jump cancel

if(jump_down && shinespark_charged == false && state == PS_FIRST_JUMP && is_somersaulting == false){
    state = PS_FIRST_JUMP;
}else if(shinespark_charged == false && state == PS_FIRST_JUMP && !jump_down && is_somersaulting == false){
    state = PS_IDLE_AIR;
    vsp = backup_vsp * 2/3;
}

if(attack_down && is_morph == false && is_crystal_flashing == false && (select_ammo == 0 || select_ammo == 3)){
    if(charging_timer != 80){
        charging_timer++
        is_charged = false;
    }else if(charging_timer == 80){
        is_charged = true;
    }
}else{
    charging_timer = 0;
}
if(beam_trail_movement != -20){
    beam_trail_movement--;
}else if(beam_trail_movement != 20){
    beam_trail_movement++;
}
damage = get_player_damage(player);

//info hud
if(popup_timer < 240){
    draw_info = true;
}
if(popup_timer > 240){
    draw_info = false;
}

//coding attacks from scratch because I can
if((select_ammo == 0 || select_ammo == 3) && attack_pressed && is_charged == false && beam_cooldown >= 20 && is_morph == false){
    if(free){
        state = PS_IDLE_AIR
    }
    user_event(0)
    create_hitbox(AT_UTHROW, 1, x + projectile_x, y + projectile_y)
    if(beam_level == "2" || beam_level == "1"){
        sound_play(sound_get("shot"))
    }else if(beam_level == "3" || beam_level == "4" || beam_level == "5" || beam_level == "6"){
        sound_play(sound_get("ice"))
    }
    if(beam_cooldown >= 20){
        beam_cooldown = 0;
    }
}else if((select_ammo == 0 || select_ammo == 3) && is_charged == true && !attack_down && is_morph == false && charge == true){
    if(free){
        state = PS_IDLE_AIR
    }
    user_event(1)
    create_hitbox(AT_DSTRONG_2, 1, x + projectile_x, y + projectile_y)
    is_charged = false;
    charging_timer = 0;
    if(beam_level == "2" || beam_level == "1"){
        sound_play(sound_get("shot"), false, false, 0.8)
        sound_play(sound_get("shot"), false, false, 0.8)
    }else if(beam_level == "3" || beam_level == "4" || beam_level == "5"){
        sound_play(sound_get("ice"), false, false, 0.8)
        sound_play(sound_get("ice"), false, false, 0.8)
    }else if(beam_level == "6"){
        sound_play(sound_get("shot"), false, false, 0.8)
        sound_play(sound_get("shot"), false, false, 0.8)
    }
}

if(select_ammo == 1 && attack_pressed && is_morph == false && missile_cooldown >= 20 && missile_amount >= 1){
   if(free){
        state = PS_IDLE_AIR
    }
    smoke_trail = 0;
    smoke_trail_anim = 0;
    missile_amount = prev_missile_amount - 1;
    user_event(2)
    latest_missile = create_hitbox(AT_DTHROW, 1, x + projectile_x, y + projectile_y)
    sound_play(sound_get("missile"), false, false, 12);
    if(missile_cooldown >= 20){
        missile_cooldown = 0;
    }
}
if(select_ammo == 2 && attack_pressed && is_morph == false && missile_cooldown >= 100 && super_missile_amount >= 1){
    if(free){
        state = PS_IDLE_AIR
    }
    smoke_trail = 0;
    smoke_trail_anim = 0;
    super_missile_amount = prev_super_missile_amount - 1;
    user_event(3)
    latest_soup = create_hitbox(AT_FTHROW, 1, x + projectile_x, y + projectile_y)
    sound_play(sound_get("soup"), false, false, 12);
    if(missile_cooldown >= 20){
        missile_cooldown = 0;
    }
}
if(is_morph == true && select_ammo != 3 && bomb_cooldown > 10 && attack_pressed && bombs_power_up == true && bomb_amount <= 3){
    bomb_amount++;
    bomb_cooldown = 0;
    if(is_facing == "right"){
            instance_create( x - 34, y - 38, "obj_article1");
        }else if(is_facing == "left"){
            instance_create( x - 30, y - 38, "obj_article1");
    }
}
if(is_morph == true && select_ammo == 3 && power_bomb_cooldown >= 80 && attack_pressed && power_bomb_amount >= 1){
    power_bomb_cooldown = 0;
    power_bomb_amount = prev_power_bomb_amount - 1;
    if(is_facing == "right"){
            instance_create( x - 452, y - 256, "obj_article2");
        }else if(is_facing == "left"){
            instance_create( x - 448, y - 256, "obj_article2");
    }
}
if(is_somersaulting == true && is_charged == true && jump_power_up != "screw_attack_"){
    create_hitbox(AT_DSPECIAL_AIR, 1, x, y);
}else if(is_somersaulting == true && jump_power_up == "screw_attack_"){
    create_hitbox(AT_DSPECIAL_AIR, 1, x, y);
}

if(shinespark_charged == true && !free){
    shinespark_timer++
    if(shinespark_timer >= 360){
        shinespark_charged = false;
    }
}

if(state == PS_DASH){
    speed_charge++
}else{
    speed_charge = 0;
}

if((down_pressed || down_down) && speeding == true){
        shinespark_charged = true;
        speeding = false;
    }

if(state == PS_DASH && speed_booster == true && speed_charge >= 40 && shinespark_charged == false && is_crouch == false && is_morph == false){
    speeding = true;
}else{
    speeding = false;
}

if(speeding == true){
    if(is_facing == "right"){
        hsp++
        hsp++
        hsp++
        hsp++
        hsp++
    }else if(is_facing == "left"){
        hsp--
        hsp--
        hsp--
        hsp--
        hsp--
    }
}

//shinespark

if(jump_pressed && shinespark_charged == true && is_morph == false){
    gravity_speed = 0.6;
    shinespark_trigger = 0;
}

if(shinespark_charged == true && shinespark_trigger >= 12 && free){
    state = PS_IDLE_AIR
}

if(shinespark_charged == true && state == PS_IDLE_AIR){
    hsp = 0;
    vsp = 0;
    is_shinesparking = true;
    shinespark_charged = false;
    gravity_speed = 0;
    is_crouch = false;
    is_morph = false;
    select_ammo = 0;
    beam_cooldown = 0;
    max_djumps = 0;
    missile_cooldown = 0;
}

if(shinespark_charged == false && is_shinesparking == false){
    gravity_speed = 0.1;
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
}

if(is_shinesparking == true && shinespark_trigger >= 15 && shinespark_trigger <= 40){
    gravity_speed = 0;
    is_crouch = false;
    is_morph = false;
    select_ammo = 0;
    beam_cooldown = 0;
    max_djumps = 0;
    missile_cooldown = 0;
    if(joy_dir >= -15 && joy_dir <= 20){
        shine_right = true;
        shine_left = false;
        shine_diagonal_right = false;
        shine_diagonal_left = false;
        shine_up_right = false;
        shine_up_left = false;
    }else if(joy_dir >= 21 && joy_dir <= 60){
        shine_right = false;
        shine_left = false;
        shine_diagonal_right = true;
        shine_diagonal_left = false;
        shine_up_right = false;
        shine_up_left = false;
    }else if(joy_dir >= 61 && joy_dir <= 119){
        if(is_facing == "left"){
            shine_right = false;
            shine_left = false;
            shine_diagonal_right = false;
            shine_diagonal_left = false;
            shine_up_right = false;
            shine_up_left = true;
        }else if(is_facing == "right"){
            shine_right = false;
            shine_left = false;
            shine_diagonal_right = false;
            shine_diagonal_left = false;
            shine_up_right = true;
            shine_up_left = false;
        }
    }else if(joy_dir >= 120 && joy_dir <= 159){
        shine_right = false;
        shine_left = false;
        shine_diagonal_right = false;
        shine_diagonal_left = true;
        shine_up_right = false;
        shine_up_left = false;
    }else if(joy_dir >= 160 && joy_dir <= 185){
        shine_right = false;
        shine_left = true;
        shine_diagonal_right = false;
        shine_diagonal_left = false;
        shine_up_right = false;
        shine_up_left = false;
    }else if(joy_pad_idle = true){
        if(is_facing == "left"){
            shine_right = false;
            shine_left = false;
            shine_diagonal_right = false;
            shine_diagonal_left = false;
            shine_up_right = false;
            shine_up_left = true;
        }else if(is_facing == "right"){
            shine_right = false;
            shine_left = false;
            shine_diagonal_right = false;
            shine_diagonal_left = false;
            shine_up_right = true;
            shine_up_left = false;
        }
    }
}

if(shine_up_right == true || shine_right == true || shine_diagonal_right == true){
    spr_dir = 1;
}else if(shine_up_left == true || shine_left == true || shine_diagonal_left == true){
    spr_dir = -1;
}

if(is_shinesparking == false){
    shine_right = false;
    shine_left = false;
    shine_diagonal_right = false;
    shine_diagonal_left = false;
    shine_up_right = false;
    shine_up_left = false;
}

if(prev_x_pos == x && prev_y_pos == y && is_shinesparking == true) || (shine_up_left == true || shine_up_right == true || shine_diagonal_right == true || shine_diagonal_left == true){
    shinespark_end++
}else{
    shinespark_end = 0
}

if(is_shinesparking == true && shinespark_end <= 1){
    energy--
}

if(shinespark_end >= 40){
    is_shinesparking = false;
}

///advanced techniques and synergyes

//bomb spread

if(is_charged == true && is_morph == true){
    set_hitbox_value( AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 4)
    power_bomb_cooldown = 0;
    bomb_amount = 5;
    is_charged = false;
    charging_timer = 0;
    special_bomb_creation = 0;
}

if(special_bomb_creation <= 4){
    instance_create( x - 34, y - 38, "obj_article1");
    special_bomb = true;
}else{
    set_hitbox_value( AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 0)
    special_bomb = false;
}

//crystal flash (select power bombs, all e-tanks depleted, 10 or more missiles, 10 or more soup, 11 power bombs, in morph ball use a power bomb, shield+down+attack)

if(is_morph == true && select_ammo == 3 && attack_down && shield_down && down_down && power_bomb_amount >= 10 && super_missile_amount >= 10 && missile_amount >= 10 && energy_tank_empty_amount == energy_tank_amount){
    is_crystal_flashing = true;
}

if(is_crystal_flashing == true){
    super_armor = true;
    crystal_flash_timer++
    is_morph = false;
    bomb_cooldown = 0;
    beam_cooldown = 0;
    missile_cooldown = 0;
    power_bomb_cooldown = 0;
}

if(crystal_flash_timer >= 347){
    is_crystal_flashing = false;
    crystal_flash_timer = 0;
    super_armor = false;
}

if(crystal_flash_timer == 9){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    missile_amount--;
}if(crystal_flash_timer == 18){
    missile_amount--;
}if(crystal_flash_timer == 27){
    missile_amount--;
}if(crystal_flash_timer == 36){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    missile_amount--;
}if(crystal_flash_timer == 45){
    missile_amount--;
}if(crystal_flash_timer == 54){
    missile_amount--;
}if(crystal_flash_timer == 63){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    missile_amount--;
}if(crystal_flash_timer == 72){
    missile_amount--;
}if(crystal_flash_timer == 81){
    missile_amount--;
}if(crystal_flash_timer == 90){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    missile_amount--;
}if(crystal_flash_timer == 99){
    super_missile_amount--;
}if(crystal_flash_timer == 108){
    super_missile_amount--;
}if(crystal_flash_timer == 117){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    super_missile_amount--;
}if(crystal_flash_timer == 126){
    super_missile_amount--;
}if(crystal_flash_timer == 135){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    super_missile_amount--;
}if(crystal_flash_timer == 144){
    super_missile_amount--;
}if(crystal_flash_timer == 153){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    super_missile_amount--;
}if(crystal_flash_timer == 162){
    super_missile_amount--;
}if(crystal_flash_timer == 171){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    super_missile_amount--;
}if(crystal_flash_timer == 180){
    super_missile_amount--;
}if(crystal_flash_timer == 189){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}if(crystal_flash_timer == 198){
    power_bomb_amount--;
}if(crystal_flash_timer == 207){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}if(crystal_flash_timer == 216){
    power_bomb_amount--;
}if(crystal_flash_timer == 225){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}if(crystal_flash_timer == 234){
    power_bomb_amount--;
}if(crystal_flash_timer == 243){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}if(crystal_flash_timer == 252){
    power_bomb_amount--;
}if(crystal_flash_timer == 261){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}if(crystal_flash_timer == 270){
    if(energy_tank_empty_amount > 0){
        energy_tank_empty_amount--;
    }
    power_bomb_amount--;
}

//removing attacks entirely because I can
move_cooldown[AT_JAB] = 10
move_cooldown[AT_DATTACK] = 10
move_cooldown[AT_NSPECIAL] = 10
move_cooldown[AT_FSPECIAL] = 10
move_cooldown[AT_USPECIAL] = 10
move_cooldown[AT_DSPECIAL] = 10
move_cooldown[AT_FSTRONG] = 10
move_cooldown[AT_USTRONG] = 10
move_cooldown[AT_DSTRONG] = 10
move_cooldown[AT_FTILT] = 10
move_cooldown[AT_UTILT] = 10
move_cooldown[AT_DTILT] = 10
move_cooldown[AT_NAIR] = 10
move_cooldown[AT_FAIR] = 10
move_cooldown[AT_BAIR] = 10
move_cooldown[AT_DAIR] = 10
move_cooldown[AT_UAIR] = 10
move_cooldown[AT_TAUNT] = 10


//cheats
if(phone_cheats_updated[CHEAT_LEVEL] == 1){
    level++
    phone_cheats_updated[CHEAT_LEVEL] = 0;
}

if(phone_cheats[CHEAT_INVIN] == 1){
    energy = 99;
}

if(phone_cheats_updated[CHEAT_UNLEVEL] == 1){
    phone_cheats_updated[CHEAT_UNLEVEL] = 0
    jump_power_up = "normal_" 
    morphball = false;
    bombs_power_up = false;
    high_jump = false;
    varia_suit = false;
    speed_booster = false;
    grapple = false;
    X_ray = false;
    gravity_suit = false;
    spring_ball = false;
    charge = false;
    beam_level = "1";
    space_jump = false;
    screw_attack = false;
    beam_2 = false;
    beam_3 = false;
    beam_4 = false;
    beam_5 = false;
    beam_6 = false;
    tank_1 = "full"
tank_2 = "full"
tank_3 = "full"
tank_4 = "full"
tank_5 = "full"
tank_6 = "full"
tank_7 = "full"
tank_8 = "full"
tank_9 = "full"
tank_10 = "full"
tank_11 = "full"
tank_12 = "full"
tank_13 = "full"
tank_14 = "full"

reserve_1 = "full"
reserve_2 = "full"
reserve_3 = "full"
reserve_4 = "full"
level = 0;
energy = 99;                
missile_amount = 0;     
super_missile_amount = 0;  
power_bomb_amount = 0;  
energy_tank_amount = 0; 
energy_tank_empty_amount = 0;  
reserve_tank_amount = 0;    
reserve_tank_empty_amount = 0; 
missiles = false;
super_missiles = false;
power_bombs = false;
}

//power ups

if(high_jump == true){
    jump_speed = 9;
    djump_speed = 9;
}
if(jump_power_up == "space_jump_" || jump_power_up == "screw_attack_"){
    if(space_timer >= 60){
        max_djumps++
        space_timer = 0;
        if(jump_power_up == "screw_attack_" && state == (PS_FIRST_JUMP || PS_DOUBLE_JUMP)){
            invincible = true;
        }
    }
}


//stuff
if(prev_level != level){
    power_up_timer = 0;
}


//health stuff
if(damage != prev_damage){
    if(is_shinesparking == false){
        sound_play(sound_get("dameg"), false, false, 15);
    }
    if(varia_suit == true){
        energy = prev_health - ((get_player_damage( player ) * 2) - 4);
    set_player_damage( player, 0 );
    }else if(varia_suit == true && gravity_suit == true){
        energy = prev_health - ((get_player_damage( player ) * 2) - 8);
    set_player_damage( player, 0 );
    }else{
    energy = prev_health - (get_player_damage( player ) * 2);
    set_player_damage( player, 0 );
    }
}

if(energy <= 0){
    reserve_trigger = 0;
    if(energy_tank_amount > energy_tank_empty_amount){
        energy = 99
        energy_tank_empty_amount++;
    }else if(energy_tank_empty_amount = energy_tank_amount){
        is_dead = true; 
        energy = 0;
    }
}

//energy tank drawing scheme

if(energy_tank_amount == 14){
if(energy_tank_empty_amount >= 14){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 13){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 12){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 11){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 10){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 9){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_10 = "empty"
}else{
    tank_10 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_11 = "empty"
}else{
    tank_11 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_12 = "empty"
}else{
    tank_12 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_13 = "empty"
}else{
    tank_13 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_14 = "empty"
}else{
    tank_14 = "full"
}
}
if(energy_tank_amount == 13){
if(energy_tank_empty_amount >= 13){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 12){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 11){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 10){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 9){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_10 = "empty"
}else{
    tank_10 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_11 = "empty"
}else{
    tank_11 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_12 = "empty"
}else{
    tank_12 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_13 = "empty"
}else{
    tank_13 = "full"
}
}
if(energy_tank_amount == 12){
if(energy_tank_empty_amount >= 12){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 11){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 10){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 9){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_10 = "empty"
}else{
    tank_10 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_11 = "empty"
}else{
    tank_11 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_12 = "empty"
}else{
    tank_12 = "full"
}
}
if(energy_tank_amount == 11){
if(energy_tank_empty_amount >= 11){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 10){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 9){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_10 = "empty"
}else{
    tank_10 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_11 = "empty"
}else{
    tank_11 = "full"
}
}
if(energy_tank_amount == 10){
if(energy_tank_empty_amount >= 10){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 9){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_10 = "empty"
}else{
    tank_10 = "full"
}
}
if(energy_tank_amount == 9){
if(energy_tank_empty_amount >= 9){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 8){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_9 = "empty"
}else{
    tank_9 = "full"
}
}
if(energy_tank_amount == 8){
if(energy_tank_empty_amount >= 8){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 7){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_8 = "empty"
}else{
    tank_8 = "full"
}
}
if(energy_tank_amount == 7){
if(energy_tank_empty_amount >= 7){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 6){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_7 = "empty"
}else{
    tank_7 = "full"
}
}
if(energy_tank_amount == 6){
if(energy_tank_empty_amount >= 6){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 5){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_6 = "empty"
}else{
    tank_6 = "full"
}
}
if(energy_tank_amount == 5){
if(energy_tank_empty_amount >= 5){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 4){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_5 = "empty"
}else{
    tank_5 = "full"
}
}
if(energy_tank_amount == 4){
if(energy_tank_empty_amount >= 4){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 3){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_4 = "empty"
}else{
    tank_4 = "full"
}
}
if(energy_tank_amount == 3){
if(energy_tank_empty_amount >= 3){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 2){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_3 = "empty"
}else{
    tank_3 = "full"
}
}
if(energy_tank_amount == 2){
if(energy_tank_empty_amount >= 2){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
if(energy_tank_empty_amount >= 1){
    tank_2 = "empty"
}else{
    tank_2 = "full"
}
}
if(energy_tank_amount == 1){
if(energy_tank_empty_amount >= 1){
    tank_1 = "empty"
}else{
    tank_1 = "full"
}
}


if(reserve_tank_amount == 4){
if(reserve_tank_empty_amount >= 4){
    reserve_1 = "empty"
}else{
    reserve_1 = "full"
}
if(reserve_tank_empty_amount >= 3){
    reserve_2 = "empty"
}else{
    reserve_2 = "full"
}
if(reserve_tank_empty_amount >= 2){
    reserve_3 = "empty"
}else{
    reserve_3 = "full"
}
if(reserve_tank_empty_amount >= 1){
    reserve_4 = "empty"
}else{
    reserve_4 = "full"
}
}
if(reserve_tank_amount == 3){
if(reserve_tank_empty_amount >= 3){
    reserve_1 = "empty"
}else{
    reserve_1 = "full"
}
if(reserve_tank_empty_amount >= 2){
    reserve_2 = "empty"
}else{
    reserve_2 = "full"
}
if(reserve_tank_empty_amount >= 1){
    reserve_3 = "empty"
}else{
    reserve_3 = "full"
}
}
if(reserve_tank_amount == 2){
if(reserve_tank_empty_amount >= 2){
    reserve_1 = "empty"
}else{
    reserve_1 = "full"
}
if(reserve_tank_empty_amount >= 1){
    reserve_2 = "empty"
}else{
    reserve_2 = "full"
}
}
if(reserve_tank_amount == 1){
if(reserve_tank_empty_amount >= 1){
    reserve_1 = "empty"
}else{
    reserve_1 = "full"
}
}

if(energy_tank_empty_amount == energy_tank_amount && reserve_tank_amount >= 1 && reserve_tank_amount > reserve_tank_empty_amount && reserve_trigger == 1){
    energy_tank_empty_amount = prev_tank_empty - (reserve_tank_amount - reserve_tank_empty_amount);
    reserve_tank_empty_amount = reserve_tank_amount;
}

//power ups triggers

if(space_jump == true && screw_attack == false){
    jump_power_up = "space_jump_";
}else if(screw_attack == true){
    jump_power_up = "screw_attack_";
}

if(is_randomizer == true && power_up_timer == 0){
    power_ind += x;
    power_ind %= 199;
    var index = (random_func_2(power_ind, power_num, true))
    choice = ds_list_find_value(power_up_list, index)
}

if(is_randomizer == true && power_up_timer == 3){
    ds_list_delete(power_up_list, ds_list_find_index(power_up_list, choice));
    power_num = ds_list_size(power_up_list);
}

if(beam_2 == true && beam_3 == false && beam_4 == false && beam_5 == false && beam_6 == false){
    beam_level = "2";
}else if(beam_3 == true && beam_4 == false && beam_5 == false && beam_6 == false){
    beam_level = "3";
}else if(beam_4 == true && beam_5 == false && beam_6 == false){
    beam_level = "4";
}else if(beam_5 == true && beam_6 == false){
    beam_level = "5";
}else if(beam_6 == true){
    beam_level = "6";
}

if(gravity_suit == true && varia_suit == false){
    varia_suit = true;
}

if(is_randomizer == false){
    if(level == 1 && power_up_timer == 0){
    morphball = true;
    missiles = true;
    item_collect = "3%"
    energy_tank_amount = 1;
    missile_amount = prev_missile_amount + 5;
}
if(level == 2 && power_up_timer == 0){
    bombs_power_up = true;
    item_collect = "5%"
    missile_amount = prev_missile_amount + 5;
}
if(level == 3 && power_up_timer == 0){
    charge = true;
    item_collect = "9%"
    energy_tank_amount = 2;
    missile_amount = prev_missile_amount + 10;
}
if(level == 4 && power_up_timer == 0){
    beam_2 = true;
    item_collect = "13%"
    reserve_tank_amount = 1;
    missile_amount = prev_missile_amount + 10;
}
if(level == 5 && power_up_timer == 0){
    high_jump = true;
    item_collect = "17%"
    energy_tank_amount = 3;
    missile_amount = prev_missile_amount + 10;
}
if(level == 6 && power_up_timer == 0){
    varia_suit = true;
    item_collect = "20%"
    missile_amount = prev_missile_amount + 10;
}
if(level == 7 && power_up_timer == 0){
    speed_booster = true;
    super_missiles = true;
    item_collect = "25%"
    energy_tank_amount = 4;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 10;
}
if(level == 8 && power_up_timer == 0){
    beam_3 = true;
    item_collect = "31%"
    reserve_tank_amount = 2;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 9 && power_up_timer == 0){
    grapple = true;
    item_collect = "37%"
    energy_tank_amount = 5;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 10 && power_up_timer == 0){
    power_bombs = true;
    beam_4 = true;
    item_collect = "43%"
    power_bomb_amount = prev_power_bomb_amount + 3;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 11 && power_up_timer == 0){
    X_ray= true;
    item_collect = "51%"
    energy_tank_amount = 7;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 12 && power_up_timer == 0){
    gravity_suit = true;
    item_collect = "59%"
    reserve_tank_amount = 3;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 3;
    missile_amount = prev_missile_amount + 20;
}
if(level == 13 && power_up_timer == 0){
    space_jump = true;
    item_collect = "69%"
    energy_tank_amount = 9;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 3;
    missile_amount = prev_missile_amount + 20;
}
if(level == 14 && power_up_timer == 0){
    beam_5 = true;
    item_collect = "76%"
    power_bomb_amount = prev_power_bomb_amount + 6;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 20;
}
if(level == 15 && power_up_timer == 0){
    spring_ball = true;
    item_collect = "87%"
    energy_tank_amount = 11;
    power_bomb_amount = prev_power_bomb_amount + 6;
    super_missile_amount = super_missile_amount + 3;
        missile_amount = prev_missile_amount + 25;
}
if(level == 16 && power_up_timer == 0){
    screw_attack = true;
    item_collect = "99%"
    energy_tank_amount = 14;
    super_missile_amount = super_missile_amount + 3;
    reserve_tank_amount = 4;
    power_bomb_amount = prev_power_bomb_amount + 6;
    missile_amount = prev_missile_amount + 25;
}
if(level >= 17){
    item_collect = "100%"
    beam_6 = true;
}
}else if(is_randomizer == true){
if(level == 1 && power_up_timer == 1){
    missiles = true;
    variable_instance_set(id, choice, true)
    item_collect = "3%"
    energy_tank_amount = 1;
    missile_amount = prev_missile_amount + 5;
}
if(level == 2 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "5%"
    missile_amount = prev_missile_amount + 5;
}
if(level == 3 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "9%"
    energy_tank_amount = 2;
    missile_amount = prev_missile_amount + 10;
}
if(level == 4 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "13%"
    reserve_tank_amount = 1;
    missile_amount = prev_missile_amount + 10;
}
if(level == 5 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "17%"
    energy_tank_amount = 3;
    missile_amount = prev_missile_amount + 10;
}
if(level == 6 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "20%"
    missile_amount = prev_missile_amount + 10;
}
if(level == 7 && power_up_timer == 1){
    super_missiles = true;
    variable_instance_set(id, choice, true)
    item_collect = "25%"
    energy_tank_amount = 4;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 10;
}
if(level == 8 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "31%"
    reserve_tank_amount = 2;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 9 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "37%"
    energy_tank_amount = 5;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 10 && power_up_timer == 1){
    power_bombs = true;
    variable_instance_set(id, choice, true)
    item_collect = "43%"
    power_bomb_amount = prev_power_bomb_amount + 2;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 15;
}
if(level == 11 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "51%"
    energy_tank_amount = 7;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 2;
    missile_amount = prev_missile_amount + 15;
}
if(level == 12 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "59%"
    reserve_tank_amount = 3;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 2;
    missile_amount = prev_missile_amount + 20;
}
if(level == 13 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "69%"
    energy_tank_amount = 9;
    super_missile_amount = super_missile_amount + 3;
    power_bomb_amount = prev_power_bomb_amount + 2;
    missile_amount = prev_missile_amount + 20;
}
if(level == 14 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "76%"
    power_bomb_amount = prev_power_bomb_amount + 4;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 20;
}
if(level == 15 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "87%"
    energy_tank_amount = 11;
    power_bomb_amount = prev_power_bomb_amount + 4;
    super_missile_amount = super_missile_amount + 3;
    missile_amount = prev_missile_amount + 25;
}
if(level == 16 && power_up_timer == 1){
    variable_instance_set(id, choice, true)
    item_collect = "99%"
    energy_tank_amount = 14;
    super_missile_amount = super_missile_amount + 3;
    reserve_tank_amount = 4;
    power_bomb_amount = prev_power_bomb_amount + 4;
    missile_amount = prev_missile_amount + 25;
}
if(level == 17 && power_up_timer == 1){
    item_collect = "100%"
    variable_instance_set(id, choice, true)
}
}


//power ups gained via leveling up ^^^

//adam lines
if(hud_text_timer == -50){
    line_ind += x;
    line_ind %= 24;
    line = random_func(line_ind, array_length(line_array), true);
}
hud_text = line_array[line]
if(hud_text_timer >= 300){
    hud_text_draw = -100;
    hud_text_timer = -100;
}



if(samus_check >= 1 && samus_check <= 20){
    samus_check++
}

if (state == PS_WALL_JUMP) {
    walljump_cooldown = 20;
}
if (walljump_cooldown > 0) {
    walljump_cooldown =- 1;
}else {
    has_walljump = true;
}

if(is_dead == false){
    set_player_stocks((player), 2);
}else if(is_dead == true){
    set_player_stocks((player), 1);
}

if(state == PS_FIRST_JUMP && (shield_pressed || shield_down)){
    state = PS_IDLE_AIR;
}

//ammo stuff
if(special_pressed && special_cooldown >= 20 && missiles == true){
    sound_play(sound_get("select_ammo"), false, false, 10);
    if(grapple == true && ((power_bombs == false && select_ammo == 2) || (super_missiles == false && select_ammo == 1))){
        select_ammo = 4;
        special_cooldown = 0;
    }else if(X_ray == true && ((power_bombs == false && select_ammo == 2) || (super_missiles == false && select_ammo == 1))){
        select_ammo = 5;
        special_cooldown = 0;
    }else{
        special_cooldown = 0;
        select_ammo++;
    }
}
if(missiles == true && (select_ammo == 6 || left_strong_pressed || up_strong_pressed || down_strong_pressed || right_strong_pressed) && special_cooldown >= 20){
    sound_play(sound_get("select_ammo"), false, false, 10);
    select_ammo = 0;
    special_cooldown = 0;
}

if(!phone.state){
if(up_down){
    is_aiming = "up_";
}else if(shield_down){
    if(down_down){
    is_aiming = "diagonal_down_";
    }else{
    is_aiming = "diagonal_up_";
    }
}else if(free){
    if(down_down && !shield_down){
    is_aiming = "down_"
    }else{
    is_aiming = "forward_";
}
}else{
    is_aiming = "forward_";
}
}


switch(select_ammo){
    case 1:
    if(missiles == true){
        
    }else{
        select_ammo = 0;
    }
    break;
    case 2:
    if(super_missiles == true){
        
    }else{
        select_ammo = 0;
    }
    break;
    case 3:
    if(power_bombs == true){
        
    }else{
        select_ammo = 0;
    }
    break;
    case 4:
    if(grapple == true){
        
    }else{
        select_ammo = 0;
    }
    break;
    case 5:
    if(X_ray == true){
        
    }else{
        select_ammo = 0;
    }
    break;
}

has_airdodge = false;

if(i_frames >= 5 && i_frames <= 60){
    invincible = true;
}

if(state == PS_HITSTUN){
    i_frames = 0;
    air_friction = 1;
}else{
    air_friction = 0.04;
}

if(num_samuses == 0){
    with(oPlayer) if("url" in self) && (url == other.url){
        other.num_samuses++
    }
}

if(num_samuses == 1 && samus_check == 4){
    samus_check = 0;
    with(oPlayer) if(num_samuses >= 2){
        other.num_samuses++;
    }
}

//hurtbox switch
if(is_crouch == true && is_morph == false){
    hurtboxID.sprite_index = sprite_get("crouch_hurtbox");
    gravity_speed = 0.1;
}else if(is_crouch == true && is_morph == true){
    gravity_speed = 0.4;
    hurtboxID.sprite_index = sprite_get("morph_hurtbox");
}else{
    hurtboxID.sprite_index = sprite_get("idle_hurtbox");
    gravity_speed = 0.1;
}

if(state == PS_WALL_JUMP){
    is_morph = false;
    is_crouch = false;
}

if(state == PS_RESPAWN){
    state = PS_IDLE_AIR
}

prev_x_pos = x;
prev_y_pos = y;
prev_missile_amount = missile_amount;
prev_super_missile_amount = super_missile_amount;
prev_power_bomb_amount = power_bomb_amount;
prev_level = level;
prev_health = energy;
prev_tank_empty = energy_tank_empty_amount;
prev_damage = damage;

//phone stuff

set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open_" + is_facing));
if(phone.state){
    is_morph = false;
    is_crouch = false;
}

line_array = [
"Any objections, Lady?",
"y can't metroid crawl?",
"metroid is a girl",
"Hello World",
"lol n00b get wrecked",
"Wavedashing has been
authorized",
"I wonder how many players
will see this message",
"Metroid is a cool guy. Eh
shoots aliens and doesn't
afraid of anything",
"See you next mission!!!",
"YOUR RATE FOR COLLECTING
ITEMS IS " + item_collect,
"The Quarantine Bay is
ahead. Bio-signs are
confirmed. Be careful",
"Now, go to the Quarantine
Bay",
"Happy 35th Anniversary
Metroid",
"Do you remember him?",
"What's an Other M?",
"I have named it the SA-X",
"Bomb data ready",
"HOW THE HELL CAN YOU
DOWNLOAD MISSILES",
"There are now no fewer
than 10 SA-X aboard the
station",
"Is your objective clear?
    
          Yes        No",
"Bird magic",
"Missile data ready.
Download immediately",
"Now! Use your missiles!",
"You don't move unless I
say so. And you don't fire
until I say so",
"DREAD is real 2021",
"Buy Metroid DREAD", 
"Crawling hasn't been
authorised",
"Samus up smash doesn't
work",
"I'm here even tho I'm
not in Super Metroid",
"Go Samus Go",
"The latex samus skin was
born because of an error",
]

//hit effects
beam_collision = hit_fx_create( sprite_get( "beam_attacks_" + beam_level + "_shot_and_charge_collision" ), 10 );
missile_collision = hit_fx_create( sprite_get( "physical_attacks_missile_contact_explosion" ), 12 );
super_missile_collision = hit_fx_create( sprite_get( "physical_attacks_super_missile_contact_explosion" ), 12 );
beam_trail_anim = hit_fx_create( sprite_get( "beam_attacks_" + beam_level + "_charge_particle" ), 24 );