int bigLen = height;
public void setup()
{
	background(255);
size(1000,1000);
}
public void draw()
{
	sierpinski(0,height,bigLen);
}
public void mousePressed()
{
	background(255);
	bigLen = (int)(Math.random()*height);
	sierpinski(0,height,bigLen);
}

public void sierpinski(int x, int y, int len) 
{
	float r,g,b;
	r = (float)(Math.random()*255);
	g = (float)(Math.random()*255);
	b = (float)(Math.random()*255);
	stroke(r,g,b);
	fill(r,g,b);
	if(len<=20) triangle(x,y,x+len,y,x+len/2,y-len);
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
}
}