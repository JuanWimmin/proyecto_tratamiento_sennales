function actividad_3()
        %-------------------------------------ACTIVIDAD #3----------------
    %-------------------------------------PRIMER AUDIO ----------------
    % 15. Variar el valor de la frecuencia de muestreo, multiplicando dicho valor por 0,7 y por 1,3, y reproduzca el sonido.
    
    soundsc(x1, fs1 * 0.7); % Reproducir x1 con frecuencia de muestreo reducida en un 30%
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    soundsc(x1, fs1 * 1.3); % Reproducir x1 con frecuencia de muestreo aumentada en un 30%
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    % 16. Buscar en la ayuda de Matlab (help) el comando: audiowrite.
    
    % 17. Crear los archivos de audio correspondientes a la reproducción de las variables con velocidades de reproducción 0,7 y 1,3 veces de la velocidad normal.
    
    % Escribir archivo de audio con velocidad de reproducción 0.7 veces la velocidad normal
    audiowrite('x1_0.7x_speed.wav', x1, fs1 * 0.7);
    
    % Escribir archivo de audio con velocidad de reproducción 1.3 veces la velocidad normal
    audiowrite('x1_1.3x_speed.wav', x1, fs1 * 1.3);
    
    %-------------------------------------SEGUNDO AUDIO  ----------------
    
    soundsc(x2, fs2 * 0.7); % Reproducir x2 con frecuencia de muestreo reducida en un 30%
    pause(duracion_x2 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    soundsc(x2, fs2 * 1.3); % Reproducir x2 con frecuencia de muestreo aumentada en un 30%
    pause(duracion_x2 + 1); % Pausa para permitir la reproducción completa antes de la siguienteaudiowrite('x1_0.7x_speed.aac', x1, fs1 * 0.7);
    
    audiowrite('x2_0.7x_speed.wav', x2, fs2 * 0.7);
    % Escribir archivo de audio con velocidad de reproducción 1.3 veces la velocidad normal
    audiowrite('x2_1.3x_speed.wav', x2, fs2 * 1.3);
    
    %-------------------------------------TERCER AUDIO ----------------
    
    soundsc(x3, fs3 * 0.7); % Reproducir x3 con frecuencia de muestreo reducida en un 30%
    pause(duracion_x3 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    soundsc(x3, fs3 * 1.3); % Reproducir x3 con frecuencia de muestreo aumentada en un 30%
    pause(duracion_x3 + 1); % Pausa para permitir la reproducción completa antes de la siguienteaudiowrite('x1_0.7x_speed.aac', x1, fs1 * 0.7);
    
    audiowrite('x3_0.7x_speed.wav', x3, fs3 * 0.7);
    % Escribir archivo de audio con velocidad de reproducción 1.3 veces la velocidad normal
    audiowrite('x3_1.3x_speed.wav', x3, fs3 * 1.3);
    
    pwd % Para mostrar el directorio de trabajo actual
    dir % Para mostrar los archivos en el directorio de trabajo actual


end