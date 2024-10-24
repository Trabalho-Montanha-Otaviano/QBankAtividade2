# Banco de dados SQL

O QBank é um sistema bancário simplificado que tem como objetivo gerenciar as informações de contas, transações financeiras, empréstimos, cartões de crédito e pagamentos de serviços. Este projeto organiza e controla essas operações usando um banco de dados SQL relacional.

O banco de dados foi projetado para armazenar os seguintes tipos de dados:

    Informações de Contas Bancárias: Contém dados pessoais dos clientes e saldo das contas.
    Transações: Gerencia transferências entre contas.
    Empréstimos: Armazena informações sobre solicitações de empréstimo, incluindo valor, taxa de juros e prazo.
    Cartões de Crédito: Controla o limite de crédito e o valor da fatura atual de cada cliente.
    Pagamentos de Serviços: Registra pagamentos de serviços, como luz, água e internet.

Estrutura do Banco de Dados
1. Tabela Conta

Esta tabela contém as informações principais de cada cliente e suas contas bancárias.

    Campos:
        ID_Conta: Identificador único da conta (chave primária).
        Nome_Cliente: Nome completo do titular da conta.
        CPF: Documento de identificação do cliente (único).
        Saldo: Saldo disponível na conta.
        Data_Criacao: Data de abertura da conta.

2. Tabela Transacao

Armazena registros de transações financeiras entre contas, como transferências.

    Campos:
        ID_Transacao: Identificador único da transação (chave primária).
        ID_Conta_Origem: Conta de onde os fundos foram retirados (chave estrangeira).
        ID_Conta_Destino: Conta que recebeu os fundos (chave estrangeira).
        Valor: Valor da transação.
        Data_Transacao: Data em que a transação foi realizada.
        Tipo_Transacao: Tipo da transação (e.g., transferência, depósito, saque).

3. Tabela Emprestimo

Contém informações sobre empréstimos solicitados pelos clientes.

    Campos:
        ID_Emprestimo: Identificador único do empréstimo (chave primária).
        ID_Conta: Conta que solicitou o empréstimo (chave estrangeira).
        Valor: Valor do empréstimo solicitado.
        Data_Solicitacao: Data da solicitação do empréstimo.
        Juros: Taxa de juros do empréstimo.
        Prazo: Prazo para pagamento do empréstimo (em meses).

4. Tabela CartaoCredito

Gerencia as informações de cartões de crédito de clientes, incluindo limite e fatura.

    Campos:
        ID_Cartao: Identificador único do cartão de crédito (chave primária).
        ID_Conta: Conta associada ao cartão de crédito (chave estrangeira).
        Limite: Limite de crédito disponível no cartão.
        Data_Aprovacao: Data de aprovação do cartão de crédito.
        Fatura_Atual: Valor da fatura atual em aberto.

5. Tabela PagamentoServico

Armazena os dados sobre pagamentos de serviços feitos pelos clientes.

    Campos:
        ID_Pagamento: Identificador único do pagamento (chave primária).
        ID_Conta: Conta que realizou o pagamento (chave estrangeira).
        Servico: Nome do serviço pago (e.g., água, luz, internet).
        Valor: Valor pago pelo serviço.
        Data_Pagamento: Data em que o pagamento foi efetuado.

Relacionamentos entre Tabelas

    Conta ↔ Transacao: Relacionamento de um-para-muitos, onde uma conta pode realizar muitas transações.
    Conta ↔ Emprestimo: Relacionamento de um-para-muitos, onde uma conta pode solicitar muitos empréstimos.
    Conta ↔ CartaoCredito: Relacionamento de um-para-um, onde uma conta tem um único cartão de crédito.
    Conta ↔ PagamentoServico: Relacionamento de um-para-muitos, onde uma conta pode realizar muitos pagamentos de serviços.



  
