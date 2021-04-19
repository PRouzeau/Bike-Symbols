

// Bike and trike symbols for public display
//(c) 2019 Pierre ROUZEAU AKA PRZ
// Program license GPL 3.0
// Documentation and symbols licence cc BY-SA 4 and GFDL 1.2
// All bike symbols are original design

include <Z_library.scad>
//-----------------------------------
/*[Affichage]*/
//Affiche le trait symbolisant le sol
disp_ground = true;
//Projection 2D (pour exportation SVG ou DXF), pas de couleurs
//2D projection (for SVG or DXF export), no colors
proj=false;
//Type d'affichage des roues
wheel_t = 0; //[0:Cercle, 1:Cercle avec coupures, 2:Disque plein]
//Le cycliste est représenté avec une seule jambe visible
single_leg = false;
//Affiche le symbole de pédalier
crank = true;
//License du programme
license=true;
//Nombre de segments pour un cercle complet. Un plus grand nombre augmente le temps de calcul.
$fn=64;

/*[Symboles]*/
//Coefficient d'anamorphose (pour peinture sol)
anamorph = 1;
//Épaisseur des symboles (pour faire un modèle 3D)
model_thk=1;
//Fichier image utilisateur (avec extension) PNG ~200x200, vide s'il n'y a pas d'image utilisateur. Calcul long.
user_file="";
//1er symbole
Symb1=2; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//2eme symbole
Symb2=6; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//3eme symbole
Symb3=7; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//4eme symbole
Symb4=8; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//5eme symbole
Symb5=0; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//6eme symbole
Symb6=0; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//7eme symbole
Symb7=0; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]
//8eme symbole
Symb8=0; // [0:Aucun, 1:Marcheur, -1:Grand-Bi, 2:Cycliste urbain, 3:Cycliste de route,4:Vélo couché à grand empattement, 5:Vélo couché compact a grand empattement,6:Vélo couché a empattement court, 7:Tricycle couché,8:Vélomobile,9:Image utilisateur]

// Position en x des symboles (0: pas d'affichage);
symb_x = [1,300,600,930,0,0,0,0];
//----------------------------------------
/*[Texte, symbole puissance et cadre]*/
//Type de cadre
frame_type = 1; //[0:Aucun, 1:Bords arrondis, 2:Rectangulaire, 3:Parallépipédique]
//Épaisseur du cadre
frame_thk = 12;
//Ajustement du haut du cadre
frame_top_adj = 0;
//Position horizontale du 1er texte
text_x = -100;
//Premier texte
text1 = "Musculaire";
//Police du 1er texte
text_font = "DejaVu Sans: Italic";
//Hauteur (taille) du 1er texte
text_size = 48;
//Position horizontale du 2eme et 3eme texte
text2_x = 320;
//Second texte
text2 = "A besoin d'une nourriture saine";
//Position verticale du 3eme texte
text3_y = -70;
//Troisième texte
text3 = "Toujours prêt !";
//Police du 2eme et 3eme texte
text2_font = "DejaVu Sans: Italic";
//Hauteur (taille) du 2eme et 3eme texte
text2_size = 32;
//Symbole alimentation
supply_symb = 1; //[0:Aucun, 1:Nourriture, 2:Alimentation électrique, 3:Nourriture + électricité]
//Taille du symbole d'alimentation
supply_symb_size = 85;
//Position horizontale (x) du symbole d'alimentation
supply_symb_x = 1020;
//Position verticale (y) du symbole d'alimentation
supply_symb_y = -20;

//--------------------------------
/*[Couleurs]*/
//Couleur du vélo
s_color = "Black";
//Couleur du cycliste
r_color = "MediumSeaGreen";
//Couleur du 1er texte
t_color = "Black";
//Couleur du 2ème texte
t2_color = "Red";
//Couleur du cadre
frame_color = "Red";
//Couleur du symbole d'alimentation
supply_color = "MediumSeaGreen";

//=======================================
symb_t = [Symb1,Symb2,Symb3,Symb4,Symb5,Symb6,Symb7,Symb8];

symb_x2 = [ for (i = [0:len(symb_t)-1]) symb_t[i]==8?symb_x[i]+60:symb_x[i]]; // add 60 in length for velomobile (type 8)
ground_length = max(symb_x2);  // ground length
	
// echo_camera();

if(proj)
	projection() disp_all();
else
	disp_all();

//=================================
//Position camera at the program opening
first_view = $vpr==[55,0,25]; // Hack: default rotation vector signals program opening
//Camera distance
$vpd=first_view?4600:$vpd;
//Camera translation
$vpt=first_view?[500,400,0]:$vpt;
//Camera rotation
$vpr=first_view?[0,0,0]:$vpr;
//====================================
module disp_all () {
scale([1,anamorph,model_thk]){
	//== display symbols ============
	for(i=[0:7])
		if(symb_t[i] && symb_x[i])
			t(symb_x[i]) symb(symb_t[i]);
	//== texts =====================
	color(t_color) linear_extrude(1) //Extrude  to have 3D object else troubles in Rendering
		t(text_x, -20)
			text(text1, text_size, text_font, valign = "top");
	color(t2_color) linear_extrude(1)
		t(text2_x, -20)
			text(text2, text2_size, text2_font, valign = "top");
	color(t2_color) linear_extrude(1)
		t(text2_x, text3_y)
			text(text3, text2_size, text2_font, valign = "top");
	// Supply symbol
	disp_supply_symb(supply_symb, supply_symb_size/12, supply_symb_x, supply_symb_y);
	//== ground ===================
	if(disp_ground)
		color(s_color)
			cubex(ground_length+260,4,1, -120,-2);
	//---------------------
	frame();
}//scale
//== Bike Symbols =================
	module symb (type) {
		rotz(-90)
		if (type==-1) //Penny Farthing bike
			cycle(55,140,50, 18,-134, 0,0,45,0, false);
		else if (type==1) //Walker
			rider(0,-73, 10,-28,15,0,false);
		else if (type==2) //Urban cyclist
			cycle(92,92,69, -30,-95, 0,0,45,0);
		else if (type==3) //Roadie
			cycle(92,92,69, -30,-95, -45,0,88,-13);
		else if (type==4) //LWB recumbent
			cycle(90,68,95, -30,-65, 38,63,48,-18);
		else if (type==5) //CLWB recumbent
			cycle(68,55,75, -36,-70, 33,55,42,-12);
		else if (type==6) //SWB recumbent
			cycle(90,68,65, 14,-66, 45,70,45,-14);
		else if (type==7) //Recumbent trike
			cycle();
		else if (type==8) //Velomobile
			velomobile();
else if (type==9 && user_file!="")
black()
t(-200, -80)
projection()
diff() {
surface(str("User_images/",user_file), invert=true);
cubez(1000,1000,-500, 0,0,-10);
}
	}
} // disp_all
//--------------------------------------
module rider (y=0, x=0, ta=0, la=0, aa=45, ha=0, allow_crank=true) {
	d = 100;
	ht=1;
	sl = single_leg && la>-22; //la discriminate a walker
	t(x,y) {
		//cylz (-2,100); // articulation axis
		color(r_color)
			body(0,0, -10+ta) {
				upper_arm(-d*0.05,d*0.043, aa)
					fore_arm(ta<-30?55:30); // detect roadie pos
				//head
				rotz(ha)
					cylz(d*0.29,ht,  -d*0.38,0);
			}
		t(-d*0.15) // rotate at hip middle
			rotz(la) t(d*0.04) {
				color (r_color)
				if (sl)
					upper_leg(d*0.025, -d*0.04, 60)
						lower_leg (-75);
				else {
					upper_leg(0, -d*0.06, 34)
						lower_leg (-35);
					//folded leg
					if(la>-22) // folded
						upper_leg(0, -d*0.04, 76)
							lower_leg (-77);
					else // walking man
						upper_leg(-d*0.03, d*0.03, 62)
							lower_leg (-30);
				}
				if(crank&&allow_crank)
					color(s_color)
					t(d*0.78,d*0.32)
					rotz(-37) {
						//crank
						hull()
							dmirrorx()
								cylz(d*0.05,ht,d*0.15);
						//pedals
						duplx (d*0.32)
						t(-d*0.16)
						rotz(-45)
							hull()
								dmirrorx()
									cylz(d*0.035,ht,d*0.055);
						//BB
						cylz(d*0.1,ht);
					}
			}
	}
	module upper_leg (x=0,y=0,a) {
		t(x,y)
			rotz(a) {
				hull() {
					cylz(d*0.18,ht);
					cylz(d*0.18,ht, d*0.44);
				}
				t(d*0.44)
					children();	
			}
	}
	//------
	module lower_leg (a) {
	  rotz(a)
			hull() {
				cylz(d*0.18,ht);
				cylz(d*0.125,ht, d*(sl?0.5:0.44));
			}
	}
	//--------
	module upper_arm (x=0,y=0,a) {
		t(x,y)
			rotz(a) {
				hull() {
					cylz(d/6,ht);
					cylz(d/8,ht, d*0.34);
				}
				t(d*0.34)
					children();
			}
	}
	//------
	module fore_arm (a) {
	  rotz(a)
			hull() {
				cylz(d/8,ht);
				cylz(d/8,ht, d*0.31);
			}
	}
	//------
	module body (x=0,y=0,a) {
		t(x-d*0.15,y)
			rotz(a) {
				*hull() { // thicker body
					cylz(d/3,ht);
					cylz(d/3,ht, -d*0.5);
				}
				hull() {
					cylz(d/3.4,ht, d*0.02,-d*0.015);
					cylz(d/3.4,ht, -d*0.52,-d*0.015);
				}
				t(-d*0.5)
					children();
			}
	}
}
//--------------------------------------
// wheel d rear + front,Wheel base,
module cycle (dw=90, dwf=68, wbh = 68, x=25, y=-40, ta=44, la=60, aa=24, ha=-18, is_trike=true) {
	diam = 100;
	ht=1;
	module fwheel_cut () {
		diff() {
				cylz(dwf*1.08,ht+2, -dwf/2,wbh,-1);
				//::::::::
				if(wheel_t!=2)
					cylz(dwf*0.89-16,ht+40, -dwf/2,wbh,-20);
			}
	}
	
	color(s_color) {
// rear wheel
		t(-dw/2,-wbh)
			diff() {
				cylz(dw,ht);
				//::::::::
				if(wheel_t!=2)
					cylz(dw*0.89-10,ht+20, 0,0,-10);
				if (wheel_t==1) // cut wheel
					drotz (120,2)
						cubex(-dw*0.6,diam*0.05,10);
			}
		//front wheel
		t(-dwf/2,wbh)
			diff() {
				cylz(dwf,ht-0.1);
				//::::::::
				if(wheel_t!=2)
					cylz(dwf*0.89-10,ht+20, 0,0,-10);
				if (wheel_t==1) // cut wheel
					drotz (120,2)
						cubex(-dwf*0.6,diam*0.05,10);
			}
	}
	//rider	
	diff() {
			rider(x,y,ta,la,aa,ha);
		//:::::::::
		if(is_trike)
			fwheel_cut();
	}
}
//--------------------------------------
module velomobile () {
	ht=1;
	diam=100;
	cycle(90,68,71, 26,-23, 47,70,43,-18);
	color(s_color) {
		//roof
		t(diam*0.6,-diam*0.23)
			comma(diam*4, 10,22, diam*0.17);
		//back
		t(-diam*0.48,diam*1.66)
			comma(diam*6, -26,123, diam*0.25);
		//front top
		t(diam*0.95,diam*0.42)
			comma(diam*4, 5,-3, diam*0.16);
		//front bottom
		mirrorx()
			t(diam*1.86,diam*1.05)
				comma(diam*3.5, -15,16,diam*0.15);
	}
	module comma (d=diam*10, ang=0, rot=0, thk=0.15*diam) {
		rotz(rot)
			diff() {
				cylz(d,ht, 0,0,0.1, 3*$fn);
				//:::::
				cylz(d*1.05, ht+20, thk,0, -10, 3*$fn);
				rotz(-44)
					cubey(d*1.2,d,ht+20);
				rotz(ang) {
					cubey(d*1.2,-d,ht+20);
					t(-d/2)
						rotz(45)
							cubey(d*0.1,-d*0.1,20);
				}
			}
	}
}
//--------------------------------------
//function test if a value exists in a vector
function val_in (aVector, start=0, end=0, val=-1) = [for (i = end, a = aVector[i]==val;i >= start;i = i - 1, a = a?true: aVector[i]==val) a ][end - start];

//echo ("val in", val_in(symb_t,0,len(symb_t), -1));
//--------------------------------------
module frame () {
	//frame top and bottom plane shall not be coinciident with object planes because of colors problems.
	hh = 1; // model thickness, beware of color handling, faces shall not interfere with others. rider faces at 1, wheels at 0.9
	lgr= ground_length+360;
	ypos1 = text3?text3_y-70:-(text1?text_size:-15)-65;
	ypos2 = supply_symb?supply_symb_y-supply_symb_size-30:-80;
	ypos = min(ypos1, ypos2);
	// position base depending text existence and y position.
	xpos = -165;
	ht = 255-ypos+(val_in(symb_t,0,len(symb_t),-1)?35:0)+frame_top_adj; // Add height for penny-farthing bike (type -1) ... a bit complex!
	corner_d = 80;
	t=frame_thk;
	tslz(-0.2) // move from main plane for color handling
	color(frame_color)
	if (frame_type==1)
		t(xpos+lgr/2,ypos+ht/2) diff() {
			hull() dmirrorx() dmirrory()
				cylz (corner_d,hh, (lgr-corner_d)/2,(ht-corner_d)/2,-0.1);
			//::::::::::::
			hull() dmirrorx() dmirrory()
				cylz (corner_d-2*t,10, (lgr-corner_d)/2,(ht-corner_d)/2,-5);
		}
	else if (frame_type==2)
		t(xpos+lgr/2,ypos+ht/2) diff() {
			cubez(lgr,ht,hh);
			//:::::::::::::::::
			cubez(lgr-2*t,ht-2*t,10, 0,0,-5);
		}
	else if (frame_type==3)
		t(xpos+lgr/2,ypos+ht/2) diff() {
			cubez(lgr+ht+150,ht,hh);
			//:::::::::::::::::
			t(lgr/2+60)
				rotz(-30)
					cubex (ht,ht*1.5,10);
			t(-lgr/2-60)
				rotz(-30)
					cubex (-ht,ht*1.5,10);
			diff() {
				cubez(lgr+ht+150,ht-2*t,10, 0,0,-5);
				t(lgr/2+60-t*1.2)
				rotz(-30)
					cubex (ht,ht*1.5,10);
			t(-lgr/2-60+t*1.2)
				rotz(-30)
					cubex (-ht,ht*1.5,10);
			}
		}
if(license)
	black()
	t(xpos+20,ypos-10)
		text("(c) Pierre ROUZEAU license CC BY-SA 4.0 ", 11, "Liberation Sans:Bold", valign = "top");
}
//--------------------------------------
module dx(d=5, dx=0, x=0, y=0, t=1) {
	dpx = d>0?0:-dx/2;
	t(x+dpx,y)
		hull()
			duplx(dx)
				cylz(abs(d),t);
	t(x+dpx+dx,y) children();
}
//--------------------------------------
module plug_symbol (d=5) {
	t(-d,-6*d) // ref left top
	diff() {
		u() {
			dx(d, 1.5*d, 4.5*d,2.5*d);
			diff() {
				cylz(5.5*d,1, 4.5*d,0.25*d);
				tslz(-5) {
					dx(3.5*d,d,4.5*d,0.25*d,10)
						cubex (10*d,10*d,4, 0,0,5);
				}
			}
			dx(d, 4*d, 4.5*d,-2*d);
			dx(d, 3.5*d, 5*d,-5*d);
			cylz(4*d,1, 8.5*d,-3.5*d);
			//plug
			cylz(6*d,1, 8*d,2.5*d);
			cubez(3*d,6*d,1, 9.5*d,2.5*d);
			duply(-3*d)
				dx(d,3*d, 11*d,4*d);
		}
		//::::::::::::
		tslz(-5)
			dx(2*d,4*d, 4.5*d,-3.5*d,10);
		
		ds = 0.7*d;
		t(8.2*d,d,-5)
		rotz(60)
			dx(ds,1.8*d, 0,0,10)
				rotz(120)
					dx(ds,1.5*d,0,0,10)
						rotz(-120)
							dx(ds,1.8*d,0,0,10);
	}
}
//--------------------------------------
// ref point: left top
module food_symbol (d=5, plate=true) {
	module fork (d=6) {
		dx(d,9*d);
		duply(-1.4*d,2)
			dx(0.7*d,3.5*d, 10*d,1.4*d);
		diff() {
			cylz(3.5*d,1, 10*d,0);
			cubez(3*d,4*d,10, 11.5*d,0,-5);
		}
	}
	module spoon (d=6) {
		dx(d,9*d);
		t(11.5*d)
		scale ([1.5,1,1])
			cylz(3.8*d,1);
	}
	t(6*d,-6*d) { // ref left top
		t(-3.5*d,-6*d)
			rotz(55) fork(d);
		t(3.5*d,-6*d)
			rotz(125) diff() {
				spoon(d);
				t(6.1*d)
				rotz (-70)
				cubez (5*d,1.8*d,10, 0,0,-5);
			}
		if(plate) {	
			diff() {
				cylz(25*d,1);
				cylz(23*d,10, 0,0,-5);
			}
			diff() {
				cylz(18*d,1);
				cylz(16.5*d,10, 0,0,-5);
			}
		}
	}
}
//--------------------------------------
module food_plug_symbol (d=5) {
	food_symbol(d, false);
	t(16.5*d,-6*d) {
		dx(-d,5*d);
		rotz(90)
			dx(-d,5*d);
	}
	t(21.5*d)
		plug_symbol(d);
}
//--------------------------------------
module disp_supply_symb (pws=0, d=5, x=0, y=0) {
	color(supply_color) t(x,y)
		if (pws==1)
			food_symbol(d, false);
		else if (pws==2)
			plug_symbol(d);
		else if (pws==3)
			food_plug_symbol(d);
}
