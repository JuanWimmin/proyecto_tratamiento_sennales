

function actividad_1()

    
%-------------------------------------ACTIVIDAD #1----------------
    
    %importacion de la senal
[x1,fs1] = audioread('Respuesta Impulso.aac');
    [x2,fs2] = audioread('Odio la luz al oido.aac');
    [x3,fs3] = audioread('Audio-Escalamiento.aac');
    
    % 5. Compare los valores de fs1, fs2 y fs3.
    disp(['fs1: ', num2str(fs1)]);
    disp(['fs2: ', num2str(fs2)]);
    disp(['fs3: ', num2str(fs3)]);
    fprintf('Valor de fs1: %d\n', fs1);
    fprintf('Valor de fs2: %d\n', fs2);
    fprintf('Valor de fs3: %d\n', fs3);
    % 6. Compare el tamaño de x1, x2 y x3. Use el comando size.
    disp(['Tamaño de x1: ', num2str(size(x1))]);
    disp(['Tamaño de x2: ', num2str(size(x2))]);
    disp(['Tamaño de x3: ', num2str(size(x3))]);
    
    % 7. Comprobar si la relación entre duración del audio, número de muestras y frecuencia
    % de muestreo se cumple.
    duracion_x1 = length(x1) / fs1;
    duracion_x2 = length(x2) / fs2;
    duracion_x3 = length(x3) / fs3;
    disp(['Duración de x1: ', num2str(duracion_x1)]);
    disp(['Duración de x2: ', num2str(duracion_x2)]);
    disp(['Duración de x3: ', num2str(duracion_x3)]);
    
    % 8. Graficar las señales de audio (las variables x1, x2 y x3) en la misma imagen. Use el
    % comando plot.
    t1 = (0:length(x1)-1) / fs1; % Dominio de tiempo para x1
    t2 = (0:length(x2)-1) / fs2; % Dominio de tiempo para x2
    t3 = (0:length(x3)-1) / fs3; % Dominio de tiempo para x3
    
    
    %****************************GRAFICA# 1 SIN DOMINIO EN EL TIEMPO*************
    figure;
    
    hold on;
    plot(x1);
    plot(x2);
    plot(x3);
    hold off;
    xlabel('Muestras');
    ylabel('Amplitud');
    title('Señales de audio sin dominio en el tiempo');
    legend('Respuesta Impulso', 'Odio la luz al oído', 'Audio Escalamiento');
    
    %****************************GRAFICA# 2 DOMINIO EN EL TIEMPO*************
    figure;
    hold on;
    plot(t1, x1); % Señal x1 en rojo
    plot(t2, x2); % Señal x2 en azul
    plot(t3, x3); % Señal x3 en verde
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    title('Señales de audio - Dominio en el tiempo');
    legend('Respuesta Impulso', 'Odio la luz al oído', 'Audio Escalamiento');
    hold off;



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


  %-------------------------------------ACTIVIDAD #4  ----------------
    % 18. Buscar en la ayuda de Matlab (help) los comandos: fliplr y flipud.
    % Los comandos fliplr y flipud se utilizan para invertir matrices horizontalmente (izquierda a derecha) y verticalmente (arriba a abajo), respectivamente.
    
    % 19. Aplicar los comandos fliplr y flipud, a dicha matriz. Observe el efecto que produce
    % el uso de estos comandos en dicha matriz.
    
    x1_modificada = x1;
    x1_modificada(:, 2) = 0; % Poner la segunda columna (canal derecho) en cero
    
    % 21. Aplicar sobre esta nueva variable los comandos fliplr y flipud, creando una nueva
    % variable para cada operación aplicada.
    
    x1_modificada_invertida_horizontal = fliplr(x1_modificada);
    x1_modificada_invertida_vertical = flipud(x1_modificada);
    figure;
    hold on;
    plot(t1, x1_modificada_invertida_horizontal); % Señal x1 en rojo
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    title('Señal de audio Modificada horizontal - Dominio en el tiempo');
    legend('x1 NORMAL');
    hold off;
    figure;
    hold on;
    plot(t1, x1); % Señal x1 en rojo
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    title('Señal de audio Modificada horizontal - Dominio en el tiempo');
    legend('x1_modificada_invertida_horizontal');
    hold off;
    figure;
    hold on;
    plot(t1, x1_modificada_invertida_vertical); % Señal x1 en rojo
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    title('Señal de audio Modificada vertical - Dominio en el tiempo');
    legend('x1_modificada_invertida_vertical');
    hold off;
    
    
    soundsc(x1_modificada_invertida_horizontal, fs1); % Reproducir la variable de audio modificada
    pause(duracion_x1 + 1); % Pausa para permitir la reproducción completa antes de la siguiente
    soundsc(x1_modificada_invertida_vertical, fs1); % Reproducir la variable de audio modificada
    pause(duracion_x1 + 1); 
    
    audiowrite('x1_modificada_invertida_horizontal.wav', x1_modificada_invertida_horizontal, fs1);
    audiowrite('x1_modificada_invertida_vertical.wav', x1_modificada_invertida_vertical, fs1);

    

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