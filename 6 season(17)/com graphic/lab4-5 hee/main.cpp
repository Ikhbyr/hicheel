#include <windows.h>
#include <GL/glut.h>
#include <math.h>
int W=800, H=600;
void initGL() {
   glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
}
void setWindow(float left, float right, float bottom, float top)
{
glMatrixMode(GL_PROJECTION);
glLoadIdentity();
gluOrtho2D(left, right, bottom, top);
}
void hee1(double x){
    int i, v,n=6;
    float durs[100][2],ang,hex=6.2832/n, diff=0,rad=0.1;
    for(i=0; i<25; i++) {
        //5 different viewports
        if(i==24){
            //setWindow(-0.8, 0.8, -0.8, 0.8);
        }
        for(v=0;v<n;v++){
           ang=v*hex+diff;
           durs[v][0]=cos(ang)*rad;
           durs[v][1]=sin(ang)*rad;
        }
        diff=diff+x;
        rad=rad+0.1;
        //glViewport ( x-i*3,y-i*3,wid+i*6, h+i*6 );
        glBegin(GL_LINE_STRIP);
        for(v=0;v<n;v++)
            glVertex2fv(durs[v]);
        glVertex2fv(durs[0]);
        glEnd();
        glFlush();
   }
}

void display() {
    int wid=100;
    int x=0, y=0, h=wid, w=wid;
    setWindow(-1.5, 1.5, -1.5, 1.5);
    for(int i=0; i<4; i++){
        for(int j=0; j<4; j++){
            if(i%2==0 && j%2==0){
                glViewport(x,y,w,h);
                hee1(0.1);
            }else
            if(i%2==1 && j%2==0){
                glViewport(x,y,w,h);
                hee1(-0.1);
            }else if(i%2==0 && j%2==1){
                glViewport(x,y,w,h);
                hee1(-0.1);
            }else if(i%2==1 && j%2==1){
                glViewport(x,y,w,h);
                hee1(0.1);
            }
            x=x+wid;
        }
        x=0;
        y=y+wid;
    }
}
void reshape(GLsizei w, GLsizei h) {
    W=w; H=h;
    glViewport(0, 0, (GLsizei) w, (GLsizei) h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-5.0, 5.0, -5.0, 5.0, 0, 0);
    glMatrixMode(GL_MODELVIEW);
}
int main(int argc, char** argv) {

    glutInitWindowSize(400, 400);
    glutInitWindowPosition(300, 100);
    glutInit(&argc, argv);
    glutCreateWindow("LAB Hee");
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); // use double buffering
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    initGL();
    glutMainLoop();
    return 0;
}
