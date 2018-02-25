alter table nfce add Contingencia varchar(1);
alter table nfce add EnviadoContingencia varchar(1);
alter table nfce add MotivoContigencia varchar(255); 
alter table nfce add xmlenvio blob;
alter table nfce add xmlcacnelamento blob;

create or alter procedure NFCE_INSERT (
    PNUMERO integer,
    PDATA date,
    PHORA varchar(8),
    PTOTAL numeric(15,2),
    PCLIENTE varchar(255),
    PCHAVE varchar(255),
    PXML varchar(255),
    PSITUACAO integer,
    PTROCO numeric(15,2),
    Contingencia varchar(1),
    EnviadoContingencia varchar(1),
    MotivoContigencia varchar(255),
    xmlenvio blob,
    xmlcacnelamento blob)
as
BEGIN

INSERT INTO nfce  (numero, data, hora, total, cliente,chave, xml, situacao, troco, Contingencia, EnviadoContingencia, MotivoContigencia, xmlenvio, xmlcacnelamento)
values  (:pnumero, :pdata, :phora, :ptotal, :pcliente, :pchave, :pxml, :psituacao, :ptroco, :Contingencia, :EnviadoContingencia, :MotivoContigencia, :xmlenvio, :xmlcacnelamento);

END;


GRANT INSERT ON NFCE TO PROCEDURE NFCE_INSERT;
GRANT EXECUTE ON PROCEDURE NFCE_INSERT TO SYSDBA;

