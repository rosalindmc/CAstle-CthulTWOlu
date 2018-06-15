//Border
draw_set_color(c_ltgray)
draw_rectangle(x,y,x+172,y+154,1)

//type 0 Selector
for(i = 0; i <= 25; i++)
{
	#region //Make Colour
	switch(mode)
	{
		case 0: draw_set_color(make_color_hsv(i*10.2,255,255)) break
		case 1: draw_set_color(make_color_hsv(255,i*10.2,255)) break
		case 2: draw_set_color(make_color_hsv(255,255,255-(i*10.2))) break
		case 3: draw_set_color(make_color_rgb(i*10.2,0,0)) break
		case 4: draw_set_color(make_color_rgb(0,i*10.2,0)) break
		case 5: draw_set_color(make_color_rgb(0,0,i*10.2)) break
	}
	#endregion

	draw_rectangle(x+155,y+2+(i*5),x+170,y+7+(i*5),false)
	draw_set_color(c_black)
	draw_rectangle(x+155,y+2+(i*5),x+170,y+7+(i*5),true)
}

//type 1 and 2 Selector
for(i = 0; i <= 9; i++)
{
	for(ii = 0; ii <= 9; ii++)
	{
		#region //Make Colour
		switch(mode)
		{
			case 0: draw_set_color(make_color_hsv(h,i*28.33,255-(ii*28.33))) break
			case 1: draw_set_color(make_color_hsv(i*28.33,s,255-(ii*28.33))) break
			case 2: draw_set_color(make_color_hsv(i*28.33,ii*28.33,v)) break
			case 3: draw_set_color(make_color_rgb(r,i*28.33,ii*28.33)) break
			case 4: draw_set_color(make_color_rgb(i*28.33,g,ii*28.33)) break
			case 5: draw_set_color(make_color_rgb(i*28.33,ii*28.33,b)) break
		}
		#endregion
		
		draw_rectangle(x+2+(i*15),y+2+(ii*15),x+17+(i*15),y+17+(ii*15),false)
		draw_set_color(c_black)
		draw_rectangle(x+2+(i*15),y+2+(ii*15),x+17+(i*15),y+17+(ii*15),true)
	}
}

//Mouse Selection
if mouse_check_button(mb_left)
{
	if mouse_y >= y+2
	{
		if mouse_x >= x+156 and mouse_x < x+169 and mouse_y <= y+131
		{	
			#region //Make Colour
			switch(mode)
			{
				case 0: h = floor((mouse_y-(y+2))*(25/125))*10.2 break
				case 1: s = floor((mouse_y-(y+2))*(25/125))*10.2 break
				case 2: v = 255-floor((mouse_y-(y+2))*(25/125))*10.2 break
				case 3: r = floor((mouse_y-(y+2))*(25/125))*10.2 break
				case 4: g = floor((mouse_y-(y+2))*(25/125))*10.2 break
				case 5: b = floor((mouse_y-(y+2))*(25/125))*10.2 break
			}
			#endregion
		}
		if mouse_x >= x+3 and mouse_x < x+150 and mouse_y <= y+151
		{

			
			#region //Make Colour
			switch(mode)
			{
				case 0:	s = floor((mouse_x-(x+2))*(10/150))*28.33
						v = 255-floor((mouse_y-(y+2))*(10/150))*28.33 break
				case 1:	h = floor((mouse_x-(x+2))*(10/150))*28.33
						v = 255-floor((mouse_y-(y+2))*(10/150))*28.33 break
				case 2:	h = floor((mouse_x-(x+2))*(10/150))*28.33
						s = floor((mouse_y-(y+2))*(10/150))*28.33 break
				case 3:	g = floor((mouse_x-(x+2))*(10/150))*28.33
						b = floor((mouse_y-(y+2))*(10/150))*28.33 break
				case 4:	r = floor((mouse_x-(x+2))*(10/150))*28.33
						b = floor((mouse_y-(y+2))*(10/150))*28.33 break
				case 5:	r = floor((mouse_x-(x+2))*(10/150))*28.33
						g = floor((mouse_y-(y+2))*(10/150))*28.33 break
			}
			#endregion
		}
	}
}

//Draw Current Position
#region //Get Colour
switch(mode)
{
	case 0: i = h/10.2 break
	case 1: i = s/10.2 break
	case 2: i = (255-v)/10.2 break
	case 3: i = r/10.2 break
	case 4: i = g/10.2 break
	case 5: i = b/10.2 break
}
#endregion

draw_set_color(c_black)
draw_rectangle(x+154,y+1+(i*5),x+171,y+8+(i*5),true)
draw_rectangle(x+156,y+3+(i*5),x+169,y+6+(i*5),true)
draw_set_color(c_white)
draw_rectangle(x+155,y+2+(i*5),x+170,y+7+(i*5),true)

#region //Get Colour
switch(mode)
{
	case 0: i = s/28.33 ii = (255-v)/28.33 break
	case 1: i = h/28.33 ii = (255-v)/28.33 break
	case 2: i = h/28.33 ii = s/28.33 break
	case 3: i = g/28.33 ii = b/28.33 break
	case 4: i = r/28.33 ii = b/28.33 break
	case 5: i = r/28.33 ii = g/28.33 break
}
#endregion

draw_set_color(c_black)
draw_rectangle(x+1+(i*15),y+1+(ii*15),x+18+(i*15),y+18+(ii*15),true)
draw_rectangle(x+3+(i*15),y+3+(ii*15),x+16+(i*15),y+16+(ii*15),true)
draw_set_color(c_white)
draw_rectangle(x+2+(i*15),y+2+(ii*15),x+17+(i*15),y+17+(ii*15),true)

//Type Selector
if mode = 0 {drawText(c_black,c_white,x+175,y,"H - SV")} else {drawText(c_black,c_ltgray,x+175,y,"H - SV")}
if mode = 1 {drawText(c_black,c_white,x+175,y+20,"S - HV")} else {drawText(c_black,c_ltgray,x+175,y+20,"S - HV")}
if mode = 2 {drawText(c_black,c_white,x+175,y+40,"V - HS")} else {drawText(c_black,c_ltgray,x+175,y+40,"V - HS")}
if mode = 3 {drawText(c_black,c_white,x+175,y+60,"R - GB")} else {drawText(c_black,c_ltgray,x+175,y+60,"R - GB")}
if mode = 4 {drawText(c_black,c_white,x+175,y+80,"G - RB")} else {drawText(c_black,c_ltgray,x+175,y+80,"G - RB")}
if mode = 5 {drawText(c_black,c_white,x+175,y+100,"B - RG")} else {drawText(c_black,c_ltgray,x+175,y+100,"B - RG")}

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x+175,y,x+200,y+119)
	{
		mode = floor((mouse_y-y)/20)
	}
}

if mode <= 2
{
	colour = make_color_hsv(h,s,v)
	r = color_get_red(colour)
	g = color_get_green(colour)
	b = color_get_blue(colour)
}
else
{
	colour = make_color_rgb(r,g,b)
	h = color_get_hue(colour)
	s = color_get_saturation(colour)
	v = color_get_value(colour)
}

/*
drawText(c_black,c_ltgray,x-25,y,"H - "+string(floor(h)))
drawText(c_black,c_ltgray,x-25,y+20,"S - "+string(floor(s)))
drawText(c_black,c_ltgray,x-25,y+40,"V - "+string(floor(v)))
drawText(c_black,c_ltgray,x-25,y+60,"R - "+string(floor(r)))
drawText(c_black,c_ltgray,x-25,y+80,"G - "+string(floor(g)))
drawText(c_black,c_ltgray,x-25,y+100,"B - "+string(floor(b)))
*/

//Colour Preview
draw_set_color(colour)
draw_rectangle(x+155,y+137,x+170,y+152,false)
draw_set_color(c_black)
draw_rectangle(x+155,y+137,x+170,y+152,true)

return colour;