#include <windows.h>
#include <gl/glut.h>
//Initial square position and size
GLfloat x1=100.0f;
GLfloat y1=150.0f;
GLsizei rsize=50;
//Step size in x and y directions
GLfloat xstep=1.0f;
GLfloat ystep=1.0f;
GLfloat winWidth, winHeight;

void display(void) {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0f, 0.0f, 0.0f);
    glRectf(x1, y1, x1+rsize, y1+rsize);

    //Flush drawing commands and swap
    glutSwapBuffers();
}
void setup(void) {
    glClearColor(0.0f, 0.0f, 1.0f, 1.0f);
}

void timer(int value) {
    if (x1>winWidth-rsize || x1<0)
        xstep=-xstep;
    if (y1>winHeight-rsize || y1<0)
        ystep=-ystep;
    if (x1>winWidth-rsize)
        x1=winWidth-rsize-1;
    if (y1>winHeight-rsize)
    y1=winHeight-rsize-1;
    x1+=xstep; y1+=ystep;

    glutPostRedisplay();
    glutTimerFunc(33, timer, 1);
}

void resize (GLsizei w, GLsizei h) {
    if (h==0) h=1;
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    if (w<=h) {
        winHeight=250.0f*h/w;
        winWidth=250.0f;
    } else {
        winWidth=250.0f*w/h;
    winHeight=250.0f;
    }
    glOrtho(0.0f, winWidth, 0.0f, winHeight, 1.0f, -1.0f);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
}


