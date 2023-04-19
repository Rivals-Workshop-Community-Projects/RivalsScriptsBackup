var len = array_length(alt_with_mods)
for(var i = 0; i < len; i++){
	alt_update_index = alt_with_mods[i]
	// print(alt_update_index)
	script_execute(script_get_index(`color_${alt_update_index}`))
}

switch(alt_update_index){
  case 5:
    break
  case 10:
    break
  case 15:
    break
  case 19:
    break;
  case 27:
    break;
  case 30:
}

#define color_5
var i = alt_update_index
if("alt_mods_amounts" not in self) alt_mods_amounts = 999
switch(modifier%alt_mods_amounts){
  case 0:
    // Genesis
    set_color_profile_slot( i, 0, 245, 238, 238 ); //Horn/static
    set_color_profile_slot( i, 1, 99, 20, 20 ); //Shirt
    set_color_profile_slot( i, 2, 33, 33, 33 ); //Coat
    set_color_profile_slot( i, 3, 201, 30, 30 ); //water
    set_color_profile_slot( i, 4, 50, 54, 54 ); //skin
    set_color_profile_slot( i, 5, 135, 0, 0 ); //Pants
    set_color_profile_slot( i, 6, 209, 29, 29 ); //gloves
    set_color_profile_slot( i, 7, 238, 245, 238 ); //slippers/mouth/heart
  break;
  case 1:
    // Torbulha
    set_color_profile_slot( i, 0, 254, 183, 0 ); //Horn/static
    set_color_profile_slot( i, 1, 150, 102, 18 ); //Shirt
    set_color_profile_slot( i, 2, 2, 198, 216 ); //Coat
    set_color_profile_slot( i, 3, 2, 198, 216 ); //water
    set_color_profile_slot( i, 4, 242, 228, 214 ); //skin
    set_color_profile_slot( i, 5, 13, 36, 61 ); //Pants
    set_color_profile_slot( i, 6, 254, 183, 0 ); //gloves
    set_color_profile_slot( i, 7, 12, 25, 58 ); //slippers/mouth/heart
    break;
  case 2:
    // BigHouse
    set_color_profile_slot( i, 0, 255, 202, 6 ); //Horn/static
    set_color_profile_slot( i, 1, 188, 210, 255 ); //Shirt
    set_color_profile_slot( i, 2, 255, 202, 6 ); //Coat
    set_color_profile_slot( i, 3, 249, 251, 253 ); //water
    set_color_profile_slot( i, 4, 56, 81, 187 ); //skin
    set_color_profile_slot( i, 5, 50, 77, 187 ); //Pants
    set_color_profile_slot( i, 6, 255, 202, 6 ); //gloves
    set_color_profile_slot( i, 7, 249, 251, 253 ); //slippers/mouth/heart
    break;
}

#define color_10
var i = alt_update_index
if(modifier == 0){
  // Hugs & Kisses
  set_color_profile_slot( i, 0, 255, 153, 210 ); //Horn/static
  set_color_profile_slot( i, 1, 237, 237, 237 ); //Shirt
  set_color_profile_slot( i, 2, 194, 91, 166 ); //Coat
  set_color_profile_slot( i, 3, 224, 16, 96 ); //water
  set_color_profile_slot( i, 4, 255, 207, 227 ); //skin
  set_color_profile_slot( i, 5, 101, 103, 112 ); //Pants
  set_color_profile_slot( i, 6, 176, 25, 45 ); //gloves
  set_color_profile_slot( i, 7, 204, 71, 172 ); //slippers/mouth/heart
}else{
  // Snowman
  set_color_profile_slot( i, 0, 255, 138, 84 ); //Horn/static
  set_color_profile_slot( i, 1, 219, 255, 252 ); //Shirt
  set_color_profile_slot( i, 2, 245, 255, 254 ); //Coat
  set_color_profile_slot( i, 3, 250, 255, 254 ); //water
  set_color_profile_slot( i, 4, 235, 255, 253 ); //skin
  set_color_profile_slot( i, 5, 217, 255, 246 ); //Pants
  set_color_profile_slot( i, 6, 148, 50, 50 ); //gloves
  set_color_profile_slot( i, 7, 55, 64, 63 ); //slippers/mouth/heart
}

#define color_15
var i = alt_update_index
if(modifier == 0){
  // TGP
  set_color_profile_slot( i, 0, 255, 180, 69 ); //Horn/static
  set_color_profile_slot( i, 1, 212, 201, 64 ); //Shirt
  set_color_profile_slot( i, 2, 212, 136, 44 ); //Coat
  set_color_profile_slot( i, 3, 77, 132, 214 ); //water
  set_color_profile_slot( i, 4, 52, 108, 194 ); //skin
  set_color_profile_slot( i, 5, 54, 114, 125 ); //Pants
  set_color_profile_slot( i, 6, 255, 230, 74 ); //gloves
  set_color_profile_slot( i, 7, 88, 204, 171 ); //slippers/mouth/heart
}else{
  // VAE
  set_color_profile_slot( i, 0, 255, 245, 245 ); //Horn/static
  set_color_profile_slot( i, 1, 173, 28, 28 ); //Shirt
  set_color_profile_slot( i, 2, 47, 28, 79 ); //Coat
  set_color_profile_slot( i, 3, 101, 59, 171 ); //water
  set_color_profile_slot( i, 4, 255, 245, 245 ); //skin
  set_color_profile_slot( i, 5, 79, 26, 75 ); //Pants
  set_color_profile_slot( i, 6, 194, 0, 0 ); //gloves
  set_color_profile_slot( i, 7, 68, 40, 115 ); //slippers/mouth/heart
}

#define color_19
var i = alt_update_index
if("alt_mods_amounts" not in self) alt_mods_amounts = 999
switch(modifier%alt_mods_amounts){
  case 0:
    // Trans
		set_color_profile_slot( i, 0, 247, 168, 204 ); //Horn/static
		set_color_profile_slot( i, 1, 247, 168, 204 ); //Shirt
		set_color_profile_slot( i, 2, 91, 207, 249 ); //Coat
		set_color_profile_slot( i, 3, 91, 207, 249 ); //water
		set_color_profile_slot( i, 4, 240, 240, 240 ); //skin
		set_color_profile_slot( i, 5, 247, 168, 204 ); //Pants
		set_color_profile_slot( i, 6, 255, 157, 202 ); //gloves
		set_color_profile_slot( i, 7, 91, 207, 249 ); //slippers/mouth/heart
  break;
  case 1:
    // Nonbinary
		set_color_profile_slot( i, 0, 253, 244, 53 ); //Horn/static
		set_color_profile_slot( i, 1, 157, 89, 210 ); //Shirt
		set_color_profile_slot( i, 2, 157, 89, 210 ); //Coat
		set_color_profile_slot( i, 3, 157, 89, 210 ); //water
		set_color_profile_slot( i, 4, 76, 104, 133 ); //skin
		set_color_profile_slot( i, 5, 255, 255, 255 ); //Pants
		set_color_profile_slot( i, 6, 44, 44, 44 ); //gloves
		set_color_profile_slot( i, 7, 253, 214, 38 ); //slippers/mouth/heart
    break;
  case 2:
    // Bi
		set_color_profile_slot( i, 0, 255, 66, 141 ); //Horn/static
		set_color_profile_slot( i, 1, 64, 34, 171 ); //Shirt
		set_color_profile_slot( i, 2, 74, 0, 73 ); //Coat
		set_color_profile_slot( i, 3, 255, 0, 212 ); //water
		set_color_profile_slot( i, 4, 204, 51, 142 ); //skin
		set_color_profile_slot( i, 5, 97, 0, 96 ); //Pants
		set_color_profile_slot( i, 6, 74, 0, 73 ); //gloves
		set_color_profile_slot( i, 7, 56, 21, 179 ); //slippers/mouth/heart
    break;
  case 3:
    // Pan
		set_color_profile_slot( i, 0, 34, 177, 255 ); //Horn/static
		set_color_profile_slot( i, 1, 230, 48, 136 ); //Shirt
		set_color_profile_slot( i, 2, 230, 55, 139 ); //Coat
		set_color_profile_slot( i, 3, 34, 177, 255 ); //water
		set_color_profile_slot( i, 4, 76, 104, 133 ); //skin
		set_color_profile_slot( i, 5, 255, 185, 0 ); //Pants
		set_color_profile_slot( i, 6, 255, 207, 0 ); //gloves
		set_color_profile_slot( i, 7, 34, 177, 255 ); //slippers/mouth/heart
    break;
  case 4:
    // Lesbian
		set_color_profile_slot( i, 0, 253, 153, 84 ); //Horn/static
		set_color_profile_slot( i, 1, 213, 40, 0 ); //Shirt
		set_color_profile_slot( i, 2, 213, 40, 0 ); //Coat
		set_color_profile_slot( i, 3, 255, 255, 255 ); //water
		set_color_profile_slot( i, 4, 255, 158, 216 ); //skin
		set_color_profile_slot( i, 5, 163, 0, 97 ); //Pants
		set_color_profile_slot( i, 6, 213, 40, 0 ); //gloves
		set_color_profile_slot( i, 7, 255, 207, 242 ); //slippers/mouth/heart
    break;
  case 5:
    // Gay
		set_color_profile_slot( i, 0, 152, 232, 193 ); //Horn/static
		set_color_profile_slot( i, 1, 7, 142, 112 ); //Shirt
		set_color_profile_slot( i, 2, 38, 206, 171 ); //Coat
		set_color_profile_slot( i, 3, 123, 173, 226 ); //water
		set_color_profile_slot( i, 4, 255, 255, 255 ); //skin
		set_color_profile_slot( i, 5, 80, 73, 203 ); //Pants
		set_color_profile_slot( i, 6, 122, 235, 179 ); //gloves
		set_color_profile_slot( i, 7, 61, 26, 120 ); //slippers/mouth/heart
    break;
  case 6:
    // Ace
		set_color_profile_slot( i, 0, 158, 148, 163 ); //Horn/static
		set_color_profile_slot( i, 1, 173, 173, 173 ); //Shirt
		set_color_profile_slot( i, 2, 150, 37, 142 ); //Coat
		set_color_profile_slot( i, 3, 126, 18, 184 ); //water
		set_color_profile_slot( i, 4, 238, 236, 255 ); //skin
		set_color_profile_slot( i, 5, 101, 103, 112 ); //Pants
		set_color_profile_slot( i, 6, 67, 57, 71 ); //gloves
		set_color_profile_slot( i, 7, 63, 5, 179 ); //slippers/mouth/heart
    break;
}

#define color_20
// print("GAWD")
var i = alt_update_index
if(modifier == 0){
  // Crimson Gear
  set_color_profile_slot( i, 0, 232, 215, 132 ); //Horn/static
  set_color_profile_slot( i, 1, 204, 179, 167 ); //Shirt
  set_color_profile_slot( i, 2, 94, 0, 0 ); //Coat
  set_color_profile_slot( i, 3, 255, 135, 79 ); //water
  set_color_profile_slot( i, 4, 138, 92, 73 ); //skin
  set_color_profile_slot( i, 5, 75, 98, 117 ); //Pants
  set_color_profile_slot( i, 6, 135, 26, 26 ); //gloves
  set_color_profile_slot( i, 7, 110, 0, 34 ); //slippers/mouth/heart
}else{
  // Crimson Gear 2
  set_color_profile_slot( i, 0, 163, 162, 160 ); //Horn/static
  set_color_profile_slot( i, 1, 79, 84, 79 ); //Shirt
  set_color_profile_slot( i, 2, 63, 69, 42 ); //Coat
  set_color_profile_slot( i, 3, 255, 130, 0 ); //water
  set_color_profile_slot( i, 4, 83, 87, 66 ); //skin
  set_color_profile_slot( i, 5, 69, 84, 66 ); //Pants
  set_color_profile_slot( i, 6, 168, 34, 0 ); //gloves
  set_color_profile_slot( i, 7, 120, 0, 0 ); //slippers/mouth/heart
}

#define color_27

var i = alt_update_index
if(modifier == 0){
  // Cola
  set_color_profile_slot( i, 0, 245, 253, 255 ); //Horn/static
  set_color_profile_slot( i, 1, 219, 235, 219 ); //Shirt
  set_color_profile_slot( i, 2, 222, 36, 67 ); //Coat
  set_color_profile_slot( i, 3, 117, 70, 44 ); //water
  set_color_profile_slot( i, 4, 222, 36, 39 ); //skin
  set_color_profile_slot( i, 5, 255, 39, 77 ); //Pants
  set_color_profile_slot( i, 6, 227, 255, 227 ); //gloves
  set_color_profile_slot( i, 7, 219, 235, 219 ); //slippers/mouth/heart
}else{
  // Diet
  set_color_profile_slot( i, 0, 222, 36, 39 ); //Horn/static
  set_color_profile_slot( i, 1, 222, 36, 39 ); //Shirt
  set_color_profile_slot( i, 2, 245, 253, 255 ); //Coat
  set_color_profile_slot( i, 3, 117, 70, 44 ); //water
  set_color_profile_slot( i, 4, 245, 253, 255 ); //skin
  set_color_profile_slot( i, 5, 243, 255, 255 ); //Pants
  set_color_profile_slot( i, 6, 222, 36, 39 ); //gloves
  set_color_profile_slot( i, 7, 199, 8, 84 ); //slippers/mouth/heart
}


#define color_30

var i = alt_update_index
if(modifier == 0){
  // Casual Observer
  set_color_profile_slot( i, 0, 255, 232, 252 ); //Horn/static
  set_color_profile_slot( i, 1, 232, 232, 232 ); //Shirt
  set_color_profile_slot( i, 2, 40, 41, 46 ); //Coat
  set_color_profile_slot( i, 3, 181, 0, 141 ); //water
  set_color_profile_slot( i, 4, 156, 107, 65 ); //skin
  set_color_profile_slot( i, 5, 110, 110, 196 ); //Pants
  set_color_profile_slot( i, 6, 181, 0, 141 ); //gloves
  set_color_profile_slot( i, 7, 23, 183, 197 ); //slippers/mouth/heart
}else{
  // One Bloody Rain
  set_color_profile_slot( i, 0, 166, 23, 23 ); //Horn/static
  set_color_profile_slot( i, 1, 87, 87, 87 ); //Shirt
  set_color_profile_slot( i, 2, 46, 46, 46 ); //Coat
  set_color_profile_slot( i, 3, 122, 7, 7 ); //water
  set_color_profile_slot( i, 4, 88, 105, 86 ); //skin
  set_color_profile_slot( i, 5, 64, 64, 64 ); //Pants
  set_color_profile_slot( i, 6, 122, 7, 7 ); //gloves
  set_color_profile_slot( i, 7, 46, 46, 46 ); //slippers/mouth/heart
}