
int imgwidth, imgheight; 
int res=30; 
float d=1; 
float zValues[][]; 
PImage img; 
float rtx, rtz; 
int imgArray[][]; 
int t, tt; 
float noiseScale, noiseScale2; 
color strokeColors[][]; 
 
 
void setup() { 
 
  img=loadImage("9045welt_outlined.gif"); 
    
 
  imgArray = new int[img.height][img.width]; 
  for(int i=0; i<img.width; i++) { 
    for(int j=0; j<img.height; j++) { 
 imgArray[j][i] = img.pixels[j*img.height+i]; 
 
    } 
  } 
 
  imgwidth =  img.width; 
  imgheight=  img.height; 
 
  zValues = new float[imgheight][imgwidth]; 
  for(int i=0; i<zValues.length; i++) { 
    for(int j=0; j<zValues[0].length; j++) { 
 noiseScale+=0.0015; noiseScale2+=0.003; 
 zValues[i][j] = noise(noiseScale, noiseScale2)*50  ;//noise(noiseScale, noiseScale2); 
 
    } 
  } 
   
  zValues[10*res][15*res] = 200; 
  zValues[16*res][15*res] = -200; 
   
  strokeColors = new color[imgheight][imgwidth]; 
   getStrokeColor(); 
  size(1024, 768); 
  background(150); 
   
} 
 
void rotation() { 
  rtx+=((mouseY-height/2)*0.5-rtx)*0.001; 
  rtz+=((mouseX-width/2)*0.5-rtz)*0.001; 
  rotateX(rtx); rotateZ(rtz); 
 
} 
 
void loop() { 
  clear();  
  mesh(); 
 
 
} 
 
 
void mesh() { 
 
  push(); 
  translate(width/2, height/2, 0); 
  scale(0.8); 
  rotation(); 
   
  for(int i=0; i<imgwidth-res; i+=res) { 
 
    beginShape(TRIANGLE_STRIP); 
 
    for(int j=0; j<imgheight; j+=res) { 
 
 t = int(zValues[j][i] * d); 
 tt = int(zValues[j][i+res] * d); 
 
  
 stroke(255,255,255,12); 
  
   
 texture(img); 
  
 vertex(i-imgwidth/2,  j-imgheight/2,t,i,j); 
 vertex(i+res-imgwidth/2,  j-imgheight/2, tt, i+res, j); 
 
    } 
 
    endShape(); 
  } 
  pop(); 
  
} 
 
void getStrokeColor() { 
   for(int i=0; i<img.width-res; i++) { 
    for(int j=0; j<img.height-res; j++) { 
 if(alpha(imgArray[j][i])>0) { 
  strokeColors[j][i] = color(100,100,100); 
   
 } 
 else strokeColors[j][i] = color(255,255,255,0); 
  
     } 
   }  
} 
