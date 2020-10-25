function gestoreBottoni1(){
    try{
        for(var i in Btn1){
        nodoIndice1=document.createElement("img");
        nodoIndice1.setAttribute("id",i);
        nodoIndice1.setAttribute("class", "gallery");
        nodoIndice1.setAttribute("src",Btn1[i]);
        nodoIndice1.onclick=gestoreIndici1;
        nodoIndice1.onmouseover=gestoreOver;
		nodoIndice1.onmouseout=gestoreOut;
        nodoBox1.appendChild(nodoIndice1);
        }
        document.getElementById("Indice1").setAttribute("src","loghi/pieno.gif");
        nodoFoto2.setAttribute("src",immagini1["Indice1"]);
        
    }catch(e){
		alert("gestoreBottoni1" + e);
                     }
}

function gestoreBottoni2(){
    try{
        for(var i in Btn2){
        nodoIndice2=document.createElement("img");
        nodoIndice2.setAttribute("id",i);
        nodoIndice2.setAttribute("class", "gallery");
        nodoIndice2.setAttribute("src",Btn2[i]);
        nodoIndice2.onclick=gestoreIndici2;
        nodoIndice2.onmouseover=gestoreOver;
		nodoIndice2.onmouseout=gestoreOut;
        nodoBox2.appendChild(nodoIndice2);
        }
        document.getElementById("Indice3").setAttribute("src","loghi/pieno.gif");
        nodoFoto4.setAttribute("src",immagini2["Indice3"]);
        
    }catch(e){
		alert("gestoreBottoni2" + e);
                     }
}

function gestoreIndici1(){
    try{
        for(var i in Btn1){
            document.getElementById(i).setAttribute("src",Btn1[i]);
        }
        document.getElementById(this.id).setAttribute("src","loghi/pieno.gif");
    nodoFoto2.setAttribute("src",immagini1[this.id]);
    nodoUno.innerHTML = Desc1[this.id];
    }catch(e){
		alert("gestoreIndici1" + e);
                     }
}

function gestoreIndici2(){
    try{
        for(var i in Btn2){
            document.getElementById(i).setAttribute("src",Btn2[i]);
        }
        document.getElementById(this.id).setAttribute("src","loghi/pieno.gif");
    nodoFoto4.setAttribute("src",immagini2[this.id]);
    nodoDue.innerHTML = Desc2[this.id];
    }catch(e){
		alert("gestoreIndici2" + e);
                     }
}

function gestoreOver(){
	try{
         this.style.cursor="pointer";
    }catch(e){
		alert("gestoreOver" + e);
                     }
                }

function gestoreOut(){
	try{
         this.style.cursor="default";
    }catch(e){
		alert("gestoreOut" + e);
                     }
                }
                
var nodoFoto2;
var nodoFoto4;
var nodoIndice1;
var nodoIndice2;
var nodoBox1;
var nodoBox2;
var nodoUno;
var nodoDue;

function gestoreLoad(){
	try{
        nodoFoto2=document.getElementById("Foto2");
        nodoFoto4=document.getElementById("Foto4");
        nodoBox1=document.getElementById("Box1");
        nodoBox2=document.getElementById("Box2");
        nodoUno=document.getElementById("Uno");
        nodoDue=document.getElementById("Due");
        gestoreBottoni1();
        gestoreBottoni2();
        }catch(e){
		alert("gestoreLoad" + e);
                     }
                         }

window.onload=gestoreLoad;

// contenuti

var immagini1={};
var immagini2={};

immagini1={
	Indice1:'img/7694-031F.jpg',
	Indice2:'img/7694-031R.jpg',
    };
immagini2={
    Indice3:'img/7694-080F.jpg',
    Indice4:'img/7694-080R.jpg',
    };
    
var Btn1={};
var Btn2={};

Btn1={
	  Indice1:"loghi/vuoto.gif",
	  Indice2:"loghi/vuoto.gif",
        };
Btn2={
    Indice3:"loghi/vuoto.gif",
    Indice4:"loghi/vuoto.gif",
    };

var Desc1={};
var Desc2={};

Desc1={
    Indice1:"Cartolina che rappresenta una donna con lettera e bastone, illustrata da Alberto Bianchi (Rimini 1882 - Milano 1969). Pittore, illustratore, cartellonista. Figlio e nipote d'arte. Realizzava vari bozzetti per fortunate serie di cartoline illustrate, caratterizzate dal gusto elegante e frivolo della high society di cui era assiduo frequentatore.",
    Indice2:"La cartolina fu verificata per la censura e ne riporta il timbro sul retro.",
      };
Desc2={
  Indice3:"Dipinto storico di Henry Holiday (1839-1927), Dante incontra Beatrice al Ponte Santa Trinità,soggetti: Dante Alighieri, Beatrice Portinari. Data: 1883, tecnica: olio su tela. Dimensioni:140x199 cm. Si possono vedere il fiume Arno e il Ponte Vecchio di Firenze sullo sfondo.",
  Indice4:"Sul retro troviamo stampati i primi 4 versi della poesia “Tanto gentile e tanto onesta pare” di Dante, seguiti da un breve commento dell'opera. Troviamo anche la stampa: Proprietà Artistica E.Sborgi-Firenze.",
  };