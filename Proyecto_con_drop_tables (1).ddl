-- Generado por Oracle SQL Developer Data Modeler 18.1.0.082.1035
--   en:        2019-06-03 19:20:50 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE a_admin CASCADE CONSTRAINTS;

DROP TABLE a_const CASCADE CONSTRAINTS;

DROP TABLE ahorro CASCADE CONSTRAINTS;

DROP TABLE ano_ev_frep CASCADE CONSTRAINTS;

DROP TABLE arq_irrdif_rep CASCADE CONSTRAINTS;

DROP TABLE asig_ptje CASCADE CONSTRAINTS;

DROP TABLE banco CASCADE CONSTRAINTS;

DROP TABLE carga_familiar CASCADE CONSTRAINTS;

DROP TABLE cert_de_perm CASCADE CONSTRAINTS;

DROP TABLE comuna CASCADE CONSTRAINTS;

DROP TABLE conv_cony CASCADE CONSTRAINTS;

DROP TABLE d_vivienda CASCADE CONSTRAINTS;

DROP TABLE e_con_viv CASCADE CONSTRAINTS;

DROP TABLE error CASCADE CONSTRAINTS;

DROP TABLE est_civil CASCADE CONSTRAINTS;

DROP TABLE familiar CASCADE CONSTRAINTS;

DROP TABLE inf_hab CASCADE CONSTRAINTS;

DROP TABLE inspector CASCADE CONSTRAINTS;

DROP TABLE nac CASCADE CONSTRAINTS;

DROP TABLE persona CASCADE CONSTRAINTS;

DROP TABLE postulante_favorecido CASCADE CONSTRAINTS;

DROP TABLE provincia CASCADE CONSTRAINTS;

DROP TABLE ptaje_edad CASCADE CONSTRAINTS;

DROP TABLE ptje_cargafam CASCADE CONSTRAINTS;

DROP TABLE ptje_estcivil CASCADE CONSTRAINTS;

DROP TABLE ptje_monto_ahorro CASCADE CONSTRAINTS;

DROP TABLE ptje_pueblo_ind_org CASCADE CONSTRAINTS;

DROP TABLE ptje_titulo CASCADE CONSTRAINTS;

DROP TABLE ptje_zona_extrema CASCADE CONSTRAINTS;

DROP TABLE pueblo_orig CASCADE CONSTRAINTS;

DROP TABLE region CASCADE CONSTRAINTS;

DROP TABLE solicitante CASCADE CONSTRAINTS;

DROP TABLE solicitud CASCADE CONSTRAINTS;

DROP TABLE titular_cta CASCADE CONSTRAINTS;

DROP TABLE titulo_post CASCADE CONSTRAINTS;

DROP TABLE titulo_prof CASCADE CONSTRAINTS;

DROP TABLE vivienda CASCADE CONSTRAINTS;

CREATE TABLE a_admin (
    id_ant_adm     NUMBER(10) NOT NULL,
    perm_ed_num    NUMBER(30) NOT NULL,
    fecha_ped      DATE NOT NULL,
    ano_cons_viv   NUMBER(4) NOT NULL,
    recp_final     NUMBER(30) NOT NULL,
    fecha_recpf    DATE NOT NULL,
    m2_viv         NUMBER(10) NOT NULL
);

ALTER TABLE a_admin ADD CONSTRAINT a_admin_pk PRIMARY KEY ( id_ant_adm );

CREATE TABLE a_const (
    id_ant_const      NUMBER(10) NOT NULL,
    tipoviv           VARCHAR2(20 BYTE) NOT NULL,
    num_piso_viv      NUMBER(2),
    ag_viv            VARCHAR2(30 BYTE),
    estar             NUMBER(2) NOT NULL,
    num_dorm          NUMBER(2) NOT NULL,
    comedor           NUMBER(2) NOT NULL,
    num_banos         NUMBER(2) NOT NULL,
    cocina            NUMBER(2) NOT NULL,
    estacionamiento   NUMBER(2) NOT NULL,
    logia             NUMBER(2) NOT NULL,
    bodega            NUMBER(2) NOT NULL,
    balc_terr         NUMBER(2) NOT NULL,
    ot_recinto        NUMBER(2) NOT NULL,
    sup_viv           NUMBER(10) NOT NULL,
    sup_terr          NUMBER(20) NOT NULL,
    mat_techumb       VARCHAR2(20 BYTE) NOT NULL,
    mat_muro          VARCHAR2(20 BYTE) NOT NULL,
    mat_pisoyentp     VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE a_const ADD CONSTRAINT a_const_pk PRIMARY KEY ( id_ant_const );

CREATE TABLE ahorro (
    id_cta                  NUMBER(10) NOT NULL,
    tipo_cta                VARCHAR2(20 BYTE) NOT NULL,
    num_cta                 VARCHAR2(20 BYTE) NOT NULL,
    fecha_ap_cta            DATE NOT NULL,
    monto_ahorro            NUMBER(30) NOT NULL,
    titular_cta_id_tp_per   NUMBER(10) NOT NULL,
    banco_id_banco          NUMBER(10) NOT NULL
);

ALTER TABLE ahorro ADD CONSTRAINT ahorro_pk PRIMARY KEY ( id_cta );

CREATE TABLE ano_ev_frep (
    id_anomalia         NUMBER(10) NOT NULL,
    humedad             CHAR(1) NOT NULL,
    radier_pav          CHAR(1) NOT NULL,
    tabique             CHAR(1) NOT NULL,
    revestimiento_ext   CHAR(1) NOT NULL,
    revestimiento_int   CHAR(1) NOT NULL,
    puert_vent          CHAR(1) NOT NULL,
    cub_tech            CHAR(1) NOT NULL,
    art_agpot_agserv    CHAR(1) NOT NULL,
    art_electricos      CHAR(1) NOT NULL,
    obs_otrosdanos      VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE ano_ev_frep ADD CONSTRAINT ano_ev_frep_pk PRIMARY KEY ( id_anomalia );

CREATE TABLE arq_irrdif_rep (
    id_anom       NUMBER(10) NOT NULL,
    terreno       CHAR(1) NOT NULL,
    plaga         CHAR(1) NOT NULL,
    fundaciones   CHAR(1) NOT NULL,
    muro          CHAR(1) NOT NULL,
    entrepiso     CHAR(1) NOT NULL,
    estructura    CHAR(1) NOT NULL,
    red_agua      CHAR(1) NOT NULL,
    red_alc       CHAR(1) NOT NULL,
    red_elec      CHAR(1) NOT NULL,
    red_gas       CHAR(1) NOT NULL
);

ALTER TABLE arq_irrdif_rep ADD CONSTRAINT arq_irr_o_dif_de_rep_pk PRIMARY KEY ( id_anom );

CREATE TABLE asig_ptje (
    run_postulante              VARCHAR2(10 BYTE) NOT NULL,
    edad                        NUMBER(3) NOT NULL,
    puntaje_edad                NUMBER(4) NOT NULL,
    cargas_familiares           NUMBER(4) NOT NULL,
    puntaje_cargas_familiares   NUMBER(4) NOT NULL,
    estado_civil                VARCHAR2(25 BYTE) NOT NULL,
    puntaje_estado_civil        NUMBER(4) NOT NULL,
    pueblo_ind_orig             VARCHAR2(40 BYTE) NOT NULL,
    puntaje_pueblo_ind_orig     NUMBER(4) NOT NULL,
    monto_ahorro                NUMBER(10) NOT NULL,
    puntaje_monto_ahorro        NUMBER(4) NOT NULL,
    titulo                      VARCHAR2(50 BYTE) NOT NULL,
    puntaje_titulo              NUMBER(4) NOT NULL,
    puntaje_total               NUMBER(4) NOT NULL
);

ALTER TABLE asig_ptje ADD CONSTRAINT asig_ptje_pk PRIMARY KEY ( run_postulante );

CREATE TABLE banco (
    id_banco    NUMBER(10) NOT NULL,
    nom_banco   VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE banco ADD CONSTRAINT banco_pk PRIMARY KEY ( id_banco );

CREATE TABLE carga_familiar (
    id_carg_fam              NUMBER(10) NOT NULL,
    cant_cargfam             NUMBER(2) NOT NULL,
    fecha_doc_cf             DATE NOT NULL,
    familiar_persona_rut_p   VARCHAR2(10 BYTE)
);

ALTER TABLE carga_familiar ADD CONSTRAINT carga_familiar_pk PRIMARY KEY ( id_carg_fam );

CREATE TABLE cert_de_perm (
    nac_id_nac       NUMBER(10) NOT NULL,
    fecha_cert_per   DATE NOT NULL
);

ALTER TABLE cert_de_perm ADD CONSTRAINT cert_de_perm_pk PRIMARY KEY ( nac_id_nac );

CREATE TABLE comuna (
    id_com              NUMBER(10) NOT NULL,
    desc_com            VARCHAR2(40 BYTE) NOT NULL,
    provincia_id_prov   NUMBER(10) NOT NULL
);

ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_com );

CREATE TABLE conv_cony (
    persona_rut_p   VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE conv_cony ADD CONSTRAINT conv_cony_pk PRIMARY KEY ( persona_rut_p );

CREATE TABLE d_vivienda (
    persona_rut_p   VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE d_vivienda ADD CONSTRAINT d_vivienda_pk PRIMARY KEY ( persona_rut_p );

CREATE TABLE e_con_viv (
    id_est_conviv     NUMBER(10) NOT NULL,
    descp_estconviv   VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE e_con_viv ADD CONSTRAINT e_con_viv_pk PRIMARY KEY ( id_est_conviv );

CREATE TABLE error (
    id_error     NUMBER(10) NOT NULL,
    desc_error   VARCHAR2(100 BYTE) NOT NULL,
    num_error    VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE error ADD CONSTRAINT error_pk PRIMARY KEY ( id_error );

CREATE TABLE est_civil (
    id_est_civil   NUMBER(10) NOT NULL,
    descp_eciv     VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE est_civil ADD CONSTRAINT est_civil_pk PRIMARY KEY ( id_est_civil );

CREATE TABLE familiar (
    persona_rut_p   VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE familiar ADD CONSTRAINT familiar_pk PRIMARY KEY ( persona_rut_p );

CREATE TABLE inf_hab (
    id_infviv                 NUMBER(10) NOT NULL,
    fec_sol_infviv            DATE NOT NULL,
    fec_insp_infviv           DATE NOT NULL,
    sub_obtelano              VARCHAR2(20 BYTE),
    vivienda_id_viv           NUMBER(10) NOT NULL,
    e_con_viv_id_est_conviv   NUMBER(10) NOT NULL,
    a_const_id_ant_const      NUMBER(10) NOT NULL,
    a_admin_id_ant_adm        NUMBER(10) NOT NULL,
    solicitud_id_sol          NUMBER(10) NOT NULL,
    arq_irrdif_rep_id_anom    NUMBER(4) NOT NULL,
    inspector_persona_rut_p   VARCHAR2(10 BYTE) NOT NULL,
    ano_ev_frep_id_anomalia   NUMBER(10) NOT NULL
);

ALTER TABLE inf_hab ADD CONSTRAINT inf_hab_pk PRIMARY KEY ( id_infviv );

CREATE TABLE inspector (
    persona_rut_p    VARCHAR2(10 BYTE) NOT NULL,
    rol_cons         VARCHAR2(20 BYTE) NOT NULL,
    categoria_cons   VARCHAR2(50 BYTE) NOT NULL,
    res_cons         VARCHAR2(20 BYTE) NOT NULL,
    fech_res_cons    DATE NOT NULL
);

ALTER TABLE inspector ADD CONSTRAINT inspector_pk PRIMARY KEY ( persona_rut_p );

CREATE TABLE nac (
    id_nac     NUMBER(10) NOT NULL,
    pais_nac   VARCHAR2(50 BYTE) NOT NULL
);

ALTER TABLE nac ADD CONSTRAINT nac_pk PRIMARY KEY ( id_nac );

CREATE TABLE persona (
    rut_p                     VARCHAR2(10 BYTE) NOT NULL,
    nombre_p                  VARCHAR2(30 BYTE) NOT NULL,
    apellidop_p               VARCHAR2(20 BYTE) NOT NULL,
    apellidom_p               VARCHAR2(20 BYTE) NOT NULL,
    f_nac                     DATE NOT NULL,
    email_p                   VARCHAR2(100 BYTE),
    est_civil_id_est_civil    NUMBER(10) NOT NULL,
    comuna_id_com             NUMBER(10) NOT NULL,
    cert_de_perm_nac_id_nac   NUMBER(10) NOT NULL
);

ALTER TABLE persona ADD CONSTRAINT posulante_pk PRIMARY KEY ( rut_p );

CREATE TABLE postulante_favorecido (
    run_postulante              VARCHAR2(10 BYTE) NOT NULL,
    nombre_postulante           VARCHAR2(100 BYTE) NOT NULL,
    edad                        NUMBER(3) NOT NULL,
    puntaje_edad                NUMBER(4) NOT NULL,
    cargas_familiares           NUMBER(4) NOT NULL,
    puntaje_cargas_familiares   NUMBER(4) NOT NULL,
    estado_civil                VARCHAR2(25 BYTE) NOT NULL,
    puntaje_estado_civil        NUMBER(4) NOT NULL,
    pueblo_ind_orig             VARCHAR2(40 BYTE) NOT NULL,
    puntaje_pueblo_ind_orig     NUMBER(4) NOT NULL,
    monto_ahorro                NUMBER(10) NOT NULL,
    puntaje_monto_ahorro        NUMBER(4) NOT NULL,
    titulo                      VARCHAR2(50 BYTE) NOT NULL,
    puntaje_titulo              NUMBER(4) NOT NULL,
    zona_extrema                VARCHAR2(100 BYTE) NOT NULL,
    puntaje_zona_extrema        NUMBER(4) NOT NULL,
    puntaje_total               NUMBER(4) NOT NULL,
    tipo_vivienda_subsidiaria   VARCHAR2(20 BYTE) NOT NULL,
    valor_vivienda              NUMBER(15) NOT NULL,
    monto_subsidio              NUMBER(15) NOT NULL
);

ALTER TABLE postulante_favorecido ADD CONSTRAINT postulante_favorecido_pk PRIMARY KEY ( run_postulante );

CREATE TABLE provincia (
    id_prov         NUMBER(10) NOT NULL,
    nombre_prov     VARCHAR2(50 BYTE) NOT NULL,
    region_id_reg   NUMBER(10) NOT NULL
);

ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY ( id_prov );

CREATE TABLE ptaje_edad (
    id_ptaje     NUMBER(10) NOT NULL,
    edad_inf     NUMBER(3) NOT NULL,
    edad_sup     NUMBER(3) NOT NULL,
    ptaje_edad   NUMBER(4) NOT NULL
);

ALTER TABLE ptaje_edad ADD CONSTRAINT ptaje_edad_pk PRIMARY KEY ( id_ptaje );

CREATE TABLE ptje_cargafam (
    id_ptaje_cargfam   NUMBER(10) NOT NULL,
    cargafam_inf       NUMBER(3) NOT NULL,
    cargafam_sup       NUMBER(3) NOT NULL,
    ptje_cargafam      NUMBER(4) NOT NULL
);

ALTER TABLE ptje_cargafam ADD CONSTRAINT ptaje_cargafam_pk PRIMARY KEY ( id_ptaje_cargfam );

CREATE TABLE ptje_estcivil (
    id_ptje_estcivil   NUMBER(10) NOT NULL,
    descp_estcivil     VARCHAR2(25 BYTE) NOT NULL,
    ptje_estcivil      NUMBER(4) NOT NULL
);

ALTER TABLE ptje_estcivil ADD CONSTRAINT ptje_estcivil_pk PRIMARY KEY ( id_ptje_estcivil );

CREATE TABLE ptje_monto_ahorro (
    id_ptje_mont_ahorro   NUMBER(10) NOT NULL,
    monto_inf             NUMBER(10) NOT NULL,
    monto_sup             NUMBER(10) NOT NULL,
    ptje_monto_ahorro     NUMBER(4) NOT NULL
);

ALTER TABLE ptje_monto_ahorro ADD CONSTRAINT monto_ahorro_pk PRIMARY KEY ( id_ptje_mont_ahorro );

CREATE TABLE ptje_pueblo_ind_org (
    id_pblo_indorg         NUMBER(10) NOT NULL,
    pertenece              VARCHAR2(3 BYTE) NOT NULL,
    ptje_pert_pbloindorg   NUMBER(4) NOT NULL
);

ALTER TABLE ptje_pueblo_ind_org ADD CONSTRAINT ptje_pueblo_ind_org_pk PRIMARY KEY ( id_pblo_indorg );

CREATE TABLE ptje_titulo (
    id_ptje_titulo    NUMBER(10) NOT NULL,
    descp_tp_titulo   VARCHAR2(40 BYTE) NOT NULL,
    ptje_titulo       NUMBER(4) NOT NULL
);

ALTER TABLE ptje_titulo ADD CONSTRAINT ptje_titulo_pk PRIMARY KEY ( id_ptje_titulo );

CREATE TABLE ptje_zona_extrema (
    id_zona_extrema   NUMBER(10) NOT NULL,
    num_region        NUMBER(3) NOT NULL,
    porc_ptje         NUMBER(3) NOT NULL
);

ALTER TABLE ptje_zona_extrema ADD CONSTRAINT ptje_zona_extrema_pk PRIMARY KEY ( id_zona_extrema );

CREATE TABLE pueblo_orig (
    id_pblo_or   NUMBER(10) NOT NULL,
    descp_pblo   VARCHAR2(40 BYTE) NOT NULL,
    fech_doc     DATE NOT NULL
);

ALTER TABLE pueblo_orig ADD CONSTRAINT pueblo_originario_pk PRIMARY KEY ( id_pblo_or );

CREATE TABLE region (
    id_reg     NUMBER(10) NOT NULL,
    desc_reg   VARCHAR2(70 BYTE) NOT NULL
);

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_reg );

CREATE TABLE solicitante (
    persona_rut_p   VARCHAR2(10 BYTE) NOT NULL,
    num_depto_sol   NUMBER(4),
    tel_dom_sol     NUMBER(10),
    tel_mov_sol     NUMBER(10),
    domicilio_sol   VARCHAR2(100 BYTE) NOT NULL,
    num_dom_sol     NUMBER(4) NOT NULL,
    tel_trab_sol    NUMBER(10),
    block_sol       VARCHAR2(10 BYTE),
    manzana_sol     VARCHAR2(10 BYTE),
    sitio_sol       VARCHAR2(10 BYTE),
    pobl_vlla_sol   VARCHAR2(20 BYTE),
    cod_post_sol    NUMBER(10) NOT NULL,
    localidad_sol   VARCHAR2(20 BYTE)
);

ALTER TABLE solicitante ADD CONSTRAINT solicitante_pk PRIMARY KEY ( persona_rut_p );

CREATE TABLE solicitud (
    id_sol                       NUMBER(10) NOT NULL,
    solicitante_persona_rut_p    VARCHAR2(10 BYTE) NOT NULL,
    ahorro_id_cta                NUMBER(10) NOT NULL,
    carga_familiar_id_carg_fam   NUMBER(10) NOT NULL,
    pueblo_orig_id_pblo_or       NUMBER(10) NOT NULL,
    titulo_post_id_post          NUMBER(10) NOT NULL,
    titulo_prof_id_tit_prof      NUMBER(10) NOT NULL,
    conv_cony_persona_rut_p      VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE solicitud ADD CONSTRAINT solicitud_pk PRIMARY KEY ( id_sol );

CREATE TABLE titular_cta (
    id_tp_per   NUMBER(10) NOT NULL,
    desc_pers   VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE titular_cta ADD CONSTRAINT tipo_persona_pk PRIMARY KEY ( id_tp_per );

CREATE TABLE titulo_post (
    id_post        NUMBER(10) NOT NULL,
    descp_titulo   VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE titulo_post ADD CONSTRAINT titulo_post_pk PRIMARY KEY ( id_post );

CREATE TABLE titulo_prof (
    id_tit_prof    NUMBER(10) NOT NULL,
    titulo_posee   VARCHAR2(20 BYTE) NOT NULL,
    institucion    VARCHAR2(30 BYTE) NOT NULL,
    fech_doc       DATE NOT NULL
);

ALTER TABLE titulo_prof ADD CONSTRAINT titulo_prof_pk PRIMARY KEY ( id_tit_prof );

CREATE TABLE vivienda (
    id_viv                     NUMBER(10) NOT NULL,
    usada_viv                  CHAR(1) NOT NULL,
    economica                  CHAR(1) NOT NULL,
    direcc_viv                 VARCHAR2(20 BYTE) NOT NULL,
    num_viv                    NUMBER(4) NOT NULL,
    depto_viv                  NUMBER(4),
    rolsii_viv                 VARCHAR2(10 BYTE) NOT NULL,
    pob_vill_conj_cond         VARCHAR2(20 BYTE),
    comuna_id_com              NUMBER(10) NOT NULL,
    d_vivienda_persona_rut_p   VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE vivienda ADD CONSTRAINT vivienda_pk PRIMARY KEY ( id_viv );

ALTER TABLE ahorro
    ADD CONSTRAINT ahorro_banco_fk FOREIGN KEY ( banco_id_banco )
        REFERENCES banco ( id_banco );

ALTER TABLE ahorro
    ADD CONSTRAINT ahorro_titular_cta_fk FOREIGN KEY ( titular_cta_id_tp_per )
        REFERENCES titular_cta ( id_tp_per );

ALTER TABLE carga_familiar
    ADD CONSTRAINT carga_familiar_familiar_fk FOREIGN KEY ( familiar_persona_rut_p )
        REFERENCES familiar ( persona_rut_p );

ALTER TABLE cert_de_perm
    ADD CONSTRAINT cert_de_perm_nac_fk FOREIGN KEY ( nac_id_nac )
        REFERENCES nac ( id_nac );

ALTER TABLE comuna
    ADD CONSTRAINT comuna_provincia_fk FOREIGN KEY ( provincia_id_prov )
        REFERENCES provincia ( id_prov );

ALTER TABLE conv_cony
    ADD CONSTRAINT conv_cony_persona_fk FOREIGN KEY ( persona_rut_p )
        REFERENCES persona ( rut_p );

ALTER TABLE d_vivienda
    ADD CONSTRAINT d_vivienda_persona_fk FOREIGN KEY ( persona_rut_p )
        REFERENCES persona ( rut_p );

ALTER TABLE familiar
    ADD CONSTRAINT familiar_persona_fk FOREIGN KEY ( persona_rut_p )
        REFERENCES persona ( rut_p );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_a_admin_fk FOREIGN KEY ( a_admin_id_ant_adm )
        REFERENCES a_admin ( id_ant_adm );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_a_const_fk FOREIGN KEY ( a_const_id_ant_const )
        REFERENCES a_const ( id_ant_const );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_ano_ev_frep_fk FOREIGN KEY ( ano_ev_frep_id_anomalia )
        REFERENCES ano_ev_frep ( id_anomalia );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_arq_irrdif_rep_fk FOREIGN KEY ( arq_irrdif_rep_id_anom )
        REFERENCES arq_irrdif_rep ( id_anom );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_e_con_viv_fk FOREIGN KEY ( e_con_viv_id_est_conviv )
        REFERENCES e_con_viv ( id_est_conviv );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_inspector_fk FOREIGN KEY ( inspector_persona_rut_p )
        REFERENCES inspector ( persona_rut_p );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_solicitud_fk FOREIGN KEY ( solicitud_id_sol )
        REFERENCES solicitud ( id_sol );

ALTER TABLE inf_hab
    ADD CONSTRAINT inf_hab_vivienda_fk FOREIGN KEY ( vivienda_id_viv )
        REFERENCES vivienda ( id_viv );

ALTER TABLE inspector
    ADD CONSTRAINT inspector_persona_fk FOREIGN KEY ( persona_rut_p )
        REFERENCES persona ( rut_p );

ALTER TABLE persona
    ADD CONSTRAINT persona_cert_de_perm_fk FOREIGN KEY ( cert_de_perm_nac_id_nac )
        REFERENCES cert_de_perm ( nac_id_nac );

ALTER TABLE persona
    ADD CONSTRAINT persona_comuna_fk FOREIGN KEY ( comuna_id_com )
        REFERENCES comuna ( id_com );

ALTER TABLE persona
    ADD CONSTRAINT posulante_est_civil_fk FOREIGN KEY ( est_civil_id_est_civil )
        REFERENCES est_civil ( id_est_civil );

ALTER TABLE provincia
    ADD CONSTRAINT provincia_region_fk FOREIGN KEY ( region_id_reg )
        REFERENCES region ( id_reg );

ALTER TABLE solicitante
    ADD CONSTRAINT solicitante_persona_fk FOREIGN KEY ( persona_rut_p )
        REFERENCES persona ( rut_p );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_ahorro_fk FOREIGN KEY ( ahorro_id_cta )
        REFERENCES ahorro ( id_cta );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_carga_familiar_fk FOREIGN KEY ( carga_familiar_id_carg_fam )
        REFERENCES carga_familiar ( id_carg_fam );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_conv_cony_fk FOREIGN KEY ( conv_cony_persona_rut_p )
        REFERENCES conv_cony ( persona_rut_p );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_pueblo_orig_fk FOREIGN KEY ( pueblo_orig_id_pblo_or )
        REFERENCES pueblo_orig ( id_pblo_or );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_solicitante_fk FOREIGN KEY ( solicitante_persona_rut_p )
        REFERENCES solicitante ( persona_rut_p );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_titulo_post_fk FOREIGN KEY ( titulo_post_id_post )
        REFERENCES titulo_post ( id_post );

ALTER TABLE solicitud
    ADD CONSTRAINT solicitud_titulo_prof_fk FOREIGN KEY ( titulo_prof_id_tit_prof )
        REFERENCES titulo_prof ( id_tit_prof );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_comuna_fk FOREIGN KEY ( comuna_id_com )
        REFERENCES comuna ( id_com );

ALTER TABLE vivienda
    ADD CONSTRAINT vivienda_d_vivienda_fk FOREIGN KEY ( d_vivienda_persona_rut_p )
        REFERENCES d_vivienda ( persona_rut_p );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            37
-- CREATE INDEX                             0
-- ALTER TABLE                             68
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
