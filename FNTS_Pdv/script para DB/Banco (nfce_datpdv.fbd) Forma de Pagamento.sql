ALTER TABLE CONFIG ADD
  FORMA_CARTAO_CREDITO VARCHAR(50);
ALTER TABLE CONFIG ADD
  FORMA_CHEQUE_APRAZO VARCHAR(50);

update config set
 forma_crediario = 'CREDIARIO',
 forma_cheque = 'CHEQUE A VISTA',
 forma_cartao = 'CARTAO DE DEBITO',
 forma_convenio = 'CONVENIO',
 forma_dinheiro = 'DINHEIRO',
 forma_cartao_credito = 'CARTAO DE CREDITO',
 forma_cheque_aprazo = 'CHEQUE A PRAZO'
WHERE codigo = 0


