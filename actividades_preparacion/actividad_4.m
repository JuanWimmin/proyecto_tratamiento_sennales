function actividad_4()
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
    
end