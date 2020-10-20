-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 21:11
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Jogos'),
(3, 'Cultura'),
(4, 'Entretenimento'),
(5, 'Educação'),
(6, 'Saúde'),
(7, 'Política');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Cyberpunk 2077 terá sincronização labial com a dublagem em português', 'A JaliResearch, empresa especializada em animações faciais 3D, divulgou um vídeo explicando uma de suas tecnologias utilizada em Cyberpunk 2077: todos os personagens do jogo terão seus lábios sincronizados com a voz em dez línguas diferentes - incluindo o português brasileiro.\r\n\r\nA tecnologia da JaliResearch permite que a sincronização dos lábios seja feita mesmo que não haja qualquer tipo de captura facial. A empresa utiliza transcrições de texto, palavras-chave e a própria voz dos dubladores como base para a animação; depois, uma inteligência artificial reconhece os fonemas, o volume do áudio e também o seu tom, gerando a animação final dos lábios.\r\n\r\nA própria CD Projekt já havia automatizado as animações de diálogo em The Witcher 3, que foram feitas, em sua maioria, por meio de um algoritmo. A parceria com a JaliResearch promete levar esse conceito a outro patamar, incluindo movimentações realistas dos olhos, músculos da face e também do pescoço - alguns exemplos de resultados podem ser encontrados no vídeo acima.\r\n\r\nAmbicioso, Cyberpunk 2077 chega em 19 de novembro para PlayStation 4, Xbox One e PC.', 3, 2, 5, 10, 2020),
(2, 'Libertadores: veja onde assistir ao sorteio das oitavas de final', 'A Conmebol vai realizar o sorteio das oitavas de final da Libertadores na próxima sexta-feira (23). O evento acontecerá a partir das 12h (horário de Brasília) e será transmitido pelo Fox Sports. O sorteio definirá todo o chaveamento da fase mata-mata. Os times estarão divididos em dois potes: em um, os oito primeiros colocados da fase de grupos e, em outro, os oito segundos. Os confrontos serão disputados em formato ida e volta — com vantagem de decidir em casa para os líderes das chaves.\r\nA final da Libertadores está prevista para o fim do mês de janeiro de 2021 e será disputada em jogo único no Maracanã.\r\n', 4, 1, 19, 10, 2020),
(3, 'Após senador ampliar licença, Barroso suspende afastamento, e STF retira caso da pauta', 'O ministro Luís Roberto Barroso, do Supremo Tribunal Federal (STF), suspendeu nesta terça-feira (20) os efeitos da decisão que determinou o afastamento do senador Chico Rodrigues (DEM-RR) do mandato. A decisão foi tomada após Chico Rodrigues ter se licenciado por 121 dias.\r\n\r\nChico Rodrigues foi flagrado na semana passada pela Polícia Federal com R$ 33 mil na cueca, e o plenário do STF julgaria o afastamento do parlamentar nesta quarta-feira.\r\n\r\nNo entanto, após o senador se licenciar, Barroso entendeu que \"não mais se torna necessária a submissão imediata da matéria ao plenário\". Assim, atendendo a um pedido do ministro, o presidente do STF, Luiz Fux, retirou o caso da pauta de julgamentos desta quarta.\r\n\r\nO suplente de Chico Rodrigues, Pedro Arthur Rodrigues, que é filho do parlamentar, deve ser convocado a assumir o mandato.', 5, 7, 18, 10, 2020),
(4, 'Universidades federais, que podem perder recursos em 2021, são responsáveis por quase 70% das notas máximas no Enade', 'O índice, divulgado nesta terça-feira (20) pelo Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira (Inep), mede a qualidade dos cursos com base no desempenho dos alunos no Enade (Exame Nacional de Desempenho de Estudantes).\r\n\r\nEm 2019, a prova avaliou o conhecimento de quem estava prestes a se formar nas áreas de ciências agrárias, ciências da saúde, engenharias, arquitetura e urbanismo; e nos cursos tecnológicos de ambiente e saúde, produção alimentícia, recursos naturais, área militar e segurança.\r\n\r\nO Conceito Enade varia de 1 a 5 - quanto mais alta for a pontuação, melhor o desempenho dos estudantes. De 8.368 cursos, 510 atingiram a maior “nota”.\r\n\r\nÉ preciso considerar também o número de cursos de cada esfera administrativa. Mais uma vez, as federais têm destaque: de 1.426 instituições, 23,9% receberam conceito 5. Entre as 6.360 universidades privadas, apenas 1,4% obtiveram a avaliação máxima.', 3, 5, 13, 10, 2020),
(5, 'Professor conhecido por piscina com suástica desiste das eleições em SC', 'O candidato a vereador em Pomerode Wandercy Antonio Pugliesi, que ficou conhecido por manter uma piscina com uma suástica nazista em casa, desistiu oficialmente de concorrer a vereador nas eleições municipais 2020. Em uma carta, o professor comunicou a decisão ao Tribunal Superior Eleitoral (TSE).\r\n\r\nO documento foi anexado no processo de candidatura de Pugliesi na tarde de domingo (18). No texto, o professor disse que a decisão é definitiva e irrevogável. Ele estava filiado ao Partido Liberal (PL) quando se candidatou.\r\n\r\nEm 8 de outubro, após a candidatura do professor ser divulgada, o PL de Santa Catarina emitiu uma nota afirmando que iria expulsá-lo do partido “por não compactuar ideologicamente” com ele. No mesmo dia, à noite, a legenda informou que Pugliesi havia pedido desligamento.', 2, 7, 20, 10, 2020),
(6, 'Brasil passa de 153 mil mortos por Covid, e média móvel de óbitos volta a ficar acima de 500', 'O consórcio de veículos de imprensa divulgou novo levantamento da situação da pandemia de coronavírus no Brasil a partir de dados das secretarias estaduais de Saúde, consolidados às 20h desta sexta-feira (16).\r\n\r\nO país registrou 716 mortes pela Covid-19 nas últimas 24 horas, chegando ao total de 153.229 óbitos desde o começo da pandemia. Com isso, a média móvel de mortes no Brasil nos últimos 7 dias foi de 505. O dado voltou a ficar acima da marca dos 500 após três dias com números inferiores.\r\n\r\nA variação foi de -23% em relação aos dados registrados em 14 dias, ou seja, apontando tendência de queda. É o 5º dia seguido com a curva de mortes indicando queda, após 28 dias em estabilidade.\r\n\r\nEm casos confirmados, desde o começo da pandemia 5.201.570 brasileiros já tiveram ou têm o novo coronavírus, com 30.574 desses confirmados no último dia. A média móvel de novos casos foi de 20.626 por dia, uma variação de -23% em relação aos casos registrados em 14 dias. Ou seja, também encontra-se na faixa que aponta queda.\r\n\r\n', 1, 6, 16, 10, 2020),
(7, 'Flor do Caribe registra novo recorde de audiência', 'Em São Paulo, a novela Flor do Caribe registrou recorde de audiência às segundas-feiras no último dia 19. O folhetim registrou 23 pontos de média e 34% de participação. Mas essa não foi o único bom resultado marcado por uma novela da emissora no mesmo dia.\r\n\r\nExibida logo depois, a novela Haja Coração igualou a maior audiência da novela e o maior share, com 28 pontos de audiência e 41% de participação. A Força do Querer igualou o recorde de audiência da novela, com 31 pontos de média e 46% de participação.\r\n\r\nNo Rio de Janeiro, Haja Coração registrou 25 pontos de média e 40% de participação. Números que representam 1 ponto (+4%) acima da audiência registrada na segunda-feira anterior (estreia), 12 de outubro (24 de audiência e 41% de participação).', 3, 4, 18, 9, 2020),
(8, 'DJ José Padilla, ícone das festas em Ibiza, morre aos 64 anos', 'Símbolo das festas de Ibiza, o produtor musical espanhol José Padilla faleceu no domingo (18), aos 64 anos, vítima de câncer, informou sua equipe.\r\n\r\n\"Com infinita tristeza comunicamos que José Padilla faleceu em paz, enquanto dormia em sua querida ilha de Ibiza\", informa uma mensagem publicada na segunda-feira (19) à noite em sua página do Facebook.', 5, 3, 30, 9, 2020),
(9, 'Camila descobre que Giovanni a visitou no hospital: \'A gente deve ter uma ligação muito forte\'', 'Após dar uma volta pela cidade, Camila vai até o hospital onde ficou internada e pede ajuda à enfermeira que a atendeu. Ela desabafa sobre não ter ninguém além das pessoas que moram na mansão, e a enfermeira menciona Giovanni (Jayme Matarazzo).\r\n\r\n\"Eu devo ter um amigo, alguma outra pessoa que eu me sinta mais conectada... entende?\", reflete Camila.\r\n\"Teve um rapaz, ele veio aqui ver você. Ele estava no seu quarto quando você saiu do coma. Disse que você segurou a mão dele. Disse também que te salvou do acidente\".\r\nA jovem fica empolgada e esperançosa com a notícia.\r\n\r\n\"Se ele me salvou do acidente e eu saí do coma enquanto estava segurando a mão dele, a gente deve ter uma ligação muito forte, né?\"\r\n', 1, 4, 20, 10, 2020),
(10, 'Investimento público na educação ajudou a distribuir renda no Brasil, afirma levantamento', 'Um estudo que analisou investimentos públicos na educação brasileira entre 2001 e 2015 indica que os recursos aplicados na área contribuíram para distribuir renda no país e diminuir desigualdade social.\r\n\r\nEm valores não corrigidos pela inflação atual, o investimento por estudante na educação básica passou de R$ 899 em 2000 para R$ 7.273 em 2015, enquanto o da educação superior foi de R$ 8.849 para R$ 23.215.', 4, 5, 19, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Maria', 'Pereira', 'mariapereira05@hotmail.com', 11, '99658-8546', 'Mauá', 4, 10, 5, 2004),
(2, 'João', 'Martins', 'joaozinho5809@gmail.com', 11, '97854-1598', 'Santo André', 1, 19, 6, 2005),
(3, 'Ana', 'Silva', 'anasilva496@gmail.com', 11, '95684-0257', 'Ribeirão Pires', 3, 29, 2, 2005),
(4, 'Caio ', 'Rodrigues', 'caio409@gmail.com', 11, '99856-2473', 'Mauá', 7, 17, 12, 2003),
(5, 'Ágata', 'Ferreira', 'agataferreira101@hotmail.com', 11, '99655-9599', 'Ribeirão Pires', 2, 2, 3, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '2A'),
(5, '2B'),
(6, '2C'),
(7, '3A'),
(8, '3B'),
(9, '3C');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
