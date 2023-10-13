# Nombre del archivo ejecutable
TARGET = mi_programa

# Compilador C++
CXX = g++

# Opciones de compilación y enlace
CXXFLAGS = -std=c++11 -Wall

# Ruta a las bibliotecas de SFML y FLAC
SFML_DIR = ./SFML-2.6.0
FLAC_DIR = /usr/lib/x86_64-linux-gnu

# Opciones de enlace (incluye las bibliotecas necesarias y especifica la ruta)
LIBS = -L$(SFML_DIR)/lib -lsfml-audio -lsfml-system -Wl,-rpath,$(SFML_DIR)/lib -L$(FLAC_DIR) -lFLAC

# Directorio de archivos de origen
SRC_DIR = .

# Lista de archivos de origen
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

# Directorio de archivos de objetos generados
BUILD_DIR = build

# Lista de archivos de objetos generados a partir de los archivos de origen
OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

# Regla para compilar el programa
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS)

# Regla para compilar cada archivo de origen en un archivo de objeto
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean

clean:
	rm -rf $(BUILD_DIR) $(TARGET)

all: $(TARGET)

