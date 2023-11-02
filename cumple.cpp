#include <iostream>
#include <unistd.h>
#include <SFML/Audio.hpp>

using namespace std;
using namespace sf;


const string NOMBRE = "TETA";
const string NOMBRE2 = "ANTO";

int main (){
	
	//int contador  = 0;
	//bool primer_caso = true;
	Music music;
	
	if (!music.openFromFile("./feliz-cumpleanos-feliz-.mp3")) {
        // Manejar errores de carga de la canción
        return 1;
    	}
    	
    	music.play();
	
	while (music.getStatus() == sf::Music::Playing){
		
		cout<<"Cumpleaños feliz"<<endl;
		sleep(5);
		cout<<"Cumpleaños feliz"<<endl;
		sleep(5);
		cout<<"Te deseamos todos..."<<endl;
		sleep(7);
		cout<<"CUMPLEAÑOS FELIZ"<<endl;
		sleep(7);
		cout<<"MUCHAS FELICIDADESSSSS "+NOMBRE+"\n";
		sleep(9); 
		
	
	
	
	}
	
	return 0;




}
//g++ -std=c++11 -Wall -o cumpleanos build/cumpleanos.o -L./SFML-2.6.0/lib -lsfml-audio -lsfml-system -Wl,-rpath,./SFML-2.6.0/lib -L/usr/lib/x86_64-linux-gnu -lFLAC
