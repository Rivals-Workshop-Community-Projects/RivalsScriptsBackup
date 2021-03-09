//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 255, 255, 255); //COLOR SLOT 0

var pelo=0
var piel=1
var camisa=2
var chaqueta=3
var botas=4

for (var i=0;i<6;i++)
{
    set_color_profile_slot(i, pelo, 26, 26, 26);
    set_color_profile_slot(i, piel, 225, 193, 141);
    set_color_profile_slot(i, camisa, 117, 139, 133);
    set_color_profile_slot(i, chaqueta, 199, 134, 83);
    set_color_profile_slot(i, botas, 37, 10, 10);
    
    
}
var hr=10
var vr=30
var sr=30
set_color_profile_slot_range(piel, hr, sr, vr);
set_color_profile_slot_range(camisa, hr, sr, vr);
set_color_profile_slot_range(chaqueta, hr, sr, vr);
//set_color_profile_slot_range(, 0, 0, 10);

var c=1
//capa
set_color_profile_slot(c, camisa, 85, 49, 32);
set_color_profile_slot(c, chaqueta, 59, 88, 65);
set_color_profile_slot(c, botas, 12, 18, 9);

c++

//eren
set_color_profile_slot(c, pelo, 64, 53, 49);
set_color_profile_slot(c, camisa, 156, 190, 186);
set_color_profile_slot(c, chaqueta, 47, 45, 46);
set_color_profile_slot(c, piel, 243, 198, 165);

c++

//mikasa
set_color_profile_slot(c, pelo, 0, 0, 0);
set_color_profile_slot(c, camisa, 189, 230, 225);
set_color_profile_slot(c, chaqueta, 156, 190, 186);
set_color_profile_slot(c, piel, 239, 220, 161);

c++

//armin
set_color_profile_slot(c, pelo, 216, 182, 98);
set_color_profile_slot(c, camisa, 199, 134, 83);
set_color_profile_slot(c, chaqueta, 231, 61, 32);
set_color_profile_slot(c, piel, 243, 198, 165);

c++

//manga
set_color_profile_slot(c, camisa, 20, 20, 20);
set_color_profile_slot(c, chaqueta, 20, 20, 20);
set_color_profile_slot(c, botas, 22, 1, 1);

c++
//COLOR RANGE (H,S,V)
/*
set_color_profile_slot_range(0, 360, 100, 100);
//Blue Color
set_color_profile_slot(1, 0, 0, 0, 255);
//Red Color
set_color_profile_slot(2, 0, 255, 0, 0);
//Green Color
set_color_profile_slot(3, 0, 0, 255, 0);
//Black Color
set_color_profile_slot(4, 0, 0, 0, 0);
//Purple Color
set_color_profile_slot(5, 0, 255, 0, 255);