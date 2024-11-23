INSERT INTO GUA_PROPRIETARIA (id_proprietaria, razao_social, cnpj, endereco_principal, telefone_principal, email_contato) VALUES
(1, 'Eólica Brasil Ltda.', '12.345.678/0001-90', 'Av. Paulista, 1234, São Paulo, SP', '(11) 98765-4321', 'contato@eolicabrasil.com'),
(2, 'Ventos do Sul S.A.', '98.765.432/0001-55', 'Rua XV de Novembro, 456, Curitiba, PR', '(41) 91234-5678', 'contato@ventossul.com'),
(3, 'Energia Verde Ltda.', '45.678.901/0001-12', 'Av. das Nações, 789, Brasília, DF', '(61) 99876-5432', 'contato@energiaverde.com'),
(4, 'Renováveis do Nordeste S.A.', '32.101.112/0001-65', 'Rua dos Ventos, 123, Recife, PE', '(81) 98876-4321', 'contato@renovaveisnordeste.com'),
(5, 'Força Renovável Ltda.', '54.321.098/0001-43', 'Av. da Energia, 987, Fortaleza, CE', '(85) 97654-3210', 'contato@forcarenovavel.com'),
(6, 'Energia do Futuro S.A.', '76.543.210/0001-98', 'Rua Solar, 456, Belo Horizonte, MG', '(31) 93456-7890', 'contato@energiadfuturo.com'),
(7, 'Energize Brasil Ltda.', '21.123.456/0001-78', 'Av. do Sol, 321, Rio de Janeiro, RJ', '(21) 91234-6789', 'contato@energizebrasil.com'),
(8, 'Ventos do Oeste S.A.', '65.432.109/0001-21', 'Rua das Turbinas, 654, Porto Alegre, RS', '(51) 96543-2109', 'contato@ventosdoeste.com'),
(9, 'Sol e Vento Ltda.', '98.210.432/0001-32', 'Av. Solar, 876, Salvador, BA', '(71) 98765-2109', 'contato@solevento.com'),
(10, 'Renováveis do Centro-Oeste S.A.', '34.567.890/0001-56', 'Rua Verde, 123, Goiânia, GO', '(62) 97654-1234', 'contato@renovaveisco.com');

INSERT INTO GUA_USUARIO (id_usuario, nome, sobrenome, cargo, cpf, email, senha, telefone, id_empresa) VALUES
(1, 'Carlos', 'Silva', 'Engenheiro de Projetos', '123.456.789-10', 'carlos.silva@eolicabrasil.com', 'senha123', '(11) 91234-5678', 1),
(2, 'Mariana', 'Costa', 'Gerente de Operações', '987.654.321-00', 'mariana.costa@ventossul.com', 'senha456', '(41) 91234-5678', 2),
(3, 'João', 'Pereira', 'Técnico de Campo', '654.321.987-11', 'joao.pereira@energiaverde.com', 'senha789', '(61) 91234-5678', 3),
(4, 'Ana', 'Souza', 'Analista Ambiental', '321.987.654-22', 'ana.souza@renovaveisnordeste.com', 'senha000', '(81) 91234-5678', 4),
(5, 'Roberto', 'Lima', 'Engenheiro Elétrico', '456.789.123-33', 'roberto.lima@forcarenovavel.com', 'senha111', '(85) 91234-5678', 5),
(6, 'Fernanda', 'Oliveira', 'Coordenadora Técnica', '789.123.456-44', 'fernanda.oliveira@energiadfuturo.com', 'senha222', '(31) 91234-5678', 6),
(7, 'Pedro', 'Almeida', 'Gerente Regional', '123.456.789-55', 'pedro.almeida@energizebrasil.com', 'senha333', '(21) 91234-5678', 7),
(8, 'Juliana', 'Ferreira', 'Analista de Manutenção', '987.654.321-66', 'juliana.ferreira@ventosdoeste.com', 'senha444', '(51) 91234-5678', 8),
(9, 'Lucas', 'Nascimento', 'Engenheiro de Turbinas', '654.321.987-77', 'lucas.nascimento@solevento.com', 'senha555', '(71) 91234-5678', 9),
(10, 'Carla', 'Mendes', 'Supervisora de Segurança', '321.987.654-88', 'carla.mendes@renovaveisco.com', 'senha666', '(62) 91234-5678', 10);


INSERT INTO GUA_LOCALIZACAO (id_localizacao, cidade, estado, regiao, pais, latitude, longitude) VALUES
(1, 'Simões', 'Piauí', 'Nordeste', 'Brasil', -7.7690457, -40.6633014),
(2, 'Curitiba', 'Paraná', 'Sul', 'Brasil', -25.4284, -49.2733),
(3, 'Brasília', 'Distrito Federal', 'Centro-Oeste', 'Brasil', -15.7939, -47.8828),
(4, 'Recife', 'Pernambuco', 'Nordeste', 'Brasil', -8.0476, -34.877),
(5, 'Fortaleza', 'Ceará', 'Nordeste', 'Brasil', -3.71722, -38.5434),
(6, 'Belo Horizonte', 'Minas Gerais', 'Sudeste', 'Brasil', -19.8157, -43.9542),
(7, 'Rio de Janeiro', 'Rio de Janeiro', 'Sudeste', 'Brasil', -22.9068, -43.1729),
(8, 'Porto Alegre', 'Rio Grande do Sul', 'Sul', 'Brasil', -30.0346, -51.2177),
(9, 'Salvador', 'Bahia', 'Nordeste', 'Brasil', -12.9714, -38.5014),
(10, 'Goiânia', 'Goiás', 'Centro-Oeste', 'Brasil', -16.6869, -49.2648);

INSERT INTO GUA_PARQUE_EOLICO (id_parque_eolico, nome, ano_inauguracao, area_km, tecnologia, status_operacao, numero_aerogeradores, id_proprietaria, id_localizacao) VALUES
(1, 'Parque Eólico Ventos do Nordeste', 2020, 35.5, 'Energia Renovável', 'Operacional', 15, 1, 1),
(2, 'Parque Eólico Sul Ventos', 2018, 50.0, 'Energia Renovável', 'Operacional', 20, 2, 2),
(3, 'Parque Solar Brasília', 2021, 45.0, 'Energia Solar', 'Operacional', 12, 3, 3),
(4, 'Parque de Renováveis Recife', 2019, 60.5, 'Energia Renovável', 'Operacional', 18, 4, 4),
(5, 'Parque Eólico Fortaleza', 2020, 42.3, 'Energia Renovável', 'Operacional', 14, 5, 5),
(6, 'Energia Solar Belo Horizonte', 2019, 38.7, 'Energia Solar', 'Operacional', 10, 6, 6),
(7, 'Parque de Ventos RJ', 2022, 50.9, 'Energia Renovável', 'Em Construção', 22, 7, 7),
(8, 'Parque Renovável POA', 2021, 70.2, 'Energia Renovável', 'Operacional', 25, 8, 8),
(9, 'Solar Bahia', 2023, 65.0, 'Energia Solar', 'Operacional', 30, 9, 9),
(10, 'Eólicos Centro-Oeste', 2020, 75.4, 'Energia Solar', 'Operacional', 30, 9, 9);


INSERT INTO GUA_TORRE (id_torre, nome, data_instalacao, status_operacao, ultima_leitura, id_localizacao) VALUES
(1, 'Torre Simões 1', '2020-01-15', 'Ativa', '2024-11-22 14:00:00', 1),
(2, 'Torre Curitiba 1', '2018-05-10', 'Ativa', '2024-11-22 14:05:00', 2),
(3, 'Torre Brasília 1', '2021-03-12', 'Ativa', '2024-11-22 14:10:00', 3),
(4, 'Torre Recife 1', '2019-07-18', 'Ativa', '2024-11-22 14:15:00', 4),
(5, 'Torre Fortaleza 1', '2020-09-25', 'Ativa', '2024-11-22 14:20:00', 5),
(6, 'Torre BH 1', '2019-11-05', 'Ativa', '2024-11-22 14:25:00', 6),
(7, 'Torre RJ 1', '2022-02-14', 'Em Manutenção', '2024-11-22 14:30:00', 7),
(8, 'Torre POA 1', '2021-04-09', 'Ativa', '2024-11-22 14:35:00', 8),
(9, 'Torre Salvador 1', '2023-06-19', 'Ativa', '2024-11-22 14:40:00', 9),
(10, 'Torre Goiânia 1', '2020-12-31', 'Ativa', '2024-11-22 14:45:00', 10);

INSERT INTO GUA_AEROGERADOR (id_aerogerador, modelo, tecnologia, capacidade_mw, altura_mastro, velocidade_corte, velocidade_maxima, diametro_rotor, data_instalacao, garantia, status_operacao, id_parque_eolico) VALUES
(1, 'Vestas V150', 'Asíncrono', 4.2, 120.0, 3.5, 25.0, 150.0, '2023-01-15', '1', 'Operacional', 1),
(2, 'GE 3.4-137', 'Síncrono', 3.4, 110.0, 3.0, 24.5, 137.0, '2023-02-20', '0', 'Manutenção', 2),
(3, 'Siemens SWT-3.6', 'Híbrido', 3.6, 125.0, 3.7, 26.0, 130.0, '2023-03-10', '1', 'Operacional', 3),
(4, 'Nordex N149', 'Asíncrono', 4.5, 140.0, 3.2, 23.0, 149.0, '2023-05-25', '0', 'Instalado', 4),
(5, 'Enercon E-126', 'Síncrono', 7.5, 135.0, 2.8, 22.0, 126.0, '2023-04-15', '1', 'Operacional', 5);

INSERT INTO GUA_SENSOR_RAIOS (id_sensor_raio, data_hora, tipo_raio, amplitude, latitude, longitude, id_torre) VALUES
(1, '2024-11-20 14:10:00', 'CG', '20 kA', -23.550520, -46.633308, 1),
(2, '2024-11-21 15:30:00', 'CC', '18 kA', -25.428356, -49.273251, 2),
(3, '2024-11-21 16:00:00', 'CG', '25 kA', -22.906847, -43.172896, 3),
(4, '2024-11-22 09:45:00', 'CC', '15 kA', -8.047562, -34.877000, 4),
(5, '2024-11-22 11:20:00', 'CG', '30 kA', -30.034647, -51.217658, 5);

INSERT INTO GUA_SENSOR_CLIMA (id_sensor_clima, timezone, data_hora, temperatura, umidade, direcao_vento, velocidade_vento, descricao_clima, id_torre) VALUES
(1, 'America/Sao_Paulo', '2024-11-22 14:00:00', 25.3, 65, 'ENE', 3.5, 'Parcialmente Nublado', 1),
(2, 'America/Recife', '2024-11-22 15:00:00', 28.7, 70, 'E', 2.5, 'Ensolarado', 2),
(3, 'America/Fortaleza', '2024-11-22 16:00:00', 31.4, 60, 'NE', 4.0, 'Nublado', 3),
(4, 'America/Sao_Paulo', '2024-11-22 17:00:00', 26.8, 72, 'SE', 2.0, 'Chuvoso', 4),
(5, 'America/Porto_Alegre', '2024-11-22 18:00:00', 22.5, 80, 'SW', 1.8, 'Nublado', 5);

INSERT INTO GUA_FALHA (id_falha, data_hora, descricao, status, prioridade, tipo, equipe_manutencao_responsavel, data_resolucao) VALUES
(1, '2024-11-21 14:00:00', 'Parada do aerogerador devido a superaquecimento.', 'Aberta', 'Alta', 'Mecânica', 'Equipe A', '2024-11-23'),
(2, '2024-11-20 11:45:00', 'Falha no sensor de vento.', 'Em andamento', 'Média', 'Elétrica', 'Equipe B', '2024-11-22'),
(3, '2024-11-19 09:30:00', 'Problema na transmissão de dados do sensor de raios.', 'Resolvida', 'Baixa', 'Tecnológica', 'Equipe C', '2024-11-20'),
(4, '2024-11-18 16:15:00', 'Desalinhamento do rotor.', 'Aberta', 'Alta', 'Mecânica', 'Equipe A', NULL),
(5, '2024-11-17 10:00:00', 'Quebra da torre de suporte.', 'Aberta', 'Crítica', 'Estrutural', 'Equipe D', NULL);


-- Extração para MongoDB
CREATE OR REPLACE PROCEDURE generate_json_for_all_tables(
    p_json_output OUT CLOB
) AS
    v_table_name  VARCHAR2(128);
    v_json_table  CLOB;
    v_final_json  CLOB := '[';
    v_first_table BOOLEAN := TRUE;
BEGIN
    FOR table_rec IN (
        SELECT table_name
        FROM user_tables
    ) LOOP
        v_table_name := table_rec.table_name;

        v_json_table := NULL;

        BEGIN
            EXECUTE IMMEDIATE '
                SELECT JSON_ARRAYAGG(
                           JSON_OBJECT(
                               ' || 
                               (SELECT LISTAGG('KEY "' || column_name || '" VALUE ' || column_name, ', ')
                                   WITHIN GROUP (ORDER BY column_id)
                                FROM all_tab_columns
                                WHERE table_name = v_table_name AND owner = USER) ||
                               ')
                       ) AS json_result
                FROM ' || v_table_name
            INTO v_json_table;

        EXCEPTION
            WHEN OTHERS THEN
                v_json_table := '[]';
        END;

        IF NOT v_first_table THEN
            v_final_json := v_final_json || ',';
        ELSE
            v_first_table := FALSE;
        END IF;

        v_final_json := v_final_json || '{"' || v_table_name || '": ' || v_json_table || '}';
    END LOOP;

    v_final_json := v_final_json || ']';

    p_json_output := v_final_json;

EXCEPTION
    WHEN OTHERS THEN
        p_json_output := '[]';
END;
/
