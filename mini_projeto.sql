CREATE TABLE `FarmaciaDoSUS` (
  `idFarmaciaDoSUS` int PRIMARY KEY,
  `nome` varchar(255),
  `localizacao` varchar(255),
  `horario_funcionamento` varchar(255),
  `telefone` varchar(255)
);

CREATE TABLE `Medicamento` (
  `idMedicamento` int PRIMARY KEY,
  `nome` varchar(255),
  `tipo` varchar(255),
  `descricao` varchar(255),
  `indicacao` varchar(255)
);

CREATE TABLE `Disponibilidade` (
  `idDisponibilidade` int PRIMARY KEY,
  `nomeMedicamento` varchar(255),
  `previsao_chegada` varchar(255),
  `indisponivel` boolean,
  `idFarmaciaDoSUS` int,
  `idMedicamento` int
);

ALTER TABLE `Disponibilidade` ADD FOREIGN KEY (`idFarmaciaDoSUS`) REFERENCES `FarmaciaDoSUS` (`idFarmaciaDoSUS`);

ALTER TABLE `Disponibilidade` ADD FOREIGN KEY (`idMedicamento`) REFERENCES `Medicamento` (`idMedicamento`);

ALTER TABLE `FarmaciaDoSUS` ADD FOREIGN KEY (`telefone`) REFERENCES `FarmaciaDoSUS` (`idFarmaciaDoSUS`);
