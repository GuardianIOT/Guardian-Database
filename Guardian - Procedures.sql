 /* 
 ===========================
         FUNCTIONS
 ===========================
 */

CREATE OR REPLACE FUNCTION validar_email(p_email IN VARCHAR2) RETURN BOOLEAN IS
BEGIN
  IF REGEXP_LIKE(p_email, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$') THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END validar_email;


CREATE OR REPLACE FUNCTION validar_telefone(p_telefone IN VARCHAR2) RETURN BOOLEAN IS
BEGIN
  IF REGEXP_LIKE(p_telefone, '^\(\d{2}\) \d{4}-\d{4}$') THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END validar_telefone;
 
 /* 
 ===========================
         PROCEDURES
 ===========================
 */
 
CREATE OR REPLACE PROCEDURE insert_gua_proprietaria(
    p_razao_social       IN VARCHAR2,
    p_cnpj               IN VARCHAR2,
    p_endereco_principal IN VARCHAR2 DEFAULT NULL,
    p_telefone_principal IN VARCHAR2 DEFAULT NULL,
    p_email_contato      IN VARCHAR2 DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_PROPRIETARIA (
        id_proprietaria,
        razao_social,
        cnpj,
        endereco_principal,
        telefone_principal,
        email_contato
    ) VALUES (
        GUA_PROPRIETARIA_SEQ.NEXTVAL,
        p_razao_social,
        p_cnpj,
        p_endereco_principal,
        p_telefone_principal,
        p_email_contato
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_usuario(
    p_nome         IN VARCHAR2,
    p_sobrenome    IN VARCHAR2 DEFAULT NULL,
    p_cargo        IN VARCHAR2,
    p_cpf          IN VARCHAR2,
    p_email        IN VARCHAR2,
    p_senha        IN VARCHAR2,
    p_telefone     IN VARCHAR2,
    p_id_proprietaria IN INT
) AS
BEGIN
    INSERT INTO GUA_USUARIO (
        id_usuario,
        nome,
        sobrenome,
        cargo,
        cpf,
        email,
        senha,
        telefone,
        id_proprietaria
    ) VALUES (
        GUA_USUARIO_SEQ.NEXTVAL,
        p_nome,
        p_sobrenome,
        p_cargo,
        p_cpf,
        p_email,
        p_senha,
        p_telefone,
        p_id_proprietaria
    );
    COMMIT;
END;
/


CREATE OR REPLACE PROCEDURE insert_gua_localizacao(
    p_cidade    IN VARCHAR2,
    p_estado    IN VARCHAR2,
    p_regiao    IN VARCHAR2,
    p_pais      IN VARCHAR2,
    p_latitude  IN NUMBER,
    p_longitude IN NUMBER
) AS
BEGIN
    INSERT INTO GUA_LOCALIZACAO (
        id_localizacao,
        cidade,
        estado,
        regiao,
        pais,
        latitude,
        longitude
    ) VALUES (
        GUA_LOCALIZACAO_SEQ.NEXTVAL,
        p_cidade,
        p_estado,
        p_regiao,
        p_pais,
        p_latitude,
        p_longitude
    );
    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_parque_eolico(
    p_nome                 IN VARCHAR2,
    p_ano_inauguracao      IN INT,
    p_area_km              IN FLOAT,
    p_tecnologia           IN VARCHAR2,
    p_status_operacao      IN VARCHAR2,
    p_numero_aerogeradores IN INT DEFAULT NULL,
    p_id_proprietaria      IN INT DEFAULT NULL,
    p_id_localizacao       IN INT DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_PARQUE_EOLICO (
        id_parque_eolico,
        nome,
        ano_inauguracao,
        area_km,
        tecnologia,
        status_operacao,
        numero_aerogeradores,
        id_proprietaria,
        id_localizacao
    ) VALUES (
        GUA_PARQUE_EOLICO_SEQ.NEXTVAL,
        p_nome,
        p_ano_inauguracao,
        p_area_km,
        p_tecnologia,
        p_status_operacao,
        p_numero_aerogeradores,
        p_id_proprietaria,
        p_id_localizacao
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_torre(
    p_nome            IN VARCHAR2,
    p_data_instalacao IN DATE DEFAULT NULL,
    p_status_operacao IN VARCHAR2 DEFAULT NULL,
    p_ultima_leitura  IN TIMESTAMP DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_TORRE (
        id_torre,
        nome,
        data_instalacao,
        status_operacao,
        ultima_leitura
    ) VALUES (
        GUA_TORRE_SEQ.NEXTVAL,
        p_nome,
        p_data_instalacao,
        p_status_operacao,
        p_ultima_leitura
    );
    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_aerogerador(
    p_modelo           IN VARCHAR2,
    p_tecnologia       IN VARCHAR2,
    p_capacidade_mw    IN FLOAT,
    p_altura_mastro    IN FLOAT,
    p_velocidade_corte IN FLOAT,
    p_velocidade_maxima IN FLOAT,
    p_diametro_rotor   IN FLOAT,
    p_data_instalacao  IN DATE DEFAULT NULL,
    p_garantia         IN RAW DEFAULT NULL,
    p_status_operacao  IN VARCHAR2 DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_AEROGERADOR (
        id_aerogerador,
        modelo,
        tecnologia,
        capacidade_mw,
        altura_mastro,
        velocidade_corte,
        velocidade_maxima,
        diametro_rotor,
        data_instalacao,
        garantia,
        status_operacao
    ) VALUES (
        GUA_AEROGERADOR_SEQ.NEXTVAL,
        p_modelo,
        p_tecnologia,
        p_capacidade_mw,
        p_altura_mastro,
        p_velocidade_corte,
        p_velocidade_maxima,
        p_diametro_rotor,
        p_data_instalacao,
        p_garantia,
        p_status_operacao
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_sensor_raios(
    p_data_hora   IN TIMESTAMP DEFAULT NULL,
    p_tipo_raio   IN VARCHAR2 DEFAULT NULL,
    p_amplitude   IN VARCHAR2 DEFAULT NULL,
    p_latitude    IN NUMBER DEFAULT NULL,
    p_longitude   IN NUMBER DEFAULT NULL,
    p_id_torre    IN INT DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_SENSOR_RAIOS (
        id_sensor_raio,
        data_hora,
        tipo_raio,
        amplitude,
        latitude,
        longitude,
        id_torre
    ) VALUES (
        GUA_SENSOR_RAIOS_SEQ.NEXTVAL,
        p_data_hora,
        p_tipo_raio,
        p_amplitude,
        p_latitude,
        p_longitude,
        p_id_torre
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_sensor_clima(
    p_timezone        IN VARCHAR2 DEFAULT NULL,
    p_data_hora       IN TIMESTAMP DEFAULT NULL,
    p_temperatura     IN FLOAT DEFAULT NULL,
    p_umidade         IN FLOAT DEFAULT NULL,
    p_direcao_vento   IN VARCHAR2 DEFAULT NULL,
    p_velocida_vento  IN FLOAT DEFAULT NULL,
    p_descricao_clima IN VARCHAR2 DEFAULT NULL,
    p_id_torre        IN INT DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_SENSOR_CLIMA (
        id_sensor_clima,
        timezone,
        data_hora,
        temperatura,
        umidade,
        direcao_vento,
        velocida_vento,
        descricao_clima,
        id_torre
    ) VALUES (
        GUA_SENSOR_CLIMA_SEQ.NEXTVAL,
        p_timezone,
        p_data_hora,
        p_temperatura,
        p_umidade,
        p_direcao_vento,
        p_velocida_vento,
        p_descricao_clima,
        p_id_torre
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_gua_falha(
    p_data_hora                  IN TIMESTAMP,
    p_descricao                  IN VARCHAR2,
    p_status                     IN VARCHAR2,
    p_prioridade                 IN VARCHAR2,
    p_tipo                       IN VARCHAR2,
    p_equipe_manutencao_resp     IN VARCHAR2,
    p_data_resolucao             IN DATE DEFAULT NULL
) AS
BEGIN
    INSERT INTO GUA_FALHA (
        id_falha,
        data_hora,
        descricao,
        status,
        prioridade,
        tipo,
        equipe_manutencao_responsavel,
        data_resolucao
    ) VALUES (
        GUA_FALHA_SEQ.NEXTVAL,
        p_data_hora,
        p_descricao,
        p_status,
        p_prioridade,
        p_tipo,
        p_equipe_manutencao_resp,
        p_data_resolucao
    );

    COMMIT;
END;
/
