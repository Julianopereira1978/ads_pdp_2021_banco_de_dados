-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2021 às 19:25
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca_pessoal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `idLivro` int(11) NOT NULL,
  `nomeLivro` varchar(50) NOT NULL,
  `generoLivro` varchar(50) NOT NULL,
  `sinopseLivro` text NOT NULL,
  `editoraLivro` varchar(30) NOT NULL,
  `autorLivro` varchar(50) NOT NULL,
  `edicaoLivro` varchar(11) NOT NULL,
  `emprestadoLivro` set('sim','não') NOT NULL DEFAULT 'não',
  `emprestadoLivroPara` set('ninguém','') NOT NULL DEFAULT 'ninguém'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idLivro`, `nomeLivro`, `generoLivro`, `sinopseLivro`, `editoraLivro`, `autorLivro`, `edicaoLivro`, `emprestadoLivro`, `emprestadoLivroPara`) VALUES
(1, 'A Bíblia da Meditação', 'Auto-ajuda', 'A Bíblia da Meditação apresenta 140 técnicas passo a passo, extraídas de diversas tradições espirituais, tanto orientais como ocidentais. Este manual prático ajudará você a usar a meditação para a cura, o alívio do stress, o autoconhecimento e o crescimento espiritual. Há também muitas dicas sobre as melhores posturas de meditação, a criação de um espaço sagrado e o estabelecimento de uma prática diária de meditação. ', 'Pensamento', 'Madonna Gauding', '2ª', 'não', 'ninguém'),
(2, 'Aprendendo a Silenciar a Mente', 'Auto-ajuda', 'Meditação é sentar-se sem fazer nada - não usar seu corpo nem sua mente. É parar de pensar e deixar que a mente, sempre tagarela, silencie por conta própria. Sem esforço, de forma relaxada, fácil, como se fosse um jogo. Neste livro, você vai se encantar com o jeito leve e irreverente como Osho traduz conceitos espirituais e com sua capacidade de contar histórias. E descobrirá que, ao trocar as palavras pelo silêncio, você verá a vida com maior clareza e criatividade e tornará seu dia-a-dia mais intenso e cheio de alegria. Informações sobre o CD Junto com o livro Aprendendo a Silenciar a Mente, você recebe um CD que vai auxiliá-lo na prática da meditação nadabrahma. A meditação é dividida em três etapas. Para as duas primeiras, o CD traz duas faixas de 30 minutos cada, com músicas suaves e relaxantes. Para a terceira etapa, há uma faixa de 15 minutos de silêncio, para ajudá-lo a concentrar-se e esquecer as preocupações com o dia-a-dia. Osho adaptou para os dias de hoje a antiga tradição tibetana, que tem por objetivo sintonizar a mente e o corpo. Depois de fazer a meditação nadabrahma, você sentirá uma profunda paz interior.', 'Sextante', 'Osho', '1ª', 'não', 'ninguém'),
(3, 'O livro dos Espíritos', 'Religião e Espiritualidade', 'Na forma de perguntas e respostas, os Espíritos explicaram tudo o que a Humanidade estava preparada para receber e compreender, esclarecendo-a quanto aos eternos enigmas de sabermos de onde viemos, por que aqui estamos, e para onde vamos, facilitando, assim, ao homem, a compreensão dos mais difíceis problemas que o envolvem. Todas essas explicações estão contidas neste livro. No final desta obra, há um Índice Analítico dos Assuntos, reunindo, em ordem alfabética, todos os verbetes que podem interessar aos estudiosos. Allan Kardec, quando redigiu seus livros, escreveu para o povo, em linguagem simples, e, sendo esta uma tradução literal, a linguagem simples original ficou preservada. Além disso, e principalmente, o tradutor respeitou a integridade do livro, que deve ser considerado sagrado, e não acrescentou nem sua opinião pessoal, nem notas de rodapé que não estavam no original. ', 'Ide Editora', 'Allan Kardec', '156ª', 'não', 'ninguém'),
(4, 'TDAH - Da teoria à Prática', 'Auto-ajuda', 'Este Manual propõe orientar as pessoas interessadas em conhecer, informar-se e atuar sobre o TDA-H, facilitando dia a dia de quem vive e convive com este transtorno. Boa saúde deve ser o mais importante para se viver plenamente! Pensando fundamentalmente neste estado de plenitude, escrevi este Manual com estratégias cognitivo-comportamentais, psicoterapêuticas, pedagógicas, sociais e transpessoais para crianças com TDA-H, com objetivo de facilitar e potencializar sua vida. Contando com gente comprometida e sensível ao tema, profissionais e especialistas dão sua valiosa contribuição a esta publicação. Como nós, eles acreditam que crianças com TDA-H podem e devem estar totalmente potencializados para o êxito.', 'Wak editora', 'Clarice Peres', '1ª', 'não', 'ninguém'),
(5, 'Frida a Biografia', 'Biografia', 'Todo mundo conhece Frida Kahlo, cuja imagem, de olhar complexo sob sobrancelhas espessas, cabelos negros e roupas coloridas, é quase tão difundida quanto a de Che Guevara. Todo mundo sabe que sofreu um gravíssimo acidente na juventude, que foi casada com o grande muralista Diego Rivera, e que foi amante de Leon Trotsky. Todo mundo sabe que tinha ideias radicais em política e hábitos modernos na vida, que pintava de modo radicalmente pessoal, e que teve uma existência tão tumultuada quanto o século XX em que viveu. O que poucos sabem é que tudo o que quase todo mundo sabe sobre Frida Kahlo está longe de resumir sua vida, ou de revelar a mulher por trás do ícone da arte latino-americana moderna. Finalmente traduzida para o português, Frida – a biografia foi um dos grandes impulsionadores do revival da artista nos Estados Unidos e em todo o mundo a partir de 1983. Como sintetizou a crítica, “Por meio de sua arte, Kahlo fez de si mesma uma artista e um ícone; por meio desta biografia, ganhou também dimensão humana”. Escrito por Hayden Herrera, reconhecida historiadora da arte, o livro traz, além da intimidade da história de Frida, detalhadas descrições e interpretações dos quadros de Kahlo, escritas com o rigor e a acuidade de uma especialista, mas também com a clareza, a fluidez e a sedução de uma amante dessa arte.', 'Biblioteca Azul Glob', 'Hayden Herrera', '1ª', 'não', 'ninguém');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`idLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
