textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 320;

//setup

if(setup == false)
{
	setup = true;
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//flip through pages
	page_number = array_length(text);
	
	for(var p = 0; p < page_number; p++)
	{
		textLength[p] = string_length(text[p]);
		
		textbox_x_offset[p] = 96
	}
	
}


if(drawChar < textLength[page])
{
	drawChar += textSpd;
	drawChar = clamp(drawChar,0,textLength[page]);
}


if(keyboard_check_pressed(vk_space))
{
	if(drawChar == textLength[page])
	{
		if(page < page_number-1)
		{
			page++;
			drawChar = 0;
		}
		else
		{
			instance_destroy();
		}
	}
	else
	{
		drawChar = textLength[page]
	}
}


txtbSprW = sprite_get_width(txtbSprite);
txtbSprH = sprite_get_height(txtbSprite);

draw_sprite_ext(txtbSprite,0,textbox_x + textbox_x_offset[page], textbox_y, w/txtbSprW, h/txtbSprH,0,c_white,1)


//dibujar texto
var _drawtext = string_copy(text[page], 1,drawChar);
draw_text_ext(textbox_x + textbox_x_offset[page] + border, textbox_y + border, _drawtext, sep, lineWidth);