// Load Room Data - Room Manager

//Add Room Data Here
room_add(0,[]); //Empty Room
room_add(1,[]);
room_add(2,[]);
room_add(3,[]);
room_add(4,[]);
room_add(5,[]);
room_add(6,[]);
//room_data_temp = [article script, x, y, article type, depth, [args0-7], [custom]];
if !follow_player.shield_down with oPlayer if id != other.follow_player && "get_btt_data" in id exit;
if btt_select == -1 btt_select = follow_player.right_down+2*follow_player.left_down;
if debug print_debug(string(btt_select));
switch btt_select {
    case 0:
        course_name = "DEFAULT 1";
        follow_player.respawn_point = [[30,50],[0,0],1];
        //Set the collision of the solid sprites to precise
        sprite_change_collision_mask("btt_solid_0",true, 1, 0, 0, 0, 0, 0 );  
        room_add(1,[
            [ //Each Cell
                [0,0], //Cell Coordinates
                [
                	//Targets
        	        [10, 36, 23, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 36, 39, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 35, 54, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]], //0
        	        //[10, 35, 54, 0, -5, [3, 0, [16,10,2], [[35,54],[30,61],[42,52]], 0, 0, 0, 0], [0]], //0
        	        [10, 53, 22, 0, -5, [4, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 63, 22, 0, -5, [5, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 86, 22, 0, -5, [6, 0, 1, [[86,22],[86,21]], 0, 0, 0, 0], [0]],
        	        [10, 56, 52, 0, -5, [7, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 63, 40, 0, -5, [8, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 79, 37, 0, -5, [9, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 97, 51, 0, -5, [10, 0, 1, [[97,51],[93,51]], 0, 0, 0, 0], [0]],
        	    	[1, 2, 2, 2, 0, [sprite_get("btt_solid_0"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 47, 47, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 63, 36, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 54, 30, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 84, 39, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
                    ]
                ],
            //Blast Zones
            [ //Each Cell
                [0,1], //Cell Coordinates
                [
                    [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    ]
                ],
            [
                [1,1],
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    ]
                ],
            [ //Each Cell
                [-1,1], //Cell Coordinates
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    ]
                ]
            ]);
        break;
    case 1:
        course_name = "DEFAULT 2";
        follow_player.respawn_point = [[29,50],[0,0],1];
        //Set the collision of the solid sprites to precise
        sprite_change_collision_mask("btt_solid_1",true, 1, 0, 0, 0, 0, 0 );  
        room_add(1,[
            [ //Each Cell
                [0,0], //Cell Coordinates
                [
                	//Targets
        	        [10, 100, 45, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 110, 42, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 81, 63, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 75, 63, 0, -5, [4, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 46, 60, 0, -5, [5, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 22, 14, 0, -5, [6, 0, 1, [[22,14],[22,13]], 0, 0, 0, 0], [0]],
        	        [10, 57, 47, 0, -5, [7, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 67, 35, 0, -5, [8, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 57, 20, 0, -5, [9, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 97, 53, 0, -5, [10, 0, 1, [[97,53],[91,53]], 0, 0, 0, 0], [0]],
        	    	[1, 2, 2, 2, 0, [sprite_get("btt_solid_1"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 48, 80, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 25, 27, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 46, 55, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 86, 28, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 79, 36, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 110, 55, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        //[1, 2, 2, 0, 1, [7, 0, 0, 0, 0, 0, 0, 0], [0]]
                    ]
                ],
            [ //Each Cell
                [0,1], //Cell Coordinates
                [
                    [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    ]
                ],
            [
                [1,1],
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    //[4, 150, 2, 0, 0, [4, 0, 0, 0, 0, 20, 85*16, 0], [0,0]]
                    ]
                ],
            [ //Each Cell
                [-1,1], //Cell Coordinates
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    //[4, 2, 2, 0, 0, [4, 0, 0, 0, 0, 20, 85*16, 0], [0,0]]
                    ]
                ]
            ]);
        break;
    case 2:
        course_name = "DEFAULT 3";
        follow_player.respawn_point = [[50,50],[0,0],1];
        //Set the collision of the solid sprites to precise
        sprite_change_collision_mask("btt_solid_2",true, 1, 0, 0, 0, 0, 0 );  
        room_add(1,[
            [ //Each Cell
                [0,0], //Cell Coordinates
                [
                	//Targets
        	        [10, 46, 53, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 65, 53, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 56, 43, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 56, 36, 0, -5, [4, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 56, 26, 0, -5, [5, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 74, 21, 0, -5, [6, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 35, 20, 0, -5, [7, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 35, 38, 0, -5, [8, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 34, 58, 0, -5, [9, 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [10, 92, 40, 0, -5, [10, 0, 2, [[92,40],[89,40]], 0, 0, 0, 0], [0]],
        	    	[1, 2, 2, 2, 0, [sprite_get("btt_solid_2"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 60, 47, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
        	        [1, 70, 24, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
                    ]
                ],
            [ //Each Cell
                [0,1], //Cell Coordinates
                [
                    [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    ]
                ],
            [
                [1,1],
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    //[4, 150, 2, 0, 0, [4, 0, 0, 0, 0, 20, 85*16, 0], [0,0]]
                    ]
                ],
            [ //Each Cell
                [-1,1], //Cell Coordinates
                [
                	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
                    //[4, 2, 2, 0, 0, [4, 0, 0, 0, 0, 20, 85*16, 0], [0,0]]
                    ]
                ]
            ]);
        break;




}
// room_add(1,[
//     [ //Each Cell
//         [0,0], //Cell Coordinates
//         [
//         /*  DITHER ARGS: [dither type, transparency (0 = partial transparency, 1 = full transparency), dither frames]
//         /*[no dither]*/                 [10, 20, 40, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
//         /*[partial w/ regular dither]*/ [10, 50, 40, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
//         /*[full w/ brick dither]*/      [10, 80, 40, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
//         /*[dbz dither]*/                [10, 110, 40, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
//         ///*[obj1]*/ [6, 80, 36, 0, -5, [0, 0, 0, 0, 0, 0, 0, 0], [0]],
//         ///*[obj2]*/ [4, 89, 47, 0, 0, [1, 0, 0, 0, 0, 32, 32, -1], [0]],
//         /*[obj2]*/ [8, 75, 40, 0, 0, [0, 0, 32, 32, 2, 2, 1, 0], [0]],
//         ///*[obj2]*/ [8, 86, 47, 0, 0, [0, 0, 32, 32, 2, 1, -1, -1], [0]],
//         ///*[obj3]*/ [7, 63, 30, 0, 0, [0, 700, 300, 0, 0, 0, 0, 0], [0]],
//         ///*[obj3]*/ [7, 0, 25, 0, 0, [0, 900, 500, 2, 0, 0, 0, 0], [0]],
//         ///*[obj3]*/ [9, 117, 25, 0, 0, [1, 900, 500, 1, 0, 3, 0, 0], [0]],
//         /*[obj1]*/ [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0]],
//             [1, 2, 2, 0, 1, [7, 0, 0, 0, 0, 0, 0, 0], [0]]
//             ]
//         ],
//     [
//         [1,0],
//         [
//             [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [-1,0], //Cell Coordinates
//         [
//             [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,1], //Cell Coordinates
//         [
//             [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,-1], //Cell Coordinates
//         [
//             [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,2], //Cell Coordinates
//         [
//             [1, 2, 2, 2, 0, [6, 0, 0, 1, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,3], //Cell Coordinates
//         [
//             ]
//         ],
//     [ //Each Cell
//         [0,4], //Cell Coordinates
//         [
//             ]
//         ]
//     ]);
// room_add(2,[
//     [ //Each Cell
//         [0,0], //Cell Coordinates
//         [
//         /*[obj2]*/ [4, 100, 47, 0, 0, [2, 0, 0, 0, 0, 32, 32, 0], [0,0]],
//         /*[obj2]*/ [1, 163, 85, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj4]*/ [1, 5, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj6]*/ [1, 25, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj7]*/ [1, 47, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj9]*/ [1, 83, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj10]*/ [1, 99, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj12]*/ [1, 137, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj13]*/ [1, 155, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj14]*/ [1, 71, 33, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj15]*/ [1, 103, 33, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [
//         [1,0],
//         [
//         /*[obj2]*/ [1, 163, 85, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj4]*/ [1, 5, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj6]*/ [1, 25, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj7]*/ [1, 47, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj8]*/ [1, 65, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj9]*/ [1, 83, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj10]*/ [1, 99, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj11]*/ [1, 119, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj12]*/ [1, 137, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj13]*/ [1, 155, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [-1,0], //Cell Coordinates
//         [
//         /*[obj2]*/ [1, 163, 85, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj4]*/ [1, 5, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj6]*/ [1, 25, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj7]*/ [1, 47, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj8]*/ [1, 65, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj9]*/ [1, 83, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj10]*/ [1, 99, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj11]*/ [1, 119, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj12]*/ [1, 137, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj13]*/ [1, 155, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,1], //Cell Coordinates
//         [
//         ///*[obj1]*/ [6, 80, 36, 0, 0, [0, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj2]*/ [1, 163, 85, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj4]*/ [1, 5, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj6]*/ [1, 25, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj7]*/ [1, 47, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj8]*/ [1, 65, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj9]*/ [1, 83, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj10]*/ [1, 99, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj11]*/ [1, 119, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj12]*/ [1, 137, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj13]*/ [1, 155, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]]
//             ]
//         ],
//     [ //Each Cell
//         [0,2], //Cell Coordinates
//         [
//         ///*[obj1]*/ [6, 80, 36, 0, 0, [0, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj2]*/ [1, 163, 85, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj4]*/ [1, 5, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj6]*/ [1, 25, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj7]*/ [1, 47, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj8]*/ [1, 65, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj9]*/ [1, 83, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj10]*/ [1, 99, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj11]*/ [1, 119, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj12]*/ [1, 137, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]],
//         /*[obj13]*/ [1, 155, 49, 2, 0, [2, 0, 0, 0, 0, 0, 0, 0], [0,0]]
//             ]
//         ]
//     ]);


/*
################################################################################
CHEAT SHEET
################################################################################

#############
room_add(room_id, [room_data]);
room_id: The unique numerical ID of the scene.

room_data: The data of each of the articles. It's in the same order as it is in config.ini
    per article: [article,x,y,type,depth,[arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7], [custom_args]]
    
    custom_args depends on the article calling - it's there in case it's needed, but not officially supported beyond existing & loading.
#############
*/




//DO NOT EDIT BELOW
#define room_add(_room_id,room_data) //Adds a new room to the scene
var _room_id_ind = array_find_index(array_room_ID,_room_id);
if _room_id_ind == - 1 {
    if debug print_debug("[RM] Adding... "+string(_room_id));
    array_push(array_room_data,room_data);
    array_push(array_room_ID,_room_id);
} else {
    array_room_data[_room_id_ind] = room_data;
    array_room_ID[_room_id_ind] = _room_id;
}