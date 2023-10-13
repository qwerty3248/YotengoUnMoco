#include <iostream>
#include <unistd.h>
#include <SFML/Audio.hpp>

using namespace std;
using namespace sf;




int main (){
	
	int contador  = 0;
	bool primer_caso = true;
	Music music;
	
	if (!music.openFromFile("./moquito.mp3")) {
        // Manejar errores de carga de la canción
        return 1;
    	}
    	
    	music.play();
	
	while (music.getStatus() == sf::Music::Playing){
	
		if (primer_caso){
			
			cout<<"Les presentamos la cancion de MOOOOOOOCO"<<endl;
			
		
			primer_caso = false;
		
		}else{
			switch(contador){
		
			case 0:
				cout<<"Yo tengo un moco"<<endl;
				contador++;
				break;
			case 1:
				cout<<"Lo saco poco a poco"<<endl;
				contador++;
				break;
			case 2: 
				cout<<"Lo redondeo"<<endl;
				contador++;
				break;
			case 3:
				cout<<"Lo miro con deseo"<<endl;
				contador++;
				break;
			case 4: 
				cout<<"Yo me lo como, como me sabe a poco"<<endl;
				contador++;
				break;
			case 5:
				cout<<"Sacamos otro moco y volvemos a empezar"<<endl;
				contador = 0;
				break;
			default:
				cerr<<"Error de la cancion"<<endl;
				break;						
		
		
		}
		
		
		
		}
		sleep(2);
	
	
	
	}




}




