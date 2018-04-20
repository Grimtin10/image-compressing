void setup(){
  String[] image = loadStrings("result.cim");
  //size(1920,1080);
  fullScreen();
  int w = int(image[0]);
  int h = int(image[1]);
  println(w,h,image.length,1/(height/w));
  for(int i=0;i<image.length-3;i+=3){
    for(int x=0;x<w;x++){
      for(int y=0;y<h;y++){
        set(((((i/3)/(height/w)+x)*w))+(x),((((i/3)%(height/h)+y)*h))+(y),color(int(image[i+2]),int(image[i]),int(image[i+1])));
      }
    }
  }
}