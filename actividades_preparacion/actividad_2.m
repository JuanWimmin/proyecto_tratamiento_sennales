function actividad_2()

        %-------------------------------------ACTIVIDAD #2----------------
    
    % 12. Buscar en la ayuda de Matlab (help) el comando: soundsc.
    % El comando soundsc se utiliza para reproducir una señal de audio a una frecuencia de muestreo específica y ajustar automáticamente el volumen para evitar la distorsión.
    
    % 13. Reproducir cada uno de los archivos. Use el comando soundsc. Tenindo en cuenta
    % el valor de la frecuencia de muestreo a usar.
    soundsc(x1, fs1); % Reproducir x1
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    soundsc(x2, fs2); % Reproducir x2
    pause(duracion_x2 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    soundsc(x3, fs3); % Reproducir x3
    pause(duracion_x3 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    % 14. Reto: ¿Cómo haría para identificar cuál de las dos columnas corresponde al canal
    % izquierdo (L) y cuál al canal derecho (R)?
    % Ayuda: Ponga en cero uno de los dos canales para ayudar en la identificación de L y R
    
    % Para identificar los canales izquierdo y derecho,se puede poner en cero uno de los canales y reproducir el audio resultante.
    % Por ejemplo, si asumimos que x1, x2 y x3 son matrices donde cada columna representa un canal (L y R), podemos hacer lo siguiente:
    %-------------------------------------DIVISION CANALES AUDIO 1 ----------------
    x1_solo_L = [x1(:,1), zeros(size(x1,1),1)]; % Solo canal izquierdo (L) de x1
    x1_solo_R = [zeros(size(x1,1),1), x1(:,2)]; % Solo canal derecho (R) de x1
    soundsc(x1_solo_L, fs1); % Reproducir solo el canal izquierdo de x1
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    soundsc(x1_solo_R, fs1); % Reproducir solo el canal derecho de x1
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    
    %-------------------------------------DIVISION CANALES AUDIO 2 ----------------
    
    x2_solo_L = [x2(:,1), zeros(size(x2,1),1)]; % Solo canal izquierdo (L) de x1
    x2_solo_R = [zeros(size(x2,1),1), x2(:,2)]; % Solo canal derecho (R) de x1
    soundsc(x2_solo_L, fs2); % Reproducir solo el canal izquierdo de x1
    pause(duracion_x2 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    soundsc(x2_solo_R, fs2); % Reproducir solo el canal derecho de x1
    pause(duracion_x2 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    %-------------------------------------DIVISION CANALES AUDIO 3 ----------------
    
    x3_solo_L = [x3(:,1), zeros(size(x3,1),1)]; % Solo canal izquierdo (L) de x1
    x3_solo_R = [zeros(size(x3,1),1), x3(:,2)]; % Solo canal derecho (R) de x1
    soundsc(x3_solo_L, fs3); % Reproducir solo el canal izquierdo de x1
    pause(duracion_x3 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    soundsc(x3_solo_R, fs3); % Reproducir solo el canal derecho de x1
    pause(duracion_x3 + 1); % Pausa para permitir la reproducción completa antes de la siguiente



end