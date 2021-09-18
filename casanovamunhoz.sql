-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Set-2021 às 12:32
-- Versão do servidor: 10.5.12-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u660885779_casanova`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `client` varchar(200) DEFAULT NULL,
  `contato` varchar(200) DEFAULT NULL,
  `date_sale` datetime DEFAULT NULL,
  `email_confirm` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `link`, `status`, `client`, `contato`, `date_sale`, `email_confirm`) VALUES
(31, 'Escorredor de arroz - Preto', NULL, 'https://www.magazineluiza.com.br/escorredor-de-arroz-caribe-plastico-nitron/p/cbeg8kbgch/ud/esaz/?&seller_id=fullhub&&utm_source=google&utm_medium=pla&utm_campaign=&partner_id=58988&gclid=CjwKCAjw64eJBhAGEiwABr9o2Iy-7ZLcq0NQe0tgfGbXMa5HlxXQ03iratkAJJ', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(32, 'Escorredor de macarrão - Preto', NULL, 'https://www.americanas.com.br/produto/2909038377?loja=30157546000111&epar=bp_pl_00_go_ab_todas_geral_gmv&opn=YSMESP&WT.srch=1&acc=e789ea56094489dffd798f86ff51c7a9&i=5f4dc4eb49f937f625751023&o=602d2827f8e95eac3d84c5a8&gclid=CjwKCAjw64eJBhAGEiwABr9o2P1', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(35, 'Secador de salada - preto', NULL, 'https://www.1001novidades.com.br/casa-e-cia/utilidades-domesticas/secadores-de-salada/secador-de-salada-e-verduras-centrifuga-manual-dr-util', 0, NULL, NULL, NULL, 0),
(36, 'Escumadeira de silicone - preto', NULL, 'https://pt.aliexpress.com/item/1005001344416641.html?src=google&albch=shopping&acnt=768-202-3196&slnk=&plac=&mtctp=&albbt=Google_7_shopping&isSmbAutoCall=false&needSmbHouyi=false&albcp=11863430619&albag=120632188052&trgt=1234649595526&crea=pt10050013', 0, NULL, NULL, NULL, 0),
(37, 'Espátula Silicone - Preto', NULL, 'https://pt.aliexpress.com/item/1005001344416641.html?src=google&albch=shopping&acnt=768-202-3196&slnk=&plac=&mtctp=&albbt=Google_7_shopping&isSmbAutoCall=false&needSmbHouyi=false&albcp=11863430619&albag=120632188052&trgt=1234649595526&crea=pt10050013', 0, NULL, NULL, NULL, 0),
(38, 'Concha Silicone - Preta', NULL, 'https://mixt.com.br/produto/047-concha-de-silicone-preta?gclid=Cj0KCQjwjo2JBhCRARIsAFG667V2VZvSu46vZ3818OEjmpzQ91f7RR2jvrZvN85V0_n-OqmcetraFkUaAn08EALw_wcB', 0, NULL, NULL, NULL, 0),
(39, 'Colher Arroz - Inox', NULL, 'https://www.amazon.com.br/Colher-Brinox-Beli-24cm-Inox/dp/B077LJYCSG/ref=asc_df_B077LJYCSG/?tag=googleshopp00-20&linkCode=df0&hvadid=379727341882&hvpos=&hvnetw=g&hvrand=8250320748977780342&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1', 0, NULL, NULL, NULL, 0),
(40, 'Pegador de Massas silicone - Preto', NULL, 'https://www.americanas.com.br/produto/2136088831?sellerId=33014556000196&epar=bp_pl_00_go_lasa_lia_gmv&opn=YSMESP&WT.srch=1&acc=e789ea56094489dffd798f86ff51c7a9&i=5b3cd65eeec3dfb1f8dca128&o=null&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VvgyQxsxFwRX43Ks8MFrWV2', 0, NULL, NULL, NULL, 0),
(41, 'Pegador de Salada Silicone - Preto', NULL, 'https://www.clubeextra.com.br/produto/662517?storeId=241&utm_source=Google&utm_medium=Shopping&utm_campaign=extra-mktplace-geral-smart&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VuJM2SfcrmhHzY_s3LeZT5qhzYIcChuE6rjX2BgP_RelRcLthIlN0aAphSEALw_wcB', 0, NULL, NULL, NULL, 0),
(42, 'Espátula de bolo - Inox', NULL, 'https://www.camicado.com.br/p/espatula-para-bolo-pacific-26-cm-tramontina/-/A-300032073-br.lc?', 0, NULL, NULL, NULL, 0),
(43, 'Conjunto de Peneira (P, M, G) - Inox', NULL, 'https://www.magazineluiza.com.br/jogo-de-3-peneiras-de-aco-inox-luxo-utensilios-de-cozinha-albema/p/cajakc313d/ud/enei/?&seller_id=clickurbano&&utm_source=google&utm_medium=pla&utm_campaign=&partner_id=54222&gclid=Cj0KCQjwjo2JBhCRARIsAFG667UhgOTMim6Q', 0, NULL, NULL, NULL, 0),
(44, 'Colher de Silicone - Preta', NULL, 'https://www.soubarato.com.br/produto/1912595529/kit-com-11-pecas-utensilios-de-cozinha-em-silicone-e-cabo-de-madeira-resistente-a-altas-temperaturas?WT.srch=1&WT.srch=1&acc=7a57dcbe3aba7d550b1eece2c2e302b6&condition=NEW&cor=Black&epar=bp_pl_00_go_sho', 0, NULL, NULL, NULL, 0),
(45, 'Faqueiro Tramontina Leme Cinza - 24 peças', NULL, 'https://www.americanas.com.br/produto/1826767494?opn=YSMESP&sellerid=18552346000168', 0, NULL, NULL, NULL, 0),
(46, 'Jogo de Copos SM Aruba Rocks 345ml com 6  peças', NULL, 'https://www.casaevideo.com.br/conjunto-6-copos-longos-360ml-opera-nadir-figueiredo/p?idsku=5331&gclid=Cj0KCQjwjo2JBhCRARIsAFG667UI54ivgZAZSL0qTSFe_Izg7zNrWSz-YPgAwK_1q0BkJEzryraaei8aAlBvEALw_wcB', 0, NULL, NULL, NULL, 0),
(47, 'Jogo de Taças para Cerveja Floripa Nadir 300 ml com 6 peças', NULL, '', 1, 'Pedro da Silva', 'pedrohls@id.uff.br', '2021-08-30 14:51:18', 1),
(48, 'Jogo de Taças Para Vinho Nadir Celebra 400ml 6 Peças', NULL, 'https://www.magazineluiza.com.br/jogo-de-tacas-para-vinho-vidro-385ml-6-pecas-nadir-barone/p/142245300/ud/tavi/?&force=2&seller_id=magazineluiza&&utm_source=google&utm_medium=pla&utm_campaign=&partner_id=58987&gclid=Cj0KCQjwjo2JBhCRARIsAFG667UabElsoq', 0, NULL, NULL, NULL, 0),
(49, 'Conjunto de Prato Duralex Opaline Petala', NULL, 'https://www.americanas.com.br/produto/41918581?pfm_carac=Produtos%20Patrocinados&pfm_index=2&pfm_page=search&pfm_pos=search.2&pfm_type=vit_spacey&api=b2wads&chave=b2wads_610d6649d54f610016a565c5_86046463000100_41918581_41f39a12-3ccd-46d9-8eb1-aff23c0', 0, NULL, NULL, NULL, 0),
(50, 'Colher de Sorvete - Inox', NULL, 'https://www.amazon.com.br/Colher-para-Sorvete-Asti-Preto/dp/B0772SFGWP/ref=asc_df_B0772SFGWP/?tag=googleshopp00-20&linkCode=df0&hvadid=405197744065&hvpos=&hvnetw=g&hvrand=5513344495848759784&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy', 0, NULL, NULL, NULL, 0),
(51, 'Cortador de pizza - Inox', NULL, 'https://www.gimba.com.br/utensilios/cortador-de-pizza-aco-inox-1-un-colonial/?PID=73221&utm_source=googleshopping&utm_medium=googleshopping&utm_campaign=googleshopping&gclid=Cj0KCQjwjo2JBhCRARIsAFG667V2aVtvvNB5qzoaUlGfUmsdj_Vllcs8IixPTsDkUX7C_tSFweiZ', 0, NULL, NULL, NULL, 0),
(52, 'Tesoura Cozinha', NULL, 'https://www.kalunga.com.br/prod/tesoura-domestica-17-7cm-color-25950-147-tramontina-bt-1-un/674749?pcID=39&gclid=Cj0KCQjwjo2JBhCRARIsAFG667WDnLnzPesvadnonIkTG2REnbCcksLlZTdyXhOP3lz-XMNPZ4WYHcsaAjWAEALw_wcB', 0, NULL, NULL, NULL, 0),
(53, 'Mantegueira - Preta', NULL, 'https://santistadecora.com.br/pr/manteigueira-break/BREAKPTEZMANPTF?gclid=Cj0KCQjwjo2JBhCRARIsAFG667Xc1H2JZlefXSt0FEx2ry4clGEqXj_fIM5iavk_CYY3KUxq1zn2G6caAqarEALw_wcB', 0, NULL, NULL, NULL, 0),
(54, 'Queijeira - Preta', NULL, 'https://www.amazon.com.br/Porta-Queijo-Coza-10134-3008/dp/B07C5P8YVQ/ref=asc_df_B07C5P8YVQ/?tag=googleshopp00-20&linkCode=df0&hvadid=379708144218&hvpos=&hvnetw=g&hvrand=12761541089179592611&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=', 0, NULL, NULL, NULL, 0),
(55, 'Porta Frios - Preto', NULL, 'https://www.casaevideo.com.br/porta-frio-duplo-reto-ou-break-pf450-chumbo-/p?idsku=19365', 0, NULL, NULL, NULL, 0),
(56, 'Jarra de Suco - Vidro', NULL, 'https://www.amazon.com.br/Jarra-1-500-Lts-Incolor-Luvidarte/dp/B07RCHXRMV/ref=asc_df_B07RCHXRMV/?tag=googleshopp00-20&linkCode=df0&hvadid=379715635857&hvpos=&hvnetw=g&hvrand=816618876642562717&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocp', 0, NULL, NULL, NULL, 0),
(57, 'Pote de Micronda -  Tampa Preta', NULL, 'https://www.casaevideo.com.br/conjunto-6-potes-quadrado-500ml-leve-6-pague-5-sao-bernardo/p?idsku=5633&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VTsAdcY8oV5nw6WVvVFWKTakv3wUYqhxRN3MVlSZ1qqOiAs_walfQaAv3KEALw_wcB', 1, 'Aretuza', 'aretuzacosta@yahoo.com.br', '2021-08-27 13:14:27', 1),
(58, 'Tabua de Carne vidro temperado', NULL, 'https://www.americanas.com.br/produto/2449030306?WT.srch=1&opn=YSMESP&sellerid=18552346000168&epar=bp_pl_00_go_ab_todas_geral_gmv&acc=e789ea56094489dffd798f86ff51c7a9&i=56f30ab2eec3dfb1f8ebb847&o=5f9c2c8ff8e95eac3d6334da&gclid=Cj0KCQjwjo2JBhCRARIsAFG', 0, NULL, NULL, NULL, 0),
(60, 'Toalha de mesa quadrada 120x120', NULL, '', 0, NULL, NULL, NULL, 0),
(61, 'Pano de Prato (3)', NULL, '', 1, 'Maria Luisa da Silva Corrêa de Carvalho', 'bibliotecariamalu@gmail.com', '2021-08-27 00:12:29', 1),
(62, 'Pano de Prato (3)', NULL, '', 0, NULL, NULL, NULL, 0),
(63, 'Pano de Prato (3)', NULL, '', 0, NULL, NULL, NULL, 0),
(64, 'Porta Guardanapo ', NULL, 'https://www.riachuelo.com.br/porta-guardanapo-terrazzo-casa-riachuelo-preto-12x13-5cm-13707841001_sku?gclid=Cj0KCQjwjo2JBhCRARIsAFG667WWt0QotMgIFsR3TZzbA0_883WkoVl7NzxeHNLpEQefBudSJK3xMdkaAjaUEALw_wcB', 1, 'Aretuza', 'aretuzacosta@yahoo.com.br', '2021-08-27 13:14:27', 1),
(65, 'Tabua de frios', NULL, 'https://produto.mercadolivre.com.br/MLB-1738019598-tabua-carne-frios-petisco-legumes-teca-25x25-porcelana-_JM?matt_tool=18956390&utm_source=google_shopping&utm_medium=organic', 0, NULL, NULL, NULL, 0),
(67, 'Açucareiro - Preto', NULL, '', 1, 'Janaína ', 'maria.janaina2401@gmail.com', '2021-08-27 07:25:47', 1),
(68, 'Forma de bolo redonda ', NULL, '', 0, NULL, NULL, NULL, 0),
(69, 'Forma de Bolo Retangular', NULL, '', 0, NULL, NULL, NULL, 0),
(70, 'Forma de Pudim', NULL, '', 1, 'Jessika Saboia de Moraes', 'jessikasaboia@gmail.com', '2021-09-10 16:22:25', 1),
(71, 'Conjunto de Tigelas Fundas, 4 Peças, Inox', NULL, 'https://www.casasbahia.com.br/Conjunto-de-Tigelas-Rasas-Euro-Home-em-Inox-IN9024-4-Pecas-19522/p/19522?utm_medium=Cpc&utm_source=GP_PLA&IdSku=19522&idLojista=10037&gclid=Cj0KCQjwjo2JBhCRARIsAFG667UTod3tP6WNPGIbUhckvVgocAwAw7MGPmOI06K144K4IImjObIeKYka', 0, NULL, NULL, NULL, 0),
(72, 'Jogo Americano 6 peças', NULL, '', 0, NULL, NULL, NULL, 0),
(73, 'Jogo de Luva e Descanso de Panela', NULL, 'https://www.americanas.com.br/produto/2522401670?opn=YSMESP&epar=bp_pl_00_go_pla_ud_geral_gmv&sellerid=14551237000175&WT.srch=1&acc=e789ea56094489dffd798f86ff51c7a9&i=5aac915beec3dfb1f8689a13&o=5fad4bbbf8e95eac3dfd66c7&gclid=Cj0KCQjwjo2JBhCRARIsAFG66', 1, 'Sergio Pinheiro Rodrigues ', 'pinheiro_649@hot.comail.com', '2021-08-27 12:47:23', 1),
(74, 'Cesto de roupa - Preto', NULL, '', 0, NULL, NULL, NULL, 0),
(75, 'Kit Porta sabonete Liquido e Escova de dente - Vermelho', NULL, 'https://www.submarino.com.br/produto/1596000140?opn=XMLGOOGLE&sellerid=25231894000151&cor=Vermelho', 0, NULL, NULL, NULL, 0),
(76, 'Toalha de Piso (2)', NULL, '', 0, NULL, NULL, NULL, 0),
(77, 'Toalha de Piso (2)', NULL, '', 0, NULL, NULL, NULL, 0),
(78, 'Toalha de Piso (2)', NULL, '', 0, NULL, NULL, NULL, 0),
(79, 'Tabua de passar roupa', NULL, '', 0, NULL, NULL, NULL, 0),
(80, 'Prendedores de roupa', NULL, '', 1, 'Aretuza', 'aretuzacosta@yahoo.com.br', '2021-08-27 13:14:27', 1),
(81, 'Varal De Chão Alumínio 139x56cm', NULL, '', 0, NULL, NULL, NULL, 0),
(84, 'Kit Toalha de Banho e Rosto ', NULL, 'https://www.riachuelo.com.br/jogo-de-banho-casa-riachuelo-by-buddemeyer-2-pecas-100-algod-o-lea-cinza-chumbo-14135019001_sku?gclid=Cj0KCQjwjo2JBhCRARIsAFG667WPT4NkxBOeQrdlzU6KlmJyXEIhIrlUz_G0akZsoZTAK_zINO2sXUwaAosaEALw_wcB', 1, 'Paola Rangel Fiori', 'paolarangel.adm@gmail.com', '2021-08-27 09:11:00', 1),
(85, 'Jogo de toalhas 5 peças', NULL, 'https://www.americanas.com.br/produto/1707669568?sellerid=4740770000989&opn=YSMESP&epar=bp_pl_00_go_cmb_todas_geral_gmv&WT.srch=1&acc=e789ea56094489dffd798f86ff51c7a9&i=5e193ee149f937f625aa78d5&o=5ebcbec9f8e95eac3db05d9f&gclid=Cj0KCQjwjo2JBhCRARIsAFG', 0, NULL, NULL, NULL, 0),
(86, 'Kit Lençol e Fronha Casal', NULL, 'https://www.riachuelo.com.br/jogo-de-cama-casal-3-pecas-malha-abstrato-azul-escuro-casa-riachuelo-14204738001_sku?gclid=Cj0KCQjwjo2JBhCRARIsAFG667UQjWm2GO6FLnVG1UAj57SWQsobGVdk_yaw6h7tB27-Zd2A9gX-3qYaAngoEALw_wcB', 0, NULL, NULL, NULL, 0),
(87, 'Kit Lençol e Fronha Casal', NULL, 'https://www.riachuelo.com.br/jogo-de-cama-casa-riachuelo-malha-casal-13925849001_sku?gclid=Cj0KCQjwjo2JBhCRARIsAFG667Vv7MdujBDrD9j1ovX7pp7OIdUOpHf9lkMH3mj2MqxGhcHdxcv7_MYaAhifEALw_wcB', 0, NULL, NULL, NULL, 0),
(88, 'Mixer e Multiprocessador 127v', NULL, 'https://www.magazineluiza.com.br/mixer-lenoxx-3-em-1-preto-600w-pmx-403-2-velocidades/p/218458000/ep/mixe/?&force=2&seller_id=magazineluiza&&utm_source=google&utm_medium=pla&utm_campaign=&partner_id=58949&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VfKX7cOwSWaee', 0, NULL, NULL, NULL, 0),
(89, 'Torradeira Preta 127v', NULL, 'https://www.pontofrio.com.br/torradeira-eletrica-cadence-tor104-750w-127v-1500034610/p/1500034610?utm_medium=cpc&utm_source=GP_PLA&IdSku=1500034610&idLojista=34030&utm_campaign=3P_Eletroportateis_SSC&gclid=Cj0KCQjwjo2JBhCRARIsAFG667XFWn3aAmsqNYmeHluE', 0, NULL, NULL, NULL, 0),
(90, 'Passadeira a vapor (Steamer) 127 v', NULL, 'https://www.casasbahia.com.br/passadeira-a-vapor-mondial-steam-premium-vp-01-preto-prata-195980/p/195980?utm_medium=Cpc&utm_source=GP_PLA&IdSku=195980&idLojista=10037&utm_campaign=elpo_smart-shopping&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VyRNBvPd5nCdLz5PhT', 0, NULL, NULL, NULL, 0),
(91, 'Aspirador de pó vertical - 127v', NULL, 'https://www.pontofrio.com.br/aspirador-de-po-britania-2-em-1-dust-off-bas1250p-1250w-preto-55012396/p/55012396?utm_medium=cpc&utm_source=GP_PLA&IdSku=55012396&idLojista=16&gclid=Cj0KCQjwjo2JBhCRARIsAFG667VVLQVVS5zLx-58SxvP5m9SIP87cLYB4wrCZTCYy8xpbGPy', 1, 'Raissa', 'rcdaris@gmail.com', '2021-08-30 14:15:56', 1),
(92, 'Almofadas Amarelo Claro ou Cinza', NULL, '', 0, NULL, NULL, NULL, 0),
(93, 'Endredon Casal', NULL, 'https://www.zelo.com.br/edredom-zelo-super-soft-casal-170-fios-0-p994190?pp=/44.3683/&tsid=17&gclid=Cj0KCQjwjo2JBhCRARIsAFG667ULFxa1mK8addxln_wbfbK5bWik1LUbP4y02IaR_0bWURq_dmwcp0QaAqLYEALw_wcB', 0, NULL, NULL, NULL, 0),
(94, 'Endredon Solteiro', NULL, 'https://www.zelo.com.br/edredom-zelo-super-soft-solteiro-plus-170-fios-p991711?pp=/44.4474/&tsid=17&gclid=Cj0KCQjwjo2JBhCRARIsAFG667XdIsFtMDhVUCX_CycS6jEhxay8ufMiUt8CdrS5PWdx09yUJ7WUt_QaAiCxEALw_wcB', 0, NULL, NULL, NULL, 0),
(95, 'Kit Lençol e Fronha Solteiro', NULL, 'https://www.havan.com.br/jogo-de-cama-solteiro-malha-slim-2-pecas-pure/p?gclid=Cj0KCQjwjo2JBhCRARIsAFG667WuNKp78SXnLbWCEsratCMcGhEYxYTGRl5a-vGQTz0XsG9e3ltDUsIaAvLfEALw_wcB', 0, NULL, NULL, NULL, 0),
(96, 'Kit Lençol e Fronha Solteiro', NULL, 'https://www.riachuelo.com.br/jogo-de-cama-solteiro-2-pecas-malha-abstrato-azul-escuro-casa-riachuelo-14204665001_sku?gclid=Cj0KCQjwjo2JBhCRARIsAFG667UyPOKLIYbDJJiHY1GZ5nBn7mH4TtiO65XvY776drq_qf0C4RlOy8UaAlzZEALw_wcB', 0, NULL, NULL, NULL, 0),
(104, 'Garrafa Térmica - Preta', NULL, 'https://www.amazon.com.br/Viena-0-75L-Invicta-100396510105-Preto/dp/B01LZP6SDK/ref=asc_df_B01LZP6SDK/?tag=googleshopp00-20&linkCode=df0&hvadid=379727342281&hvpos=&hvnetw=g&hvrand=2761772316707712377&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&', 1, 'Elizabeth Therezinha Passos Sezinando', 'bethssezinando@gmail.com', '2021-08-26 22:46:08', 1),
(105, 'Fruteira mesa - Preta ', NULL, 'https://www.decoreplace.com.br/utilidades-domesticas/cozinha/fruteira/fruteira-de-mesa-aramado-metalizado-redonda-preta-10-5x27-cm', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(106, 'Sanduicheira Preta 127 v', NULL, 'https://www.magazineluiza.com.br/sanduicheira-e-grill-antiaderente-black-750w-agratto/p/jh4j2gf092/ep/gset/', 1, 'Ray Kleber', 'raykleber10@gmail.com', '2021-08-26 22:52:23', 1),
(107, 'Espatula Manteiga - Inox', NULL, '', 0, NULL, NULL, NULL, 0),
(108, 'Colher de Pau', NULL, '', 1, 'Danilo', 'dribeiro1480@gmail.com', '2021-08-26 23:02:51', 1),
(109, 'Endredon Casal', NULL, '', 0, NULL, NULL, NULL, 0),
(110, 'Conjunto de Bowl Cerâmica 4 peças Preto', NULL, '', 0, NULL, NULL, NULL, 0),
(111, 'Jogo de Taças de Sobremesa Nadir Paulista 220 ml com 6 peças', NULL, '', 0, NULL, NULL, NULL, 0),
(112, 'Kit Lençol e Fronha Casal', NULL, '', 1, 'Paola Rangel Fiori', 'paolarangel.adm@gmail.com', '2021-08-27 09:11:00', 1),
(113, 'Kit Lençol e Fronha Solteiro', NULL, '', 0, NULL, NULL, NULL, 0),
(114, 'Puxa-Saco / Sacola', NULL, '', 1, 'Clesia da Silva Souza ', 'clesia_ss@hotmail.com', '2021-08-27 08:09:08', 1),
(115, 'Kit Lençol e Fronha Casal	', NULL, '', 0, NULL, NULL, NULL, 0),
(116, 'Kit Lençol e Fronha Solteiro', NULL, '', 0, NULL, NULL, NULL, 0),
(117, 'Kit Toalha de Banho e Rosto', NULL, '', 1, 'Tamyres', 'tamyres.fernandes_@hotmail.com', '2021-08-27 12:14:18', 1),
(118, 'Kit Toalha de Banho e Rosto', NULL, '', 0, NULL, NULL, NULL, 0),
(119, 'Kit Toalha de Banho e Rosto', NULL, '', 0, NULL, NULL, NULL, 0),
(120, 'Varal De Teto Alumínio 120x56cm', NULL, '', 0, NULL, NULL, NULL, 0),
(121, 'Jogo Americano 6 peças', NULL, '', 1, 'Sergio Pinheiro Rodrigues ', 'pinheiro_649@hot.comail.com', '2021-08-27 12:47:23', 1),
(122, 'Abridor de latas', NULL, '', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(123, 'Abridor de garrafas', NULL, '', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(124, 'Copo Medidor', NULL, '', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(125, 'Descanso de Panela', NULL, '', 1, 'Janaína ', 'maria.janaina2401@gmail.com', '2021-08-27 07:25:47', 1),
(126, 'Cabides', NULL, '', 1, 'Danilo', 'dribeiro1480@gmail.com', '2021-08-26 23:02:51', 1),
(127, 'Escova para Vaso Sanitário', NULL, '', 0, NULL, NULL, NULL, 0),
(128, 'Desentupidor de Pia', NULL, '', 1, 'Cristiane Aparecida Munhoz Faggion', 'crisfaggion@gmail.com', '2021-08-31 11:13:46', 1),
(129, 'Porta Sabão em Pó', NULL, '', 0, NULL, NULL, NULL, 0),
(130, 'Saca Rolha', NULL, '', 1, 'Aretuza', 'aretuzacosta@yahoo.com.br', '2021-08-27 13:14:27', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Carina Munhoz de Lima', 'carinamunhoz@id.uff.br', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
