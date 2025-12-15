turn = 0;

initiative = ds_list_create()

ds_list_add(initiative, o_player); 

global.GameMaster = id;

projectileExists = false;


global.list_used = ds_list_create();
global.list_chat = ds_queue_create();
