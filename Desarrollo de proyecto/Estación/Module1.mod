MODULE Module1
        CONST robtarget Target_5:=[[-28.75,-221.875,425],[0,0.707106781,0,0.707106781],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[31.25,-221.875,425],[0,0.707106781,0,0.707106781],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_0:=[[-390.352989081,345.323504999,617.602499755],[0.036729233,-0.769016339,0.224591957,-0.597346873],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_1:=[[10.580526231,345.323509175,617.602503568],[0.396416501,0.702587169,0.384966146,0.44835956],[1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_2:=[[30.118499272,290.328983403,602.616663519],[0.258418789,0.681263439,-0.456625437,0.51048317],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_3:=[[30.118503807,290.32899798,602.616712274],[0.034631434,-0.818597309,0.050250854,-0.571116417],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_6:=[[11.25,-251.875,425],[0,0.707106781,0,0.707106781],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_7:=[[11.25,-191.875,425],[0,0.707106781,0,0.707106781],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2:=[[31.25,-221.875,425],[0,0.707106781,0,0.707106781],[-2,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_5_2:=[[-28.75,-221.875,425],[0,0.707106781,0,0.707106781],[-2,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_3_2:=[[30.118503807,290.32899798,602.616712274],[0.034631434,-0.818597309,0.050250854,-0.571116417],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: ManuelEsteban
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    VAR num contador_sin_maquinar:=0;
    VAR num contador_maquinadas:=0;
    VAR bool continue := TRUE;
    CONST robtarget Target_25:=[[-39.985,-40.086,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[-39.985,-40.086,53.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_0_3:=[[-58.912153108,147.259134131,584.239861581],[0.653281498,-0.65328152,0.270598033,0.270597938],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_35:=[[-39.956,-119.973,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[-39.956,-119.973,53.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_45:=[[-39.99,-200.054,103.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[-39.99,-200.054,53.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_55:=[[-119.955,-40.038,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[-119.955,-40.038,53.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_65:=[[-119.958,-120.121,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[-119.958,-120.121,53.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_75:=[[-119.992,-200.079,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[-119.992,-200.079,53.016],[0,-0.707106781,0.707106781,0],[0,1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_85:=[[-200.003,-40.005,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[-200.003,-40.005,53.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_95:=[[-200.003,-120.004,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[-200.003,-120.004,53.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_105:=[[-200.003,-200.005,103.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110:=[[-200.003,-200.005,53.016],[0,-0.707106781,0.707106781,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_0_4:=[[-390.352989081,345.323504999,617.602499755],[0.036729233,-0.769016339,0.224591957,-0.597346873],[0,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_25_2:=[[-39.985,-40.086,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[-39.985,-40.086,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_35_2:=[[-39.956,-119.973,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40_2:=[[-39.956,-119.973,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_45_2:=[[-39.99,-200.054,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50_2:=[[-39.99,-200.054,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_55_2:=[[-119.955,-40.038,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[-119.955,-40.038,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_65_2:=[[-119.958,-120.121,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2:=[[-119.958,-120.121,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_75_2:=[[-119.992,-200.079,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2:=[[-119.992,-200.079,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_85_2:=[[-200.003,-40.005,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2:=[[-200.003,-40.005,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_95_2:=[[-200.003,-120.004,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100_2:=[[-200.003,-120.004,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_105_2:=[[-200.003,-200.005,103.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110_2:=[[-200.003,-200.005,53.016],[0,-0.707106781,0.707106781,0],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_112:=[[-104.999986788,268.411364612,-142.18870844],[0.000000009,-0.000000017,-0.707106759,0.707106803],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_115:=[[-105,70,-267],[0,0,-0.707106781,0.707106781],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_120:=[[-105,5,-267],[0,0,-0.707106781,0.707106781],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    PROC main()
        SetDO Attach_pieza_acople,0;
        SetDO Detach_pieza_acople,1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Start_torno_1,0;
        SetDO Start_torno_2,0;
        SetDO Start_giro,0;
        SetDO Tool_acople_activa,0;
        SetDO Tool_desacople_activa,0;
        WHILE TRUE DO        
            restartObjetivos;
            Configurar_inicial;
            !Add your code here
            Home2_a_home1;
            WaitTime 1;
            IF SinMaquinar1 = 1 THEN
                Agarrar_pieza_1;
            ELSEIF SinMaquinar2 = 1 THEN
                Agarrar_pieza_2;
            ELSEIF SinMaquinar3 = 1 THEN
                Agarrar_pieza_3;            
            ELSEIF SinMaquinar4 = 1 THEN
                Agarrar_pieza_4;
            ELSEIF SinMaquinar5 = 1 THEN
                Agarrar_pieza_5;
            ELSEIF SinMaquinar6 = 1 THEN
                Agarrar_pieza_6;
            ELSEIF SinMaquinar7 = 1 THEN
                Agarrar_pieza_7;
            ELSEIF SinMaquinar8 = 1 THEN
                Agarrar_pieza_8;
            ELSEIF SinMaquinar9 = 1 THEN
                Agarrar_pieza_9;
            ELSE
                continue := FALSE;
            ENDIF
            
            restartObjetivos;
            IF continue = FALSE THEN
                IF Torno_2_has_mounted = 1 THEN
                    Ir_a_torno_2;
                ENDIF
                
                IF Tool_desacople_activa = 1 THEN
                    IF Maquinada9 = 0 THEN
                        Terminar_pieza_9;
                    ELSEIF Maquinada8 = 0 THEN
                        Terminar_pieza_8;
                    ELSEIF Maquinada7 = 0 THEN
                        Terminar_pieza_7;
                    ELSEIF Maquinada6 = 0 THEN
                        Terminar_pieza_6;
                    ELSEIF Maquinada5 = 0 THEN
                        Terminar_pieza_5;
                    ELSEIF Maquinada4 = 0 THEN
                        Terminar_pieza_4;
                    ELSEIF Maquinada3 = 0 THEN
                        Terminar_pieza_3;
                    ELSEIF Maquinada2 = 0 THEN
                        Terminar_pieza_2;
                    ELSEIF Maquinada1 = 0 THEN
                        Terminar_pieza_1;
                    ENDIF
                ENDIF
            ELSE
                Ir_a_torno_1;
                IF Tool_desacople_activa = 1 THEN
                    Girar_pieza;
                    Ir_a_torno_2;
                    IF Tool_desacople_activa = 1 THEN
                        IF Maquinada9 = 0 THEN
                            Terminar_pieza_9;
                        ELSEIF Maquinada8 = 0 THEN
                            Terminar_pieza_8;
                        ELSEIF Maquinada7 = 0 THEN
                            Terminar_pieza_7;
                        ELSEIF Maquinada6 = 0 THEN
                            Terminar_pieza_6;
                        ELSEIF Maquinada5 = 0 THEN
                            Terminar_pieza_5;
                        ELSEIF Maquinada4 = 0 THEN
                            Terminar_pieza_4;
                        ELSEIF Maquinada3 = 0 THEN
                            Terminar_pieza_3;
                        ELSEIF Maquinada2 = 0 THEN
                            Terminar_pieza_2;
                        ELSEIF Maquinada1 = 0 THEN
                            Terminar_pieza_1;
                        ENDIF
                    ENDIF
                ENDIF
            ENDIF
            
        ENDWHILE
        

    ENDPROC
    PROC Configurar_inicial()
        IF SinMaquinar1 = 1 THEN
            SetDO Pieza_1_objetivo,1;
        ELSEIF SinMaquinar2 = 1 THEN
            SetDO Pieza_2_objetivo,1;
        ELSEIF SinMaquinar3 = 1 THEN
            SetDO Pieza_3_objetivo,1;
        ELSEIF SinMaquinar4 = 1 THEN
            SetDO Pieza_4_objetivo,1;
        ELSEIF SinMaquinar5 = 1 THEN
            SetDO Pieza_5_objetivo,1;
        ELSEIF SinMaquinar6 = 1 THEN
            SetDO Pieza_6_objetivo,1;
        ELSEIF SinMaquinar7 = 1 THEN
            SetDO Pieza_7_objetivo,1;
        ELSEIF SinMaquinar8 = 1 THEN
            SetDO Pieza_8_objetivo,1;
        ELSEIF SinMaquinar9 = 1 THEN
            SetDO Pieza_9_objetivo,1;
        ELSE
            continue := FALSE;
        ENDIF
        
        IF Maquinada9 = 0 THEN
            contador_maquinadas := 9;
        ELSEIF Maquinada8 = 0 THEN
            contador_maquinadas := 8;
        ELSEIF Maquinada7 = 0 THEN
            contador_maquinadas := 7;
        ELSEIF Maquinada6 = 0 THEN
            contador_maquinadas := 6;
        ELSEIF Maquinada5 = 0 THEN
            contador_maquinadas := 5;
        ELSEIF Maquinada4 = 0 THEN
            contador_maquinadas := 4;
        ELSEIF Maquinada3 = 0 THEN
            contador_maquinadas := 3;
        ELSEIF Maquinada2 = 0 THEN
            contador_maquinadas := 2;
        ELSEIF Maquinada1 = 0 THEN
            contador_maquinadas := 1;
        ELSE
            continue := FALSE;
        ENDIF
    ENDPROC
    
    PROC definirObjetivo()
        IF contador_sin_maquinar = 1 THEN
            SetDO Pieza_1_objetivo,1;
        ELSEIF contador_sin_maquinar = 2 THEN
            SetDO Pieza_2_objetivo,1;
        ELSEIF contador_sin_maquinar = 3 THEN
            SetDO Pieza_3_objetivo,1;
        ELSEIF contador_sin_maquinar = 4 THEN
            SetDO Pieza_4_objetivo,1;
        ELSEIF contador_sin_maquinar = 5 THEN
            SetDO Pieza_5_objetivo,1;
        ELSEIF contador_sin_maquinar = 6 THEN
            SetDO Pieza_6_objetivo,1;
        ELSEIF contador_sin_maquinar = 7 THEN
            SetDO Pieza_7_objetivo,1;
        ELSEIF contador_sin_maquinar = 8 THEN
            SetDO Pieza_8_objetivo,1;
        ELSEIF contador_sin_maquinar = 9 THEN
            SetDO Pieza_9_objetivo,1;
        ENDIF
    ENDPROC
    
    PROC restartObjetivos()
        SetDO Pieza_1_objetivo,0;
        SetDO Pieza_2_objetivo,0;
        SetDO Pieza_3_objetivo,0;
        SetDO Pieza_4_objetivo,0;
        SetDO Pieza_5_objetivo,0;
        SetDO Pieza_6_objetivo,0;
        SetDO Pieza_7_objetivo,0;
        SetDO Pieza_8_objetivo,0;
        SetDO Pieza_9_objetivo,0;
    ENDPROC
    PROC Ir_a_torno_1()
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
        MoveJ Target_3,v400,z100,Tool_desacople\WObj:=Workobject_3;
        MoveJ Target_5,v400,z5,Tool_desacople\WObj:=Workobject_3;
        IF Torno_1_has_mounted = 1 THEN
            Quitar_pieza_1;
        ENDIF
        IF Tool_acople_activa = 1 THEN
            Refrigerar_1;
            Colocar_pieza_1;
        ENDIF
        
        Volver_1;
    ENDPROC
    PROC Quitar_pieza_1()
        MoveL Target_10,v50,z5,Tool_desacople\WObj:=Workobject_3;
        WaitTime 1;
        SetDO Attach_pieza_desacople,1;
        SetDO Detach_pieza_desacople,0;
        SetDO Tool_desacople_activa,1;
        SetDO Start_torno_1,0;
        MoveL Target_5,v50,z5,Tool_desacople\WObj:=Workobject_3;
    ENDPROC
    PROC Refrigerar_1()
        MoveJ Target_5,v400,z100,Tool_desacople\WObj:=Workobject_3;
        MoveJ Target_5,v400,z100,Refrigerator\WObj:=Workobject_3;
        MoveL Target_10,v50,z5,Refrigerator\WObj:=Workobject_3;
        MoveL Target_5,v50,z5,Refrigerator\WObj:=Workobject_3;
        MoveL Target_10,v50,z5,Refrigerator\WObj:=Workobject_3;
        MoveL Target_5,v50,z5,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Colocar_pieza_1()
        MoveJ Target_5,v400,z100,Tool_acople\WObj:=Workobject_3;
        MoveL Target_10,v50,z5,Tool_acople\WObj:=Workobject_3;
        WaitTime 1;
        SetDO Attach_pieza_acople,0;
        SetDO Detach_pieza_acople,1;
        SetDO Tool_acople_activa,0;
        SetDO Start_torno_1,1;
        MoveL Target_5,v50,z5,Tool_acople\WObj:=Workobject_3;
    ENDPROC
    PROC Volver_1()
        MoveJ Target_5,v400,z100,Tool_desacople\WObj:=Workobject_3;
        MoveJ Target_3,v400,z100,Tool_desacople\WObj:=Workobject_3;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Quitar_pieza_2()
        MoveL Target_10_2,v50,z5,Tool_desacople\WObj:=Workobject_4;
        WaitTime 1;
        SetDO Attach_pieza_desacople,1;
        SetDO Detach_pieza_desacople,0;
        SetDO Tool_desacople_activa,1;
        SetDO Start_torno_2,0;
        MoveL Target_5_2,v50,z5,Tool_desacople\WObj:=Workobject_4;
    ENDPROC
    PROC Refrigerar_2()
        MoveJ Target_5_2,v400,z100,Tool_desacople\WObj:=Workobject_4;
        MoveJ Target_5_2,v400,z100,Refrigerator\WObj:=Workobject_4;
        MoveL Target_10_2,v50,z5,Refrigerator\WObj:=Workobject_4;
        MoveL Target_5_2,v50,z5,Refrigerator\WObj:=Workobject_4;
        MoveL Target_10_2,v50,z5,Refrigerator\WObj:=Workobject_4;
        MoveL Target_5_2,v50,z5,Refrigerator\WObj:=Workobject_4;
    ENDPROC
    PROC Colocar_pieza_2()
        MoveJ Target_5_2,v400,z100,Tool_acople\WObj:=Workobject_4;
        MoveL Target_10_2,v50,z5,Tool_acople\WObj:=Workobject_4;
        WaitTime 1;
        SetDO Attach_pieza_acople,0;
        SetDO Detach_pieza_acople,1;
        SetDO Tool_acople_activa,0;
        SetDO Start_torno_2,1;
        MoveL Target_5_2,v50,z5,Tool_acople\WObj:=Workobject_4;
    ENDPROC
    PROC Ir_a_torno_2()
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
        MoveJ Target_3_2,v400,z100,Tool_desacople\WObj:=Workobject_4;
        MoveJ Target_5_2,v400,z100,Tool_desacople\WObj:=Workobject_4;
        IF Torno_2_has_mounted = 1 THEN
            Quitar_pieza_2;
        ENDIF        
        
        IF Tool_acople_activa = 1 THEN
            Refrigerar_2;
            Colocar_pieza_2;
        ENDIF
        
        Volver_2;
    ENDPROC
    PROC Volver_2()
        MoveJ Target_5_2,v400,z100,Tool_desacople\WObj:=Workobject_4;
        MoveJ Target_3_2,v400,z100,Tool_desacople\WObj:=Workobject_4;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Agarrar_pieza_1()
        MoveJ Target_25,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_30,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_25,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_2()
        MoveJ Target_35,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_40,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_35,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_3()
        MoveJ Target_45,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_50,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_45,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_4()
        MoveJ Target_55,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_60,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_55,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_5()
        MoveJ Target_65,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_70,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_65,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_6()
        MoveJ Target_75,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_80,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_75,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_7()
        MoveJ Target_85,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_90,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_85,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_8()
        MoveJ Target_95,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_100,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_95,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Agarrar_pieza_9()
        MoveJ Target_105,v400,z100,Tool_acople\WObj:=Workobject_1;
        MoveL Target_110,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        MoveL Target_105,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_0_4,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Terminar_pieza_1()
        MoveJ Target_25_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_30_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_25_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_2()
        MoveJ Target_35_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_40_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_35_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_3()
        MoveJ Target_45_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_50_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_45_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_4()
        MoveJ Target_55_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_60_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_55_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_5()
        MoveJ Target_65_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_70_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_65_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_6()
        MoveJ Target_75_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_80_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_75_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_7()
        MoveJ Target_85_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_90_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_85_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_8()
        MoveJ Target_95_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_100_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_95_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Terminar_pieza_9()
        MoveJ Target_105_2,v400,z100,Tool_desacople\WObj:=Workobject_2;
        MoveL Target_110_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        MoveL Target_105_2,v50,z5,Tool_desacople\WObj:=Workobject_2;
        MoveJ Target_0_3,v400,z100,Refrigerator\WObj:=Workobject_2;
    ENDPROC
    PROC Home2_a_home1()
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
    PROC Girar_pieza()
        MoveJ Target_112,v400,z100,Tool_desacople\WObj:=Workobject_1;
        MoveJ Target_115,v400,z100,Tool_desacople\WObj:=Workobject_1;
        MoveL Target_120,v50,z5,Tool_desacople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_desacople,0;
        SetDO Detach_pieza_desacople,1;
        SetDO Tool_desacople_activa,0;
        SetDO Start_giro,1;
        MoveL Target_115,v50,z5,Tool_desacople\WObj:=Workobject_1;
        MoveJ Target_115,v400,z100,Tool_acople\WObj:=Workobject_1;
        WaitTime 3;
        MoveL Target_120,v50,z5,Tool_acople\WObj:=Workobject_1;
        WaitTime 1;
        SetDO Attach_pieza_acople,1;
        SetDO Detach_pieza_acople,0;
        SetDO Tool_acople_activa,1;
        SetDO Start_giro,0;
        MoveL Target_115,v50,z5,Tool_acople\WObj:=Workobject_1;
        MoveJ Target_112,v400,z100,Tool_desacople\WObj:=Workobject_1;
        MoveJ Target_0,v400,z100,Refrigerator\WObj:=Workobject_3;
    ENDPROC
ENDMODULE