[AudioEscalamiento,frecuenciaEsc] = audioread('Audio-Escalamiento.aac');
    % Presentar las opciones al usuario
    fprintf('Opciones de velocidad de reproducción:\n');
    fprintf('1. 0.5 veces la velocidad normal.\n');
    fprintf('2. 0.8 veces la velocidad normal.\n');
    fprintf('3. Velocidad normal.\n');
    fprintf('4. 1.2 veces la velocidad normal.\n');
    fprintf('5. 1.5 veces la velocidad normal.\n');
    fprintf('6. 2 veces la velocidad normal.\n');
    
    % Solicitar al usuario que elija una opción
    opcion = input('Por favor ingrese el número de la opción deseada: ');
    
    % Aplicar el escalamiento en el tiempo según la opción seleccionada
    switch opcion
        case 1
            velocidad = 0.5;
        case 2
            velocidad = 0.8;
        case 3
            velocidad = 1;
        case 4
            velocidad = 1.2;
        case 5
            velocidad = 1.5;
        case 6
            velocidad = 2;
        otherwise
            error('Opción no válida.');
    end
    %frecuenciaEsc1 = squeeze(frecuenciaEsc);
    %AudioEscalamiento = AudioEscalamiento(:);
    %frecuenciaEsc = frecuenciaEsc(:);
    duracion_esc = length(AudioEscalamiento) / frecuenciaEsc;
    nueva_fs = frecuenciaEsc * velocidad;
    % Aplicar el escalamiento en el tiempo
    %x_esc = resample(AudioEscalamiento, nueva_fs, frecuenciaEsc);
    
    % Reproducir la señal de audio resultante
    sound(AudioEscalamiento, nueva_fs);
    pause(duracion_esc+ 1); % Pausa para permitir la reproducción completa antes de la siguiente