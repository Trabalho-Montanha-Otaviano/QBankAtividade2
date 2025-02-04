
CREATE DATABASE QBank;

USE QBank;

CREATE TABLE Conta ('),
('ID_Conta INT PRIMARY KEY AUTO_INCREMENT'),
('Nome_Cliente VARCHAR(100) NOT NULL'),
('CPF VARCHAR(11) UNIQUE NOT NULL'),
('Saldo DECIMAL(15'),
('Data_Criacao DATE NOT NULL'),
(');
  
  CREATE TABLE Transacao ('),
('ID_Transacao INT PRIMARY KEY AUTO_INCREMENT'),
('ID_Conta_Origem INT'),
('ID_Conta_Destino INT'),
('Valor DECIMAL(15'),
('Data_Transacao DATE NOT NULL'),
('Tipo_Transacao VARCHAR(50) NOT NULL'),
('FOREIGN KEY (ID_Conta_Origem) REFERENCES Conta(ID_Conta)'),
('FOREIGN KEY (ID_Conta_Destino) REFERENCES Conta(ID_Conta)'),
(');

  
  CREATE TABLE Emprestimo ('),
('ID_Emprestimo INT PRIMARY KEY AUTO_INCREMENT'),
('ID_Conta INT'),
('Valor DECIMAL(15'),
('Data_Solicitacao DATE NOT NULL'),
('Juros DECIMAL(5'),
('Prazo INT NOT NULL'),
('FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)'),
(');
  
  CREATE TABLE CartaoCredito ('),
('ID_Cartao INT PRIMARY KEY AUTO_INCREMENT'),
('ID_Conta INT'),
('Limite DECIMAL(15'),
('Data_Aprovacao DATE NOT NULL'),
('Fatura_Atual DECIMAL(15'),
('FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)'),
(');
    
  CREATE TABLE PagamentoServico ('),
('ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT'),
('ID_Conta INT'),
('Servico VARCHAR(100) NOT NULL'),
('Valor DECIMAL(15'),
('Data_Pagamento DATE NOT NULL'),
('FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta)'),
(');');
