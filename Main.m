%-----main----

addpath('actividades_preparacion\');
addpath('Respuesta Impulso\');
addpath('Inversión en el tiempo\');
addpath('Escalamiento\');


main();

%-----------------------

function main()

state_holder(); %llamado del menú

end

function state_holder()
    
    state = menu('Seleccione una opción: ','Ejecución actividades preparación' ,'Escalamiento', 'Inversión en tiempo','Respuesta impulso' );
    
        switch state 
            case 1
                actividades_previas();
                main();
            case 2
                EscalamientoConOpciones();
                main();
            case 3
                InversionTiempoV2();
                main();
            case 4 
                impulso();
                main();
        end
end       
       
