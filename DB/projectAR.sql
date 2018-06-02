USE [master]
GO
/****** Object:  Database [projectAR]    Script Date: 02/06/2018 23:42:19 ******/
CREATE DATABASE [projectAR]
GO
ALTER DATABASE [projectAR] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectAR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectAR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projectAR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projectAR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projectAR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projectAR] SET ARITHABORT OFF 
GO
ALTER DATABASE [projectAR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projectAR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projectAR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projectAR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projectAR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projectAR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projectAR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projectAR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projectAR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projectAR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projectAR] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [projectAR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projectAR] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [projectAR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projectAR] SET  MULTI_USER 
GO
ALTER DATABASE [projectAR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projectAR] SET QUERY_STORE = ON
GO
ALTER DATABASE [projectAR] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [projectAR]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [projectAR]
GO
/****** Object:  Table [dbo].[DESCRIZIONE]    Script Date: 02/06/2018 23:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCRIZIONE](
	[IDESCRIZIONE] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIZIONE] [text] NOT NULL,
	[FIELD] [int] NOT NULL,
	[LANG] [varchar](3) NOT NULL,
	[IDMONUMENTO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDESCRIZIONE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONUMENTO]    Script Date: 02/06/2018 23:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONUMENTO](
	[IDMONUMENTO] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [varchar](200) NOT NULL,
	[URLMAPS] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMONUMENTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTENTE]    Script Date: 02/06/2018 23:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTENTE](
	[IDUTENTE] [int] IDENTITY(1,1) NOT NULL,
	[USR] [varchar](15) NOT NULL,
	[PWD] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUTENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DESCRIZIONE] ON 

INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (1, N'Il Duomo di Piacenza fu edificato tra il 1122 e il 1233 ed è un bellissimo esempio di architettura romanica. La sua costruzione risale allepoca delle grandi fabbriche medievali. Lattuale edificio è stato costruito ove in precedenza era edificata la cattedrale di Santa Giustina, di cui conosciamo lesistenza e che presumibilmente si trovava nella zona dellattuale Cripta. Alcune colonne furono impiegate proprio nellattuale costruzione. A seguito di un terremoto del 1117 particolarmente distruttivo, il precedente edificio fu gravemente danneggiato e cinque anni dopo cominciarono i lavori per la costruzione dellattuale Duomo. Sulla facciata di marmo rosa e arenaria sono presenti due contrafforti e alcune gallerie cieche con sottili colonnine. I portali sono tre, sormontati da protiri e ornati da capitelli, architravi, formelle e cariatidi.', 1, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (2, N'Linterno, a croce latina, è diviso in tre navate da poderosi pilastri. Sul primo pilastro a destra è raffigurata ad affresco la "Madonna delle Grazie" mentre sugli altri pilastri sono scolpite le formelle delle corporazioni piacentine del XII secolo, dette paratici, che finanziarono la costruzione della cattedrale. Nel punto di intersezione tra la navata centrale ed il transetto si inserisce il grande tiburio ottagonale affrescato con figure di profeti da Pier Francesco Mazzucchelli detto il Morazzone (1626) e, dopo la sua morte, da Giovanni Francesco Barbieri detto il Guercino (1627). Nella parte sinistra del transetto è conservata la vasca battesimale del precedente edificio paleocristiano. La cripta, che conserva le reliquie di Santa Giustina, presenta delle splendide colonne con capitello. Vi si conservano anche tracce di affreschi un po'' ovunque, ascrivibili al XV secolo. ', 2, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (3, N'Il campanile fu costruito un secolo più tardi e nel 1341 Pietro Vago innalzò la guglia sulla quale fu collocato un angelo bronzeo, considerato il simbolo della città. Sotto la cella campanaria fu installata, per volere di Ludovico il Moro, una gabbia (oggi ancora visibile) per rinchiudervi i responsabili di reati contro la Chiesa e lo Stato. Non vi sono però documenti che attestano il suo utilizzo. ', 3, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (4, N'The Duomo of Piacenza was built between 1122 and 1233 and is a beautiful example of Romanesque architecture. The building was built in the era of the great medieval factories. The current building was built where there was the Cathedral of Santa Giustine, of which we know its existence and presumably was located in the area of the current undercroft. Some columns were used in the actual construction. Due to an earthquake in 1117 which was particularly destructive, the previous building was badly damaged and five years later began the construction of the current Cathedral. On the pink marble and sandstone facade there are two buttresses and some blind galleries with thin columns. The portals are three, surmounted by porch portals and decorated with capitals, architraves, tiles and caryatids.', 1, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (5, N'The interiors with Latin cross layout is divided into three naves by mighty pillars. On the first pillar on the right there is a fresco of the "Madonna delle Grazie" while on the other pillars are carved the tiles of the Piacenza corporations of the twelfth century, called paratici, which supported the construction of the cathedral. At the point of intersection between the central nave and the transept there is the large octagonal lantern frescoed with figures of prophets painted by Pier Francesco Mazzuchelli known as Il Morazzone (1626) and, after his death, by Giovanni Francesco Barbieri known as Guercino (1627). On the left side of the transept the baptismal font of the previous early Christian building is preserved. The crypt, which preserves the remains of Santa Giustina, has splendid columns with capitals. There are also traces of frescoes a bit everywhere, which probably belongs to the fifteenth century.', 2, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (6, N'The bell tower was built a century later and in 1341 Pietro Vago built the spire on which was placed a bronze angel, considered the symbol of the city. Under the bell cell was installed, at the behest of Ludovico il Moro, a cage (still visible today) to lock up those responsible for crimes against the Church and the State. However, there are no documents that attests its use.', 3, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (7, N'La costruzione di Palazzo Farnese si deve alla volontà della duchessa di Parma e Piacenza, Margherita dAustria (1522-1586), figlia di Carlo V(1500-1558) e moglie di Ottavio Farnese (1523-1586). Il palazzo venne fatto costruire con lo scopo di erigere una residenza ducale, che fosse luogo di rappresentanza e simbolo della potenza della famiglia Farnese. Mentre Ottavio preferì risiedere a Parma; Margherita scelse di dimorare a Piacenza. Lincarico di costruire la nuova residenza fu inizialmente affidato allarchitetto urbinate Francesco Paciotto. Nel primo progetto del palazzo, realizzato nel 1558, si proponeva di utilizzare le vecchie fondamenta del castello visconteo, fatto costruire da Galeazzo Visconti nel 1352, situato ai margini della città, verso nord, non lontano dalle rive del fiume Po.', 1, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (8, N'La prolungata assenza dellarchitetto e i problemi legati allimpossibilità di utilizzare le antiche fondamenta, suggerirono ai duchi di rivolgersi ad un altro architetto, legato alla casata farnese, cioè a Jacopo Barozzi detto il Vignola (1507-1573), che aveva già lavorato alla villa di Caprarola, commissionata dal cardinale Alessandro Farnese(1520-1589). Nel progetto, datato 1561, approvato dai duchi, il Vignola pensò di ingrandire le quattro ali delledificio e aumentare la grandezza del cortile, abbandonando liniziale idea di costruire sulle preesistenti architetture viscontee. Limpresa si concluse nel 1602; la mancanza di fondi impedì la completa realizzazione del progetto. 
La decadenza del Palazzo iniziò con lestinzione dei Farnese e il passaggio dei loro beni ai Borbone. Nel 1734 Carlo di Borbone (1716-1788), divenuto re di Napoli, trasferì quadri e arredi da Piacenza alla città partenopea. Fu saccheggiato anche dalle truppe napoleoniche nel 1803. 
', 2, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (9, N'Nel 1988 venne inaugurata la prima sezione dei Musei; la struttura museale crebbe negli anni successivi fino ad ospitare le attuali sezioni. Alla fine del 2014 il Palazzo diventa di proprietà comunale. Il percorso museale, che si sviluppa sui diversi piani del palazzo, offre al visitatore la possibilità di ammirare il monumentale scalone donore, i diversi ambiente della mole farnesiana: lappartamento del duca, con le splendide decorazioni a stucco; lappartamento della duchessa, con i soffitti affrescati con quadrature prospettiche; la Cappella Ducale, i sotterranei dove si trova la collezione delle carrozze e i sotterranei della Cittadella, dove è conservato il Fegato etrusco, modello in bronzo di fegato di pecora, unica  testimonianza diretta di pratiche religiose etrusche. ', 3, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (10, N'The construction of Palazzo Farnese is due to the will of the Duchess of Parma and Piacenza, Margaret of Austria (1522-1586), daughter of Charles V (1500-1558) and wife of Ottavio Farnese (1523-1586). The building was built with the aim of building a ducal residence, which was a place of representation and symbol of the power of the Farnese family. While Ottavio preferred to reside in Parma; Margherita chose to live in Piacenza. The task of building the new residence was initially entrusted to the architect Urbino Francesco Paciotto. In the first project of the building, built in 1558, it proposed to use the old foundations of the Visconti castle, built by Galeazzo Visconti in 1352, located on the edge of the city, to the north, not far from the banks of the river Po.', 1, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (11, N'The continuos absence of the architect, and the problems related to the impossibility of using the ancient foundations, suggested to the dukes to ask to another architect, linked to the Farnese family, that is Jacopo Barozzi called il Vignola (1507-1573), who had already worked at the villa of Caprarola, commissioned by Cardinal Alessandro Farnese (1520-1589). In the project, dated 1561, approved by the dukes, Vignola decided to enlarge the four wings of the building and increase the size of the courtyard, abandoning the initial idea of building on the existing Visconti architectures. The venture ended in 1602; the lack of funds prevented the complete realization of the project. The decadence of the Palace began with the extinction of the Farnese and the transfer of their properties to the Bourbons. In 1734 Charles of Bourbon (1716-1788), who became King of Naples, transferred paintings and furnishings from Piacenza to the city of Naples. It was also looted by the Napoleonic troops in 1803.', 2, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (12, N'In 1988 the first section of the Museums was inaugurated; the museum structure grew in the following years up to hosting the current sections. At the end of 2014, the building became a municipal property. The museum itinerary, which is developed on different floors of the building, offers to visitors the chance to admire the monumental staircase of honor, different environments of the Farnesian culture: the apartment of the duke, with its splendid stucco decorations; the apartment of the duchess, with frescoed ceilings with perspective squares; the Ducal Chapel, the undergrounds where the collection of carriages and the undergrounds of the Cittadella is located, where the Etruscan Liver is preserved, a bronze model of sheep''s liver, the only direct evidence of Etruscan religious practices.', 3, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (13, N'Un tempo chiamata Piazza Grande deve il suo nome alle due statue equestri in bronzo di Alessandro Farnese (1625) e di suo figlio duca Ranuccio (1620) opera dello scultore toscano Francesco Mochi. Ranuccio vi venne ritratto con aria flemmatica e gentile, reggente un diploma nella mano destra, abbigliato come un valoroso romano con corazza e gonnellino. Similmente riuscì aggraziato il cavallo, con una zampa agile e alzata, perfettamente domato dal proprio cavaliere. Alessandro Farnese, padre di Ranuccio, a differenza di questultimo era un guerriero valoroso e audace, appare avvolto da un mantello ampio e dinamico, in una posizione tuttaltro che classica e statica e dunque visibilmente diversa dalla statua di Ranuccio. Al cavallo, poi, Mochi diede un aspetto forsennato, con una criniera in disordine ed uno sguardo acceso, oltre ad una muscolatura anchessa mossa e plastica.  Si tratta di un vero capolavoro darte barocca. ', 1, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (14, N'La Piazza è dominata dal Palazzo Pubblico chiamato dai piacentini Gotico per lo stile delle arcate del loggiato inferiore con archi a sesto acuto in contrasto con quelli romanici in cotto del piano superiore. È ritenuto uno dei più significativi esempi italiani di Palazzo Comunale. Nel salone del primo piano, ampio ben 700 mq illuminato su tutti i lati da grandiosi finestroni e dal rosone sul lato est, si tenevano le riunioni dell''Anzianato. Sorse nel 1281 per iniziativa di Alberto Scoto, capo dellUniversità dei Mercanti e potente Signore della città. Nella torretta centrale vi è lo storico campanone, utilizzato in passato per radunare il popolo in determinate occasioni.', 2, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (15, N'Di fronte si trova il Palazzo del Governatore, che dopo il suo rifacimento settecentesco fu sede fino al 1860 degli uffici del governatore della città. Chiude la Piazza la Basilica di San Francesco, raro esempio di architettura gotico francescana. Fu costruita nel 1278 per munificenza di Umbertino Landi consentendo quindi al contrario delle altre chiese dell''ordine che questa sorgesse in pieno centro.', 3, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (16, N'Once called Piazza Grande, it owes its name to the two bronze equestrian statues of Alessandro Farnese (1625) and his son, Duke Ranuccio (1620), made by the Tuscan sculptor Francesco Mochi. Ranuccio was portrayed with a impassive and gentle air, holding a diploma in his right hand, dressed like a valorous Roman with a shell and a kilt. Likewise, he managed to grace his horse, with an agile and raised paw, perfectly tamed by his rider. Alessandro Farnese, father of Ranuccio, was a brave and daring warrior, appears wrapped in a wide and dynamic coat, in a position that isnt classical and static and with a visibly different from the statue of Ranuccio. On the horse, then, Mochi gave a wild look, with a messy mane and a bright look, as well as a muscolature too, moved and plastic. It is a true masterpiece of Baroque art.', 1, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (17, N'The square is dominated by the Palazzo Pubblico called "Gotico" for the style of the arches of the lower gallery with pointed arches in contrast with the Romanesque ones in terracotta on the upper floor. It is considered one of the most significant Italian examples of City Hall. In the first floor hall, 700 square meters wide is illuminated on all sides by majestic windows and by the rose window on the east side the Anzianato meetings were held. It was built in 1281 by request of Alberto Scoto, head of the University of Merchants and powerful lord of the city. In the central tower there is the historic bell, used in the past to group the people on certain occasions.', 2, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (18, N'In front of it there is the Governor''s Palace, which after its eighteenth-century reconstruction was the location until 1860 of the citys governor offices. The Basilica of San Francesco, a rare example of Franciscan Gothic architecture, closes the square. It was built in 1278 for the goodness of Umbertino Landi, allowing in contrary of the other churches of this order that this one was bult in the city center.', 3, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (19, N'La Galleria dArte Moderna Ricci Oddi, nata per volontà del collezionista piacentino Giuseppe Ricci Oddi (Piacenza, 1869-1937) e inaugurata nel 1931, custodisce una delle più importanti raccolte italiane di pittura e scultura dellOttocento e del primo Novecento. La collezione si caratterizza per la straordinaria omogeneità, basata sulla riconosciuta superiorità dellarte figurativa, anche se Ricci Oddi, pur senza avvicinarsi mai troppo alle avanguardie più radicali, fu attento ad alcune moderate novità dinizio Novecento, come le sfumature stilistiche del Simbolismo e le esperienze di matrice impressionista sviluppate dagli italiani più aggiornati. ', 1, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (20, N'Altra caratteristica della Galleria è lorganicità della composizione, poiché vi sono comprese solo opere dallepoca romantica in avanti, prevalentemente italiane, sforzandosi di mantenere un equilibrio fra le varie regioni, e considerando i pochi artisti stranieri per la loro influenza sugli italiani. Le sale della Galleria sono allestite armonicamente con opere dartisti raggruppati per appartenenza ad aree geografiche limitrofe, assonanze stilistiche e congruenze cronologiche e sono dedicate da un lato alle scuole regionali, dallaltro ai movimenti: Novecento italiano, Scapigliatura lombarda, Simbolismo, Orientalismo; spazi monografici sono riservati agli artisti più amati, quali Antonio Fontanesi e il piacentino Stefano Bruzzi. ', 2, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (21, N'Di particolare interesse ledificio dellarchitetto Giulio Ulisse Arata, che realizzò un ambiente progettato per esaltare la collezione, con nitore geometrico degli spazi e uninnovativa illuminazione naturale dallalto.', 3, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (22, N'The Galleria dArte Moderna Ricci Oddi, was founded by will of the collector Giuseppe Ricci Oddi (Piacenza, 1869-1937) and was inaugurated in 1931. It contains one of the most important Italian collections of painting and sculpture of the nineteenth and early twentieth century. The collection is characterized by extraordinary homogeneity, based on the acknowledged superiority of figurative art, even if Ricci Oddi, who never approached to the most radical avant-gardes, was careful to some moderate twentieth-century innovation, like the stylistic nuances of Symbolism and the experiences of an impressionist origins developed by the most innovated Italians.', 1, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (23, N'Another feature is the organic nature of the composition, since there are included only works from the romantic age onward, mainly Italian ones, struggling to maintain a balance between the various regions, and considering the few foreign artists for their influence on Italians. The rooms of the Gallery are set up with works of artists grouped by neighboring geographical areas, stylistic harmonies and chronological congruences and are dedicated on one side to regional schools, on the other to the following movements: Novecento Italiano, Scapigliatura Lombarda, Symbolism, Orientalism; monographic spaces are reserved for the most loved artists, such as Antonio Fontanesi and Stefano Bruzzi.', 2, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (24, N'Of particular interest is the building of the architect Giulio Ulisse Arata, who created an environment designed to enhance the collection, with geometrically clean spaces and innovative natural lighting from the top.', 3, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (25, N'Una prima basilica fu eretta tra il 350 e il 375 al tempo di S.Vittore, primo vescovo di Piacenza. E'' intitolata a S.Antonino, patrono della città, i cui resti furono traslati verso la fine del IV secolo nella basilica dall''ipogeo che oggi si trova sotto la chiesa di S.Maria in Cortina. Insieme a quelli di S.Vittore sono ancora conservati in un''urna sotto l''altare maggiore. Probabilmente ebbe il ruolo di cattedrale fino al IX secolo. Nel corso dei secoli fu più volte ampliata, trasformata e restaurata. Il risultato è una singolare disposizione planimetrica, a croce latina rovesciata, con alta torre ottoganale all''incrocio delle navate e l''accostamento di volumi e stili diversi che tuttavia la rendono tra le più interessanti testimonianze architettoniche di Piacenza.
', 1, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (26, N'Fu ricostruita una prima volta nel 870, forse a pianta centrale sormontata da un tiburio quadrato. Durante le invasioni ungare della prima metà del X secolo la basilica, ancora al di fuori della cinta muraria, riportò gravi danni. Nel 1004 fu ricostruita e ampliata sotto il vescovo Sigifredo, con elevazione della torre ottagonale e dei transetti. La grande importanza della Basilica è attestata dal fatto che nel 1183 vi si tennero i preliminari della Pace di Costanza, con la quale limperatore Federico Barbarossa riconosceva una certa autonomia ai Comuni italiani. Linterno risulta diviso in tre navate da poderosi pilastri. Il pavimento fu sopraelevato, lasciando, fortunatamente, in evidenza le basi delle colonne risalenti al periodo preromanico.', 2, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (27, N'Nellannesso museo sono conservati antifonari miniati della fine del XV secolo, antichi manoscritti tra cui uno risalente all''840 di re Lotario, argenterie, reliquari e dossali del Quattrocento. Importante anche l''archivio capitolare con pergamene dal VII al XIV secolo.', 3, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (28, N'A first cathedral was erected between 350 and 375 at the time of St. Vittore, the first bishop of Piacenza. It is dedicated to S. Antonino, patron saint of the city, whose remains were moved towards the end of the fourth century in the basilica which hypogeum is now located under the church of S. Maria in Cortina. Together with those of S. Vittore, they are still kept in an urn under the high altar. It probably played the role of a cathedral until the ninth century. Over the centuries it has been repeatedly enlarged, transformed and restored. The result is a unique planimetric layout, with an inverted Latin cross, with a high octogonal tower at the intersection of the aisles and the combination of different volumes and styles makes it one of the most interesting architectural testimonies of Piacenza.', 1, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (29, N'It was rebuilt for the first time in 870, perhaps with a central map surmounted by a square lantern. During the Hungarian invasions of the first half of the tenth century, the cathedral, which was still outside the city walls, suffered serious damage. In 1004 it was rebuilt and enlarged under the bishop Sigifredo, with elevation of the octagonal tower and transepts. The great importance of the Basilica is established by the fact that in 1183 the introductories of the Peace of Constance were held, with which the emperor Federico Barbarossa recognized a certain autonomy to the Italian Municipalities. The interior is divided into three naves by big pillars. The floor was raised, leaving, luckily, the bases of the columns dating back to the pre-Romanesque period.', 2, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (30, N'The annexed museum contains minuscule antiphonaries of the late fifteenth century, ancient manuscripts including one dating back to 840 of King Lothair, silverware, reliquaries and ornamental covers of the fifteenth century. The chapter archive with parchments from the 7th to the 14th century is also important.', 3, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (31, N'Il Vescovo Savino (376-420), succeduto al primo Vescovo di Piacenza, Vittore, fece costruire (394) una chiesa dedicata ai 12 Apostoli alle Mose sullasse viario che da Piacenza va a Roma, fuori dalle mura che al tempo racchiudevano il castrum. Il termine Mose, in latino, significa palude e sicuramente si trattava dellarea cimiteriale situata proprio dove ancor oggi sorge la Basilica.', 1, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (32, N'Savino fu un grande amico di SantAmbrogio di Milano che lo ricorda nelle sue lettere come il revisore dei suoi scritti teologici, in effetti Savino era un teologo conosciuto a quei tempi per aver partecipato al Concilio Romano per comporre lo scisma dOriente sorto per la nomina di Paolino a Vescovo di Antiochia al posto di San Melezio legittimo pastore (372).  E ricordato anche per il miracolo del Po ricordato nei Dialoghi di San Gregorio Magno (Papa dal 590 al 604), nel libro III che consiste nellaver fatto rientrare le acque del fiume che avevano allagato parte della città di Piacenza. Soprattutto è ricordato per il ritrovamento della tomba e quindi delle reliquie di SantAntonino (388) che depone nella stessa urna, con una divisoria, in cui venivano custodite i resti mortali di San Vittore. Organizzò la vita religiosa della giovane comunità cristiana piacentina adottandola di una liturgia propria che rimase in vigore fino al Concilio di Trento.', 2, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (33, N'Nellanno 1000, il Vescovo Sigifredo riedificò sul luogo ove sorgeva la prima basilica distrutta dai barbari, lattuale Basilica che venne consacrata il 10 ottobre 1103 dal Vescovo Aldo.  Di questo periodo sono i mosaici della cripta raffiguranti i 12 mesi dellanno, i simboli zodiacali e le attività agricole; il mosaico posto nel presbiterio (riemersi nel 1902 duranti i lavori di restauro) che rappresenta al centro il Signore del Tempo  Cristo Alfa e Omega  che tiene tra le mani il sole e la luna; nei quattro riquadri, due a destra e due a sinistra, le Virtù Cardinali: la Giustizia  rex judex, la Prudenza  la partita a scacchi, la Fortezza  i due soldati, la Temperanza  personaggi con in mano un bicchiere; dello stesso periodo è il crocifisso ligneo che si può ammirare sullaltare maggiore.', 3, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (34, N'Bishop Savino (376-420), who succeeded the first Bishop of Piacenza, Vittore, built (in 394) a church dedicated to the 12 Apostles at the "Mose" on the road that from Piacenza goes to Rome, outside the walls they enclosed the "castrum". The word "Mose", in Latin, means swamp and certainly it was the cemetery located where the Basilica is now located.', 1, N'en', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (35, N'Savino was a great friend of Sant''Ambrogio from Milan who remembers him in his letters as the editor of his theological writings, in fact Savino was a theologian known at that time for having participated at the Roman Council to compose the schism of the East. Pauline was promoted as Bishop of Antioch in instead of San Melezio the legitimate pastor (372). He is also remembered for the "miracle of the Po" mentioned in the Dialogues of St. Gregory the Great (Pope from 590 to 604), in Book III which consists in having returned the waters of the river that had flooded part of the city of Piacenza. Above all, it is remembered for the discovery of the tomb and of the relics of Sant''Antonino (388) which lays in the same urn, with a partition, in which the mortal remains of San Vittore were kept. He organized the religious life of the young christian community of Piacenza by adopting his own liturgy that remained in force until the Council of Trento.', 2, N'en', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (36, N'In the year 1000, the Bishop Sigifredo rebuilt on the place where there was the first basilica destroyed by the barbarians, the current Basilica that was consecrated October 10, 1103 by Bishop Aldo. From this period are the mosaics of the crypt representing the 12 months of the year, the zodiac symbols and the agricultural activities; the mosaic placed in the presbytery (re-emerged in 1902 during the restoration works) which represents the Lord of Time - Christ Alpha and Omega - who holds the sun and the moon in his hands; in four squares, two on the right and two on the left there are the Cardinal Virtues: the Justice - rex judex, the Prudence - the chess game, the strength - the two soldiers, the self-control - characters thar are holding a glass; from the same period is the wooden crucifix that can be seen on the main altar.', 3, N'en', 6)
SET IDENTITY_INSERT [dbo].[DESCRIZIONE] OFF
SET IDENTITY_INSERT [dbo].[MONUMENTO] ON 

INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (1, N'Duomo', N'https://www.google.com/maps/search/?api=1&query=45.0503,9.6969648&query_place_id=ChIJiS8gHvbngEcR_vqPO5xrxw4')
INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (2, N'Palazzo Farnese', N'https://www.google.com/maps/search/?api=1&query=45.0556733,9.6947029&query_place_id=ChIJo8WUjjndgEcRLVsAjFePoVQ')
INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (3, N'Piazza Cavalli', N'https://www.google.com/maps/search/?api=1&query=45.052686,9.6909183&query_place_id=ChIJOxoTsF7dgEcRfTDZnY3Y-aM')
INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (4, N'Galleria D''Arte Moderna Ricci Oddi', N'https://www.google.com/maps/place/Galleria+D''Arte+Moderna+Ricci+Oddi/@45.0484569,9.6916508,18.75z/data=!4m5!3m4!1s0x4780dd59be263eed:0x59e171dd1b093169!8m2!3d45.0484345!4d9.6920162')
INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (5, N'Piazza Sant''Antonino', N'https://www.google.com/maps/place/Basilica+di+Sant''Antonino/@45.049422,9.6938358,20z/data=!4m13!1m7!3m6!1s0x4780dd59b0473673:0xfe47d087da33b0c1!2sPiazza+Sant''Antonino,+29121+Piacenza+PC!3b1!8m2!3d45.0493501!4d9.694022!3m4!1s0x4780dd58ff9f41db:0x8105a2927ea8c0cb!8m2!3d45.049407!4d9.6945883')
INSERT [dbo].[MONUMENTO] ([IDMONUMENTO], [TITLE], [URLMAPS]) VALUES (6, N'Chiesa di San Savino', N'https://www.google.com/maps/place/Chiesa+di+San+Savino/@45.0503852,9.701263,19z/data=!4m5!3m4!1s0x4780e7f697694637:0x3355ff91a610dbe3!8m2!3d45.0503853!4d9.7016854')
SET IDENTITY_INSERT [dbo].[MONUMENTO] OFF
SET IDENTITY_INSERT [dbo].[UTENTE] ON 

INSERT [dbo].[UTENTE] ([IDUTENTE], [USR], [PWD]) VALUES (1, N'admin', N'15b421d36a6cc2028ff1d0f8f29c65ab')
SET IDENTITY_INSERT [dbo].[UTENTE] OFF
ALTER TABLE [dbo].[DESCRIZIONE]  WITH CHECK ADD FOREIGN KEY([IDMONUMENTO])
REFERENCES [dbo].[MONUMENTO] ([IDMONUMENTO])
GO
/****** Object:  StoredProcedure [dbo].[GETARRAYVALORI]    Script Date: 02/06/2018 23:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GETARRAYVALORI](
	@ID INT,
	@LANG VARCHAR(3)
)
AS
BEGIN
	SELECT FIELD, DESCRIZIONE FROM DESCRIZIONE WHERE IDMONUMENTO = @ID AND LANG = @LANG
END
GO
/****** Object:  StoredProcedure [dbo].[GETMONUMENTITILE]    Script Date: 02/06/2018 23:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GETMONUMENTITILE](
	@ID INT
)
AS
BEGIN
	SELECT TITLE FROM MONUMENTO WHERE IDMONUMENTO = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[GETURL]    Script Date: 02/06/2018 23:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GETURL](
	@ID INT
)
AS
BEGIN
	SELECT URLMAPS FROM MONUMENTO WHERE IDMONUMENTO = @ID
END
GO
USE [master]
GO
ALTER DATABASE [projectAR] SET  READ_WRITE 
GO
