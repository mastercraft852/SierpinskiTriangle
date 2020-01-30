public void setup()
{
size(500,500);
}
public void draw()
{
	sierpinski(0,500,500);
}
// public void mouseDragged()//optional
// {

// }
public void sierpinski(int x, int y, int len) 
{
	fill(255);
	if(len<=20) triangle(x,y,x+len/2,y-len,x+len,y);
	else{
	triangle(x,y,x+len/4,y-len/2,x+len/2,y);
	triangle(x+len/2,y,x+(len-len/4),y-len/2,x+len,y);
	triangle(x+len/4,y-len/2,x+(len-len/4),y-len/2,x+len/2,y-len);
}
}