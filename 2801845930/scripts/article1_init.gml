//article1_init

// Animation

sprite_index = sprite_get("spamempty");
image_index = 0;  
new_sprite = sprite_get("spamempty"); 
animation_type = 0;
anim_timer = 0;
anim_type = 0;
uses_shader = true;

// Stats

can_be_grounded = false;
ignores_walls = true;

if (player_id.SpamPlayerStringNum == 0) { // Cosmetic Strings on self
    String_IsDebuffer = false; 
    x = player_id.x - 125 * player_id.spr_dir;
    y = get_instance_y(asset_get("camera_obj")) - 300;
} else {
    String_IsDebuffer = true;
    String_DebuffPlayerNum = player_id.SpamPlayerStringNum;
    x = 0;
    y = get_instance_y(asset_get("camera_obj")) - 300;
}

player_id.SpamNumPlayerArticles += 1;

String_MoveTimer = 0;
String_MovePosX = 0;
String_MoveHsp = 0;

String_PriorStateX = 0;
String_PriorStateHsp = 0;

String_MovePlan = false;

StringSwingPos1 = 0;
StringSwingForward1 = false; // If true swings forward, if false swings back
StringSwingPos2 = 0;
StringSwingForward2 = true; // If true swings forward, if false swings back
StringSwingPos3 = 0;
StringSwingForward3 = true; // If true swings forward, if false swings back

// Variables



// States

state = 0;
state_timer = 0;
