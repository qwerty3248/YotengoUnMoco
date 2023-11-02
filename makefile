# Nombre del archivo ejecutable
TARGET = mi_programa cumpleanos

# Compilador C++
CXX = g++

# Opciones de compilación y enlace
CXXFLAGS = -std=c++11 -Wall -I./SFML-2.6.0/include
LDFLAGS = -L./SFML-2.6.0/lib -L/usr/lib/x86_64-linux-gnu
LIBS = -lsfml-audio -lsfml-system -lFLAC

# Directorio de archivos de origen
SRC_DIR = .

# Lista de archivos de origen
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)

# Directorio de archivos de objetos generados
BUILD_DIR = build

# Lista de archivos de objetos generados a partir de los archivos de origen
OBJECTS = $(patsyndect $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

# Regla para compilar el programa
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS) $(LIBS)

# Regla para compilar cada archivo de origen en un archivo de objeto
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

.PHONY: clean

clean:
	rm -rf $(BUILD_DIR) $(TARGET)

all: $(TARGET)

