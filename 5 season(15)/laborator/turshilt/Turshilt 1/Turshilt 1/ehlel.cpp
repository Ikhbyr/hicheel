#include<iostream>
#include<conio.h>
#include<windows.h>
#define nud 6
#define ehlel 100
#define togsgol 350
#define hewlehEh 200
#define hewlehY 150
#define daraalal 4
using namespace std;
void durvuljin(int x1, int y1, int x2, int y2);
int tawih(int x);
void win(int t);
int main() {
	int gd = DETECT, gm, x1 = ehlel, x2 = togsgol, y1 = ehlel, y2 = ehlel, tooluur = 0, ut1, ut2, in, ji, t2 = 0, t3 = 0;
	int a[nud - 1][nud - 1];
	initgraph(&gd, &gm, "");
	// line for x1, y1, x2, y2
	for (int i = 0; i<nud; i++) {
		line(x1, y1, x2, y2);
		y1 = y1 + 50;
		y2 = y1;
	}
	x1 = ehlel; x2 = x1; y1 = ehlel; y2 = y2 - 50;
	for (int i = 0; i<nud; i++) {
		line(x1, y1, x2, y2);
		x1 = x1 + 50;
		x2 = x1;
	}
	int asciiValue;
	x1 = ehlel; y1 = ehlel; y2 = ehlel + 50; x2 = ehlel + 50;
	setcolor(YELLOW);
	durvuljin(x1, y1, x2, y2);
	settextstyle(8, 0, 5);
	while (1)
	{
		asciiValue = getch();
		if (asciiValue == 13) {
			ut2 = tawih(x1);
			ut1 = tawih(y1);
			//Utga orson esehiig shalgana omnoh utgiig oorchlohgui
			if (a[ut1][ut2] == 2 || a[ut1][ut2] == 3) {

			}
			else {
				if (tooluur % 2 == 0) {
					outtextxy(x1 + 13, y1 + 5, "X");
					a[ut1][ut2] = 2;
					tooluur++;
				}
				else {
					outtextxy(x1 + 13, y1 + 5, "O");
					tooluur++;
					a[ut1][ut2] = 3;
				}
			}
			/*Massiv hewleh
			for(in=0;in<=4;in++){
			for(ji=0;ji<=4;ji++){
			cout<<a[in][ji]<<" ";
			}
			cout<<"\n";
			}*/
			// X ba O daraalsan esehiig shalgah heseg
			t2 = 0; t3 = 0;
			for (in = 0; in <= 4; in++) {
				for (ji = 0; ji <= 4; ji++) {
					if (a[in][ji] == 2) {
						t3 = 0;
						t2++;
					}
					else {
						t2 = 0;
					}
					if (a[in][ji] == 3) {
						t2 = 0;
						t3++;
					}
					else {
						t3 = 0;
					}
					if (t2 == daraalal || t3 == daraalal) {
						win(t2);
						cout << "hewtee";
						getch();
						return 0;
					}
				}
				t2 = 0; t3 = 0;

			}
			t3 = 0; t2 = 0;
			for (in = 0; in <= 4; in++) {
				for (ji = 0; ji <= 4; ji++) {
					if (a[ji][in] == 2) {
						t3 = 0;
						t2++;
					}
					else {
						t2 = 0;
					}
					if (a[ji][in] == 3) {
						t2 = 0;
						t3++;
					}
					else {
						t3 = 0;
					}
					if (t2 == daraalal || t3 == daraalal) {
						win(t2);
						cout << "bosoo";
						getch();
						return 0;
					}
				}
			}
			t2 = 0; t3 = 0;
			for (in = 0; in <= 4; in++) {
				if (a[in][in] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][in] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "diogonali";
					getch();
					return 0;
				}
			}
			t3 = 0; t2 = 0;
			for (in = 0, ji = 4; in <= 4; in++, ji--) {
				if (a[in][ji] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][ji] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "hajuu diogonali";
					getch();
					return 0;
				}
			}
			t3 = 0; t2 = 0;
			for (in = 1, ji = in - 1; in <= 4; in++, ji++) {
				if (a[in][ji] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][ji] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "tuslah1 diogonali";
					getch();
					return 0;
				}
			}
			t3 = 0; t2 = 0;
			for (in = 0, ji = 1; ji <= 4; in++, ji++) {
				if (a[in][ji] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][ji] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "tuslah2 diogonali";
					getch();
					return 0;
				}
			}
			t3 = 0; t2 = 0;
			for (in = 0, ji = 3; in <= 3; in++, ji--) {
				if (a[in][ji] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][ji] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "tuslah3 diogonali";
					getch();
					return 0;
				}
			}
			t2 = 0; t3 = 0;
			for (in = 1, ji = 4; in <= 4; in++, ji--) {
				if (a[in][ji] == 2) {
					t3 = 0;
					t2++;
				}
				else {
					t2 = 0;
				}
				if (a[in][ji] == 3) {
					t2 = 0;
					t3++;
				}
				else {
					t3 = 0;
				}
				if (t2 == daraalal || t3 == daraalal) {
					win(t2);
					cout << "hajuu4 diogonali";
					getch();
					return 0;
				}
			}

		}
		if (asciiValue == 72 && y1>ehlel) {
			//Deeshee
			setcolor(WHITE);
			durvuljin(x1, y1, x2, y2);
			y1 = y1 - 50;
			y2 = y2 - 50;
			setcolor(YELLOW);
			durvuljin(x1, y1, x2, y2);
		}
		//Dooshoo
		if (asciiValue == 80) {
			if (y2 >= togsgol) {
			}
			else {
				//Dooshloh uyd tsagaan bolgoh
				setcolor(WHITE);
				durvuljin(x1, y1, x2, y2);
				//Dooshloh uyd shar bolgoh
				setcolor(YELLOW);
				y2 = y2 + 50;
				y1 = y1 + 50;
				durvuljin(x1, y1, x2, y2);
			}
		}
		if (asciiValue == 75 && x1>ehlel) {
			//left shiljih
			setcolor(WHITE);
			durvuljin(x1, y1, x2, y2);
			x1 = x1 - 50;
			x2 = x2 - 50;
			setcolor(YELLOW);
			durvuljin(x1, y1, x2, y2);
		}
		if (asciiValue == 77 && x2<togsgol) {
			setcolor(WHITE);
			durvuljin(x1, y1, x2, y2);
			x1 = x1 + 50;
			x2 = x2 + 50;
			setcolor(YELLOW);
			durvuljin(x1, y1, x2, y2);
		}
	}
	return 0;
}
void durvuljin(int x1, int y1, int x2, int y2) {
	line(x1, y1, x1, y2);
	line(x1, y1, x2, y1);
	line(x1, y2, x2, y2);
	line(x2, y1, x2, y2);
}
int tawih(int x) {
	return (x - 100) / 50;
}
void win(int t) {
	setcolor(RED);
	settextstyle(8, 0, 7);
	if (t == daraalal)
		outtextxy(hewlehEh, hewlehY, "X WIN!!");
	else
		outtextxy(hewlehEh, hewlehY, "O WIN!!");
}
