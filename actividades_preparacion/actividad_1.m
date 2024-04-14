

function actividad_1()

    addpath('resources-audio');
%-------------------------------------ACTIVIDAD #1----------------
    
    %importacion de la senal
    [x1,fs1] = audioread('Respuesta impulso.aac');
    [x2,fs2] = audioread('Odio la luz al oído.aac');
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
end