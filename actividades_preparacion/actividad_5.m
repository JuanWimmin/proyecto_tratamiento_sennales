function actividad_5()

    %-------------------------------------ACTIVIDAD #5  ----------------
    % 24. Leer uno de los archivos de audio de Brightspace correspondientes a la respuesta
    [x4,fs4] = audioread('RESPUESTA_IMPULSO2.wav');
    
    
    % 25. Indicar el tamaño de la variable correspondiente a la respuesta impulso.
    tamano_respuesta_impulso = size(x4);
    disp(['Tamaño de la respuesta impulso: ', num2str(tamano_respuesta_impulso)]);
    
    % 26. Buscar en la ayuda de Matlab (help) el comando: conv.
    % El comando conv se utiliza para realizar la convolución entre dos señales.
    
    x1_en_vector = x1(:); % Convertir respuesta_impulso a un vector columna si es una matriz
    x4_en_vector = x4(:); 
    
    [resultado_conv] = conv(x1_en_vector, x4_en_vector);
    duracion_conv = length(resultado_conv) / fs1;
    % 28. Indicar el tamaño de esta nueva variable. Compare y encuentre la relación de esta
    tamano_resultado_conv = size(resultado_conv);
    disp(['Tamaño del resultado de la convolución: ', num2str(tamano_resultado_conv)]);
    soundsc(resultado_conv, fs1);
    pause(duracion_conv + 1); % Pausa para permitir la reproducción completa antes de la siguiente



end