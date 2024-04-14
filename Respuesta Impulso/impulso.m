%-----respuesta impulso



function impulso()
    addpath('main\');

    current_state = menu('Seleccione una opción', 'Respuesta impulso 1','Respuesta impulso 2','Respuesta impulso 3','Respuesta impulso 4' ,'Volver al menú principal');
    
    switch current_state
        case 1
            impulso1 =audioread('MMR.wav');
            respuesta_impulso(impulso1);
            impulso();
        case 2
            impulso2 =audioread('SLIT_FV_E001_M2S.wav');
            respuesta_impulso(impulso2);
            impulso();
        case 3
            impulso3 =audioread('SLIT_FV_E001_M2S.wav');
            respuesta_impulso(impulso3);
            impulso();
        case 4
            impulso4 =audioread('SLIT_FV_E001_M2S.wav');
            respuesta_impulso(impulso4);
            impulso();
        case 5
           state_holder();
    end
end

    function respuesta_impulso(sennal_impulso)

        [audio, fs1] = audioread('Respuesta impulso.aac');
        y_impulso = conv(audio, sennal_impulso);
        sound(y_impulso,fs1); % Reproduce la señal resultante

    end


