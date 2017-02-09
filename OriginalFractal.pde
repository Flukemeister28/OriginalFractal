
public void setup(){
	size(800,800);
	background(0);
}
public void draw(){
	fractal(000,000,800);
	noLoop();
}
public void fractal(int x, int y, int size){
	if (size < 10){
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(x,y,size,size);}
	else{
		fractal(x,y,size/2);
		fractal(x+size/2,y,size/2);
		fractal(x+size/4,y+size/4,size/2);
	}
}
public void mousePressed(){
	redraw();
}