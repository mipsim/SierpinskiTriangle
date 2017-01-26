////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void setup()
{
	size(600, 600);
}


public void draw()
{
	mouseDragged();
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void mouseDragged()//optional
{
	if (mousePressed == true)
	{
		background(50, 0, 0);
		sierpinski(25, 575, 550 ,10);

	}

	else
	{
		background(0);
		sierpinski(25, 575, 550, 560);
	}
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


public void sierpinski(int x, int y, int len, int count) 
{
	if ( len < count )
	{
		if (mousePressed == true)
		{
			fill(255,215,0);
			noStroke();
			triangle(x, y, x + len, y, x + len/2, y - len);
		}

		else
		{
			fill(255);
			noStroke();
			triangle(x, y, x + len, y, x + len/2, y - len);
		}
	}

	else 
	{
		sierpinski(x, y, len/2, count);
		sierpinski(x+len/2, y, len/2, count);
		sierpinski(x+len/4, y-len/2, len/2, count);
		
		if (mousePressed == true)
		{
			fill(255,215,0);
			ellipse(x+len/2, y-len/3, len/4, len/4);
			fill(50, 0, 0);
			ellipse(x+len/2, y-len/3, len/4, len/8);
			fill(255, 0, 0);
			ellipse(x+len/2, y-len/3, len/24, len/12);
			fill(255,0,0);
			ellipse(x+len/.75, y-len/8, len/24, len/24);
			fill(255,0,0);
			ellipse(x+len/.25, y-len/2.25, len/24, len/24);
			fill(255,0,0);
			ellipse(x+len/.5, y-len/2.25, len/24, len/24);
			fill(255,0,0);
			ellipse(x+len/.6, y-len/2.25, len/24, len/24);
			fill(255,0,0);
			ellipse(x-len/.75, y-len/8, len/24, len/24);
			fill(255,0,0);
			ellipse(x-len/.25, y-len/2.25, len/24, len/24);
			fill(255,0,0);
			ellipse(x-len/.5, y-len/2.25, len/24, len/24);
			fill(255,0,0);
			ellipse(x-len/.6, y-len/2.25, len/24, len/24);
		}
	}
}