USE [master]
GO
/****** Object:  Database [projectAR]    Script Date: 11/06/2018 16:13:08 ******/
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
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [projectAR]
GO
/****** Object:  Table [dbo].[DESCRIZIONE]    Script Date: 11/06/2018 16:13:09 ******/
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
/****** Object:  Table [dbo].[MONUMENTO]    Script Date: 11/06/2018 16:13:09 ******/
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
/****** Object:  Table [dbo].[UTENTE]    Script Date: 11/06/2018 16:13:09 ******/
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

INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (1, N'Il%20Duomo%20di%20Piacenza%20%C3%A8%20stato%20edificato%20tra%20il%201122%20e%20il%201233%20ed%20%C3%A8%20un%20bellissimo%20esempio%20di%20architettura%20romanica.%20L%E2%80%99edificio%20fu%20edificato%20nell%E2%80%99epoca%20delle%20grandi%20fabbriche%20medievali.%20L%E2%80%99attuale%20edificio%20%C3%A8%20stato%20costruito%20ove%20in%20precedenza%20era%20edificata%20la%20cattedrale%20di%20Santa%20Giustina,%20di%20cui%20conosciamo%20l%E2%80%99esistenza%20e%20che%20presumibilmente%20si%20trovava%20nella%20zona%20dell%E2%80%99attuale%20Cripta.%20Alcune%20colonne%20furono%20impiegate%20proprio%20nell%E2%80%99attuale%20costruzione.%20A%20seguito%20di%20un%20terremoto%20del%201117%20particolarmente%20distruttivo,%20il%20precedente%20edificio%20fu%20gravemente%20danneggiato%20e%20cinque%20anni%20dopo%20cominciarono%20i%20lavori%20per%20la%20costruzione%20dell%E2%80%99attuale%20Duomo.%20Sulla%20facciata%20di%20marmo%20rosa%20e%20arenaria%20sono%20presenti%20due%20contrafforti%20e%20alcune%20gallerie%20cieche%20con%20sottili%20colonnine.%20I%20portali%20sono%20tre,%20sormontati%20da%20protiri%20e%20ornati%20da%20capitelli,%20architravi,%20formelle%20e%20cariatidi.', 1, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (2, N'L%E2%80%99interno,%20a%20croce%20latina,%20%C3%A8%20diviso%20in%20tre%20navate%20da%20poderosi%20pilastri.%20Sul%20primo%20pilastro%20a%20destra%20%C3%A8%20raffigurata%20ad%20affresco%20la%20%22Madonna%20delle%20Grazie%22%20mentre%20sugli%20altri%20pilastri%20sono%20scolpite%20le%20formelle%20delle%20corporazioni%20piacentine%20del%20XII%20secolo,%20dette%20paratici,%20che%20finanziarono%20la%20costruzione%20della%20cattedrale.%20Nel%20punto%20di%20intersezione%20tra%20la%20navata%20centrale%20ed%20il%20transetto%20si%20inserisce%20il%20grande%20tiburio%20ottagonale%20affrescato%20con%20figure%20di%20profeti%20da%20Pier%20Francesco%20Mazzuchelli%20detto%20il%20Morazzone%20(1626)%20e,%20dopo%20la%20sua%20morte,%20da%20Giovanni%20Francesco%20Barbieri%20detto%20il%20Guercino%20(1627).%20Nella%20parte%20sinistra%20del%20transetto%20%C3%A8%20conservata%20la%20vasca%20battesimale%20del%20precedente%20edificio%20paleocristiano.%20La%20cripta,%20che%20conserva%20le%20reliquie%20di%20Santa%20Giustina,%20presenta%20delle%20splendide%20colonne%20con%20capitello.%20Vi%20si%20conservano%20anche%20tracce%20di%20affreschi%20un%20po''%20ovunque,%20ascrivibili%20al%20XV%20secolo.%20', 2, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (3, N'Il%20campanile%20fu%20costruito%20un%20secolo%20pi%C3%B9%20tardi%20e%20nel%201341%20Pietro%20Vago%20innalz%C3%B2%20la%20guglia%20sulla%20quale%20fu%20collocato%20un%20angelo%20bronzeo,%20considerato%20il%20simbolo%20della%20citt%C3%A0.%20Sotto%20la%20cella%20campanaria%20fu%20installata,%20per%20volere%20di%20Ludovico%20il%20Moro,%20una%20gabbia%20(oggi%20ancora%20visibile)%20per%20rinchiudervi%20i%20responsabili%20di%20reati%20contro%20la%20Chiesa%20e%20lo%20Stato.%20Non%20vi%20sono%20per%C3%B2%20documenti%20che%20attestano%20il%20suo%20utilizzo.%20', 3, N'it', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (4, N'The%20Duomo%20of%20Piacenza%20was%20built%20between%201122%20and%201233%20and%20is%20a%20beautiful%20example%20of%20Romanesque%20architecture.%20The%20building%20was%20built%20in%20the%20era%20of%20the%20great%20medieval%20factories.%20The%20current%20building%20was%20built%20where%20there%20was%20the%20Cathedral%20of%20Santa%20Giustine,%20of%20which%20we%20know%20its%20existence%20and%20presumably%20was%20located%20in%20the%20area%20of%20the%20current%20undercroft.%20Some%20columns%20were%20used%20in%20the%20actual%20construction.%20Due%20to%20an%20earthquake%20in%201117%20which%20was%20particularly%20destructive,%20the%20previous%20building%20was%20badly%20damaged%20and%20five%20years%20later%20began%20the%20construction%20of%20the%20current%20Cathedral.%20On%20the%20pink%20marble%20and%20sandstone%20fa%C3%A7ade%20there%20are%20two%20buttresses%20and%20some%20blind%20galleries%20with%20thin%20columns.%20The%20portals%20are%20three,%20surmounted%20by%20porch%20portals%20and%20decorated%20with%20capitals,%20architraves,%20tiles%20and%20caryatids.%20', 1, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (5, N'The%20interiors%20with%20Latin%20cross%20layout%20is%20divided%20into%20three%20naves%20by%20mighty%20pillars.%20On%20the%20first%20pillar%20on%20the%20right%20there%20is%20a%20fresco%20of%20the%20%22Madonna%20delle%20Grazie%22%20while%20on%20the%20other%20pillars%20are%20carved%20the%20tiles%20of%20Piacenza%20corporations%20of%20the%20twelfth%20century,%20called%20''paratici'',%20which%20supported%20the%20construction%20of%20the%20cathedral.%20At%20the%20point%20of%20intersection%20between%20the%20central%20nave%20and%20the%20transept%20there%20is%20the%20large%20octagonal%20lantern%20frescoed%20with%20figures%20of%20prophets%20painted%20by%20Pier%20Francesco%20Mazzuchelli%20known%20as%20Il%20Morazzone%20(1626)%20and,%20after%20his%20death,%20by%20Giovanni%20Francesco%20Barbieri%20known%20as%20Guercino%20(1627).%20On%20the%20left%20side%20of%20the%20transept%20the%20baptismal%20font%20of%20the%20previous%20early%20Christian%20building%20is%20preserved.%20The%20crypt,%20which%20preserves%20the%20remains%20of%20Santa%20Giustina,%20has%20splendid%20columns%20with%20capitals.%20There%20are%20also%20traces%20of%20frescoes%20a%20bit%20everywhere,%20which%20probably%20belongs%20to%20the%20fifteenth%20century.', 2, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (6, N'The%20bell%20tower%20was%20built%20a%20century%20later%20and%20in%201341%20Pietro%20Vago%20built%20the%20spire%20on%20which%20was%20placed%20a%20bronze%20angel,%20considered%20the%20symbol%20of%20the%20city.%20Under%20the%20bell%20cell%20was%20installed,%20at%20the%20behest%20of%20Ludovico%20il%20Moro,%20a%20cage%20(still%20visible%20today)%20to%20lock%20up%20those%20responsible%20for%20crimes%20against%20the%20Church%20and%20the%20State.%20However,%20there%20are%20no%20documents%20attesting%20its%20use.', 3, N'en', 1)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (7, N'La%20costruzione%20di%20Palazzo%20Farnese%20si%20deve%20alla%20volont%C3%A0%20della%20duchessa%20di%20Parma%20e%20Piacenza,%20Margherita%20d%E2%80%99Austria%20(1522-1586),%20figlia%20di%20Carlo%20V%20(1500-1558)%20e%20moglie%20di%20Ottavio%20Farnese%20(1523-1586).%20%20%20Il%20palazzo%20venne%20fatto%20costruire%20con%20lo%20scopo%20di%20erigere%20una%20residenza%20ducale,%20che%20fosse%20luogo%20di%20rappresentanza%20e%20simbolo%20della%20potenza%20della%20famiglia%20Farnese.%20Mentre%20Ottavio%20prefer%C3%AC%20risiedere%20a%20Parma;%20Margherita%20scelse%20di%20dimorare%20a%20Piacenza.%20L%E2%80%99incarico%20di%20costruire%20la%20nuova%20residenza%20fu%20inizialmente%20affidato%20all%E2%80%99architetto%20urbinate%20Francesco%20Paciotto.%20Nel%20primo%20progetto%20del%20palazzo,%20realizzato%20nel%201558,%20si%20proponeva%20di%20utilizzare%20le%20vecchie%20fondamenta%20del%20castello%20visconteo,%20fatto%20costruire%20da%20Galeazzo%20Visconti%20nel%201352,%20situato%20ai%20margini%20della%20citt%C3%A0,%20verso%20nord,%20non%20lontano%20dalle%20rive%20del%20fiume%20Po.', 1, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (8, N'La%20prolungata%20assenza%20dell%E2%80%99architetto,%20e%20i%20problemi%20legati%20all%E2%80%99impossibilit%C3%A0%20di%20utilizzare%20le%20antiche%20fondamenta,%20suggerirono%20ai%20duchi%20di%20rivolgersi%20ad%20un%20altro%20architetto,%20legato%20alla%20casata%20farnese,%20cio%C3%A8%20a%20Jacopo%20Barozzi%20detto%20il%20Vignola%20(1507-1573),%20che%20aveva%20gi%C3%A0%20lavorato%20alla%20villa%20di%20Caprarola,%20commissionata%20dal%20cardinale%20Alessandro%20Farnese(1520-1589).%20Nel%20progetto,%20datato%201561,%20approvato%20dai%20duchi,%20il%20Vignola%20pens%C3%B2%20di%20ingrandire%20le%20quattro%20ali%20dell%E2%80%99edificio%20e%20aumentare%20la%20grandezza%20del%20cortile,%20abbandonando%20l%E2%80%99iniziale%20idea%20di%20costruire%20sulle%20preesistenti%20architetture%20viscontee.%20L%E2%80%99impresa%20si%20concluse%20nel%201602;%20la%20mancanza%20di%20fondi%20imped%C3%AC%20la%20completa%20realizzazione%20del%20progetto.%20La%20decadenza%20del%20Palazzo%20inizi%C3%B2%20con%20l%E2%80%99estinzione%20dei%20Farnese%20e%20il%20passaggio%20dei%20loro%20beni%20ai%20Borbone.%20Nel%201734%20Carlo%20di%20Borbone%20(1716-1788),%20divenuto%20re%20di%20Napoli,%20trasfer%C3%AC%20quadri%20e%20arredi%20da%20Piacenza%20alla%20citt%C3%A0%20partenopea.%20Fu%20saccheggiato%20anche%20dalle%20truppe%20napoleoniche%20nel%201803.%20', 2, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (9, N'Nel%201988%20venne%20inaugurata%20la%20prima%20sezione%20dei%20Musei;%20la%20struttura%20museale%20crebbe%20negli%20anni%20successivi%20fino%20ad%20ospitare%20le%20attuali%20sezioni.%20Alla%20fine%20del%202014%20il%20Palazzo%20diventa%20di%20propriet%C3%A0%20comunale.%20Il%20percorso%20museale,%20che%20si%20sviluppa%20sui%20diversi%20piani%20del%20palazzo,%20offre%20al%20visitatore%20la%20possibilit%C3%A0%20di%20ammirare%20il%20monumentale%20scalone%20d%E2%80%99onore,%20i%20diversi%20ambiente%20della%20mole%20farnesiana:%20l%E2%80%99appartamento%20del%20duca,%20con%20le%20splendide%20decorazioni%20a%20stucco;%20l%E2%80%99appartamento%20della%20duchessa,%20con%20i%20soffitti%20affrescati%20con%20quadrature%20prospettiche;%20la%20Cappella%20Ducale,%20i%20sotterranei%20dove%20si%20trova%20la%20collezione%20delle%20carrozze%20e%20i%20sotterranei%20della%20Cittadella,%20dove%20%C3%A8%20conservato%20il%20Fegato%20etrusco,%20modello%20in%20bronzo%20di%20fegato%20di%20pecora,%20unica%20%20testimonianza%20diretta%20di%20pratiche%20religiose%20etrusche.%20', 3, N'it', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (10, N'The%20construction%20of%20Palazzo%20Farnese%20is%20due%20to%20the%20will%20of%20the%20Duchess%20of%20Parma%20and%20Piacenza,%20Margaret%20of%20Austria%20(1522-1586),%20daughter%20of%20Charles%20V%20(1500-1558)%20and%20wife%20of%20Ottavio%20Farnese%20(1523-1586).%20The%20building%20was%20built%20with%20the%20aim%20of%20building%20a%20ducal%20residence,%20which%20was%20a%20place%20of%20representation%20and%20symbol%20of%20the%20power%20of%20the%20Farnese%20family.%20While%20Ottavio%20preferred%20to%20reside%20in%20Parma;%20Margherita%20chose%20to%20live%20in%20Piacenza.%20The%20task%20of%20building%20the%20new%20residence%20was%20initially%20entrusted%20to%20the%20architect%20Urbino%20Francesco%20Paciotto.%20In%20the%20first%20project%20of%20the%20building,%20built%20in%201558,%20it%20proposed%20to%20use%20the%20old%20foundations%20of%20the%20Visconti%20castle,%20built%20by%20Galeazzo%20Visconti%20in%201352,%20located%20on%20the%20edge%20of%20the%20city,%20to%20the%20north,%20not%20far%20from%20the%20banks%20of%20the%20river%20Po.', 1, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (11, N'The%20continuos%20absence%20of%20the%20architect,%20and%20the%20problems%20related%20to%20the%20impossibility%20of%20using%20the%20ancient%20foundations,%20suggested%20to%20the%20dukes%20to%20ask%20another%20architect,%20linked%20to%20the%20Farnese%20family,%20that%20is%20Jacopo%20Barozzi%20called%20il%20Vignola%20(1507-1573),%20who%20had%20already%20worked%20at%20the%20villa%20of%20Caprarola,%20commissioned%20by%20Cardinal%20Alessandro%20Farnese%20(1520-1589).%20In%20the%20project,%20dated%201561,%20approved%20by%20the%20dukes,%20Vignola%20decided%20to%20enlarge%20the%20four%20wings%20of%20the%20building%20and%20increase%20the%20size%20of%20the%20courtyard,%20abandoning%20the%20initial%20idea%20of%20building%20on%20the%20existing%20Visconti%20architectures.%20The%20venture%20ended%20in%201602;%20the%20lack%20of%20funds%20prevented%20the%20complete%20realization%20of%20the%20project.%20The%20decadence%20of%20the%20Palace%20began%20with%20the%20extinction%20of%20the%20Farnese%20and%20the%20transfer%20of%20their%20properties%20to%20the%20Bourbons.%20In%201734%20Charles%20of%20Bourbon%20(1716-1788),%20who%20became%20King%20of%20Naples,%20transferred%20paintings%20and%20furnishings%20from%20Piacenza%20to%20the%20city%20of%20Naples.%20It%20was%20also%20looted%20by%20the%20Napoleonic%20troops%20in%201803.', 2, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (12, N'In%201988%20the%20first%20section%20of%20the%20Museums%20was%20inaugurated;%20the%20museum%20structure%20grew%20in%20the%20following%20years%20up%20to%20hosting%20the%20current%20sections.%20At%20the%20end%20of%202014,%20the%20building%20became%20a%20municipal%20property.%20The%20museum%20itinerary,%20which%20is%20developed%20on%20different%20floors%20of%20the%20building,%20offers%20to%20visitors%20the%20chance%20to%20admire%20the%20monumental%20staircase%20of%20honor,%20different%20environments%20of%20the%20Farnesian%20culture:%20the%20apartment%20of%20the%20duke,%20with%20its%20splendid%20stucco%20decorations;%20the%20apartment%20of%20the%20duchess,%20with%20frescoed%20ceilings%20with%20perspective%20squares;%20the%20Ducal%20Chapel,%20the%20undergrounds%20where%20the%20collection%20of%20carriages%20and%20the%20undergrounds%20of%20the%20Cittadella%20is%20located,%20where%20the%20Etruscan%20Liver%20is%20preserved,%20a%20bronze%20model%20of%20sheep''s%20liver,%20the%20only%20direct%20evidence%20of%20Etruscan%20religious%20practices.', 3, N'en', 2)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (13, N'Un%20tempo%20chiamata%20Piazza%20Grande%20deve%20il%20suo%20nome%20alle%20due%20statue%20equestri%20in%20bronzo%20di%20Alessandro%20Farnese%20(1625)%20e%20di%20suo%20figlio%20duca%20Ranuccio%20(1620)%20opera%20dello%20scultore%20toscano%20Francesco%20Mochi.%20Ranuccio%20vi%20venne%20ritratto%20con%20aria%20flemmatica%20e%20gentile,%20reggente%20un%20diploma%20nella%20mano%20destra,%20abbigliato%20come%20un%20valoroso%20romano%20con%20corazza%20e%20gonnellino.%20Similmente%20riusc%C3%AC%20aggraziato%20il%20cavallo,%20con%20una%20zampa%20agile%20e%20alzata,%20perfettamente%20domato%20dal%20proprio%20cavaliere.%20Alessandro%20Farnese,%20padre%20di%20Ranuccio,%20a%20differenza%20di%20quest%E2%80%99ultimo%20era%20un%20guerriero%20valoroso%20e%20audace,%20appare%20avvolto%20da%20un%20mantello%20ampio%20e%20dinamico,%20in%20una%20posizione%20tutt%E2%80%99altro%20che%20classica%20e%20statica%20e%20dunque%20visibilmente%20diversa%20dalla%20statua%20di%20Ranuccio.%20Al%20cavallo,%20poi,%20Mochi%20diede%20un%20aspetto%20forsennato,%20con%20una%20criniera%20in%20disordine%20ed%20uno%20sguardo%20acceso,%20oltre%20ad%20una%20muscolatura%20anch%E2%80%99essa%20mossa%20e%20plastica.%20%20Si%20tratta%20di%20un%20vero%20capolavoro%20d%E2%80%99arte%20barocca.%20', 1, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (14, N'La%20Piazza%20%C3%A8%20dominata%20dal%20Palazzo%20Pubblico%20chiamato%20dai%20piacentini%20%E2%80%9CGotico%E2%80%9D%20per%20lo%20stile%20delle%20arcate%20del%20loggiato%20inferiore%20con%20archi%20a%20sesto%20acuto%20in%20contrasto%20con%20quelli%20romanici%20in%20cotto%20del%20piano%20superiore.%20%C3%88%20ritenuto%20uno%20dei%20pi%C3%B9%20significativi%20esempi%20italiani%20di%20Palazzo%20Comunale.%20Nel%20salone%20del%20primo%20piano,%20ampio%20ben%20700%20mq%20illuminato%20su%20tutti%20i%20lati%20da%20grandiosi%20finestroni%20e%20dal%20rosone%20sul%20lato%20est,%20si%20tenevano%20le%20riunioni%20dell''Anzianato.%20Sorse%20nel%201281%20per%20iniziativa%20di%20Alberto%20Scoto,%20capo%20dell%E2%80%99Universit%C3%A0%20dei%20Mercanti%20e%20potente%20Signore%20della%20citt%C3%A0.%20Nella%20torretta%20centrale%20vi%20%C3%A8%20lo%20storico%20campanone,%20utilizzato%20in%20passato%20per%20radunare%20il%20popolo%20in%20determinate%20occasioni.', 2, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (15, N'Di%20fronte%20si%20trova%20il%20Palazzo%20del%20Governatore,%20che%20dopo%20il%20suo%20rifacimento%20settecentesco%20fu%20sede%20fino%20al%201860%20degli%20uffici%20del%20governatore%20della%20citt%C3%A0.%20Chiude%20la%20Piazza%20la%20Basilica%20di%20San%20Francesco,%20raro%20esempio%20di%20architettura%20gotico%20francescana.%20Fu%20costruita%20nel%201278%20per%20munificenza%20di%20Umbertino%20Landi%20consentendo%20quindi%20al%20contrario%20delle%20altre%20chiese%20dell''ordine%20che%20questa%20sorgesse%20in%20pieno%20centro.%20', 3, N'it', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (16, N'Once%20called%20Piazza%20Grande,%20it%20owes%20its%20name%20to%20the%20two%20bronze%20equestrian%20statues%20of%20Alessandro%20Farnese%20(1625)%20and%20his%20son,%20Duke%20Ranuccio%20(1620),%20made%20by%20the%20tuscan%20sculptor%20Francesco%20Mochi.%20Ranuccio%20is%20portrayed%20with%20an%20impassive%20and%20gentle%20air,%20holding%20a%20diploma%20in%20his%20right%20hand,%20dressed%20like%20a%20valorous%20Roman%20with%20a%20shell%20and%20a%20kilt.%20Likewise,%20he%20manages%20to%20grace%20his%20horse,%20with%20an%20agile%20and%20raised%20paw,%20perfectly%20tamed%20by%20his%20rider.%20Alessandro%20Farnese,%20father%20of%20Ranuccio,%20was%20a%20brave%20and%20daring%20warrior%20and%20he%20appears%20wrapped%20in%20a%20wide%20and%20dynamic%20coat,%20in%20a%20position%20that%20isn%E2%80%99t%20classical%20and%20static%20and%20with%20a%20visibly%20different%20attitude%20from%20the%20statue%20of%20Ranuccio.%20On%20the%20horse,%20then,%20Mochi%20gave%20a%20wild%20look,%20with%20a%20messy%20mane%20and%20a%20bright%20look,%20as%20well%20as%20a%20moved%20and%20plastic%20muscolature,%20too.%20It%20is%20a%20true%20masterpiece%20of%20Baroque%20art.', 1, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (17, N'The%20square%20is%20dominated%20by%20the%20Palazzo%20Pubblico%20called%20%22Gotico%22%20for%20the%20style%20of%20the%20arches%20of%20the%20lower%20gallery%20with%20pointed%20arches%20in%20contrast%20with%20the%20Romanesque%20ones%20in%20terracotta%20on%20the%20upper%20floor.%20It%20is%20considered%20one%20of%20the%20most%20significant%20Italian%20examples%20of%20City%20Hall.%20In%20the%20first%20floor,%20700%20square%20meters%20-wide%20hall%20is%20illuminated%20on%20all%20sides%20by%20majestic%20windows%20and%20by%20the%20rose%20window%20on%20the%20east%20side%20where%20the%20Anzianato%20meetings%20were%20held.%20It%20was%20built%20in%201281%20by%20request%20of%20Alberto%20Scoto,%20head%20of%20the%20University%20of%20Merchants%20and%20powerful%20lord%20of%20the%20city.%20In%20the%20central%20tower%20there%20is%20the%20historic%20bell,%20used%20in%20the%20past%20to%20group%20the%20people%20on%20certain%20occasions.', 2, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (18, N'In%20front%20of%20it%20there%20is%20the%20Governor''s%20Palace,%20which%20after%20its%20eighteenth-century%20reconstruction%20was%20the%20location%20until%201860%20of%20the%20city%E2%80%99s%20governor%20offices.%20The%20Basilica%20of%20San%20Francesco,%20a%20rare%20example%20of%20Franciscan%20Gothic%20architecture,%20closes%20the%20square.%20It%20was%20built%20in%201278%20for%20the%20goodness%20of%20Umbertino%20Landi,%20allowing%20in%20contrary%20of%20the%20other%20churches%20of%20this%20order%20that%20this%20one%20was%20bult%20in%20the%20city%20center.', 3, N'en', 3)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (19, N'La%20Galleria%20d%E2%80%99Arte%20Moderna%20Ricci%20Oddi,%20nata%20per%20volont%C3%A0%20del%20collezionista%20piacentino%20Giuseppe%20Ricci%20Oddi%20(Piacenza,%201869-1937)%20e%20inaugurata%20nel%201931,%20custodisce%20una%20delle%20pi%C3%B9%20importanti%20raccolte%20italiane%20di%20pittura%20e%20scultura%20dell%E2%80%99Ottocento%20e%20del%20primo%20Novecento.%20La%20collezione%20si%20caratterizza%20per%20la%20straordinaria%20omogeneit%C3%A0,%20basata%20sulla%20riconosciuta%20superiorit%C3%A0%20dell%E2%80%99arte%20figurativa,%20anche%20se%20Ricci%20Oddi,%20pur%20senza%20avvicinarsi%20mai%20troppo%20alle%20avanguardie%20pi%C3%B9%20radicali,%20fu%20attento%20ad%20alcune%20moderate%20novit%C3%A0%20d%E2%80%99inizio%20Novecento,%20come%20le%20sfumature%20stilistiche%20del%20Simbolismo%20e%20le%20esperienze%20di%20matrice%20impressionista%20sviluppate%20dagli%20italiani%20pi%C3%B9%20aggiornati.%20', 1, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (20, N'Altra%20caratteristica%20%C3%A8%20l%E2%80%99organicit%C3%A0%20della%20composizione,%20poich%C3%A9%20vi%20sono%20comprese%20solo%20opere%20dall%E2%80%99epoca%20romantica%20in%20avanti,%20prevalentemente%20italiane,%20sforzandosi%20di%20mantenere%20un%20equilibrio%20fra%20le%20varie%20regioni,%20e%20considerando%20i%20pochi%20artisti%20stranieri%20per%20la%20loro%20influenza%20sugli%20italiani.%20%20Le%20sale%20della%20Galleria%20sono%20allestite%20armonicamente%20con%20opere%20d%E2%80%99artisti%20raggruppati%20per%20appartenenza%20ad%20aree%20geografiche%20limitrofe,%20assonanze%20stilistiche%20e%20congruenze%20cronologiche%20e%20sono%20dedicate%20da%20un%20lato%20alle%20scuole%20regionali,%20dall%E2%80%99altro%20ai%20movimenti:%20Novecento%20italiano,%20Scapigliatura%20lombarda,%20Simbolismo,%20Orientalismo;%20spazi%20monografici%20sono%20riservati%20agli%20artisti%20pi%C3%B9%20amati,%20quali%20Antonio%20Fontanesi%20e%20il%20piacentino%20Stefano%20Bruzzi.%20', 2, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (21, N'Di%20particolare%20interesse%20l%E2%80%99edificio%20dell%E2%80%99architetto%20Giulio%20Ulisse%20Arata,%20che%20realizz%C3%B2%20un%20ambiente%20progettato%20per%20esaltare%20la%20collezione,%20con%20nitore%20geometrico%20degli%20spazi%20e%20un%E2%80%99innovativa%20illuminazione%20naturale%20dall%E2%80%99alto.', 3, N'it', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (22, N'The%20Galleria%20d%E2%80%99Arte%20Moderna%20Ricci%20Oddi,%20was%20founded%20by%20will%20of%20the%20collector%20Giuseppe%20Ricci%20Oddi%20(Piacenza,%201869-1937)%20and%20was%20inaugurated%20in%201931.%20It%20contains%20one%20of%20the%20most%20important%20Italian%20collections%20of%20painting%20and%20sculpture%20of%20the%20nineteenth%20and%20early%20twentieth%20century.%20The%20collection%20is%20characterized%20by%20extraordinary%20homogeneity,%20based%20on%20the%20acknowledged%20superiority%20of%20the%20figurative%20art,%20even%20if%20Ricci%20Oddi,%20who%20never%20approached%20to%20the%20most%20radical%20avant-gardes,%20was%20careful%20to%20some%20moderate%20twentieth-century%20innovation,%20like%20the%20stylistic%20nuances%20of%20Symbolism%20and%20the%20experiences%20of%20impressionist%20origins%20developed%20by%20the%20most%20innovative%20Italians.', 1, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (23, N'Another%20feature%20is%20the%20organic%20nature%20of%20the%20composition,%20since%20only%20works%20from%20the%20Romantic%20age%20onward%20are%20included,%20mainly%20Italian%20ones,%20struggling%20to%20maintain%20a%20balance%20between%20the%20various%20regions,%20and%20considering%20the%20few%20foreign%20artists%20for%20their%20influence%20on%20Italians.%20The%20rooms%20of%20the%20Gallery%20are%20set%20up%20with%20works%20of%20artists%20grouped%20by%20neighboring%20geographical%20areas,%20stylistic%20harmonies%20and%20chronological%20congruences%20and%20are%20dedicated%20on%20one%20side%20to%20regional%20schools,%20on%20the%20other%20to%20the%20following%20movements:%20''Novecento%20Italiano'',%20''Scapigliatura%20Lombarda'',%20Symbolism,%20Orientalism;%20monographic%20spaces%20are%20reserved%20to%20the%20most%20loved%20artists,%20such%20as%20Antonio%20Fontanesi%20and%20Stefano%20Bruzzi.', 2, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (24, N'Of%20particular%20interest%20is%20the%20building%20of%20the%20architect%20Giulio%20Ulisse%20Arata,%20who%20created%20an%20environment%20designed%20to%20enhance%20the%20collection,%20with%20geometrically%20clean%20spaces%20and%20innovative%20natural%20lighting%20from%20the%20top.', 3, N'en', 4)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (25, N'Una%20prima%20basilica%20fu%20eretta%20tra%20il%20350%20e%20il%20375%20al%20tempo%20di%20S.Vittore,%20primo%20vescovo%20di%20Piacenza.%0AE''%20intitolata%20a%20S.Antonino,%20patrono%20della%20citt%C3%A0,%20i%20cui%20resti%20furono%20traslati%20verso%20la%20fine%20del%20IV%20secolo%20nella%20basilica%20dall''ipogeo%20che%20oggi%20si%20trova%20sotto%20la%20chiesa%20di%20S.Maria%20in%20Cortina.%20Insieme%20a%20quelli%20di%20S.Vittore%20sono%20ancora%20conservati%20in%20un''urna%20sotto%20l''altare%20maggiore.%20Probabilmente%20ebbe%20il%20ruolo%20di%20cattedrale%20fino%20al%20IX%20secolo.%20Nel%20corso%20dei%20secoli%20fu%20pi%C3%B9%20volte%20ampliata,%20trasformata%20e%20restaurata.%20Il%20risultato%20%C3%A8%20una%20singolare%20disposizione%20planimetrica,%20a%20croce%20latina%20rovesciata,%20con%20alta%20torre%20ottoganale%20all''incrocio%20delle%20navate%20e%20l''accostamento%20di%20volumi%20e%20stili%20diversi%20che%20tuttavia%20la%20rendono%20tra%20le%20pi%C3%B9%20interessanti%20testimonianze%20architettoniche%20di%20Piacenza.', 1, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (26, N'Fu%20ricostruita%20una%20prima%20volta%20nel%20870,%20forse%20a%20pianta%20centrale%20sormontata%20da%20un%20tiburio%20quadrato.%20Durante%20le%20invasioni%20ungare%20della%20prima%20met%C3%A0%20del%20X%20secolo%20la%20basilica,%20ancora%20al%20di%20fuori%20della%20cinta%20muraria,%20riport%C3%B2%20gravi%20danni.%20Nel%201004%20fu%20ricostruita%20e%20ampliata%20sotto%20il%20vescovo%20Sigifredo,%20con%20elevazione%20della%20torre%20ottogonale%20e%20dei%20transetti.%20La%20grande%20importanza%20della%20Basilica%20%C3%A8%20attestata%20dal%20fatto%20che%20nel%201183%20vi%20si%20tennero%20i%20preliminari%20della%20Pace%20di%20Costanza,%20con%20la%20quale%20l%E2%80%99imperatore%20Federico%20Barbarossa%20riconosceva%20una%20certa%20autonomia%20ai%20Comuni%20italiani.%20L%E2%80%99interno%20risulta%20diviso%20in%20tre%20navate%20da%20poderosi%20pilastri.%20Il%20pavimento%20fu%20sopraelevato,%20lasciando,%20fortunatamente,%20in%20evidenza%20le%20basi%20delle%20colonne%20risalenti%20al%20periodo%20preromanico.', 2, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (27, N'Nell%E2%80%99annesso%20museo%20sono%20conservati%20antifonari%20miniati%20della%20fine%20del%20XV%20secolo,%20antichi%20manoscritti%20tra%20cui%20uno%20risalente%20all''840%20di%20re%20Lotario,%20argenterie,%20reliquari%20e%20dossali%20del%20Quattrocento.%20Importante%20anche%20l''archivio%20capitolare%20con%20pergamene%20dal%20VII%20al%20XIV%20secolo.', 3, N'it', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (28, N'A%20first%20cathedral%20was%20erected%20between%20350%20and%20375%20at%20the%20time%20of%20St.%20Vittore,%20the%20first%20bishop%20of%20Piacenza.%20It%20is%20dedicated%20to%20S.%20Antonino,%20patron%20saint%20of%20the%20city,%20whose%20remains%20were%20moved%20towards%20the%20end%20of%20the%20fourth%20century%20in%20the%20basilica%20whose%20hypogeum%20is%20now%20located%20under%20the%20church%20of%20S.%20Maria%20in%20Cortina.%20Together%20with%20those%20of%20S.%20Vittore,%20they%20are%20still%20kept%20in%20an%20urn%20under%20the%20high%20altar.%20It%20probably%20played%20the%20role%20of%20a%20cathedral%20until%20the%20ninth%20century.%20Over%20the%20centuries%20it%20has%20been%20repeatedly%20enlarged,%20transformed%20and%20restored.%20The%20result%20is%20a%20unique%20planimetric%20layout,%20with%20an%20inverted%20Latin%20cross,%20with%20a%20high%20octogonal%20tower%20at%20the%20intersection%20of%20the%20aisles%20and%20the%20combination%20of%20different%20volumes%20and%20styles%20makes%20it%20one%20of%20the%20most%20interesting%20architectural%20testimonies%20of%20Piacenza.', 1, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (29, N'It%20was%20rebuilt%20for%20the%20first%20time%20in%20870,%20perhaps%20with%20a%20central%20map%20surmounted%20by%20a%20square%20lantern.%20During%20the%20Hungarian%20invasions%20of%20the%20first%20half%20of%20the%20tenth%20century,%20the%20cathedral,%20which%20was%20still%20outside%20the%20city%20walls,%20suffered%20serious%20damage.%20In%201004%20it%20was%20rebuilt%20and%20enlarged%20under%20the%20bishop%20Sigifredo,%20with%20elevation%20of%20the%20octagonal%20tower%20and%20transepts.%20The%20great%20importance%20of%20the%20Basilica%20is%20established%20by%20the%20fact%20that%20in%201183%20the%20introductories%20of%20the%20Peace%20of%20Constance%20were%20held,%20with%20which%20the%20emperor%20Federico%20Barbarossa%20recognized%20a%20certain%20autonomy%20to%20the%20Italian%20Municipalities.%20The%20interior%20is%20divided%20into%20three%20naves%20by%20big%20pillars.%20The%20floor%20was%20raised,%20leaving,%20luckily,%20the%20bases%20of%20the%20columns%20dating%20back%20to%20the%20pre-Romanesque%20period.', 2, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (30, N'The%20annexed%20museum%20contains%20minuscule%20antiphonaries%20of%20the%20late%20fifteenth%20century,%20ancient%20manuscripts%20including%20one%20dating%20back%20to%20840%20of%20King%20Lothair,%20silverware,%20reliquaries%20and%20ornamental%20covers%20of%20the%20fifteenth%20century.%20The%20chapter%20archive%20with%20parchments%20from%20the%207th%20to%20the%2014th%20century%20is%20also%20important.', 3, N'en', 5)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (31, N'Il%20Vescovo%20Savino%20(376-420),%20succeduto%20al%20primo%20Vescovo%20di%20Piacenza,%20Vittore,%20fece%20costruire%20(394)%20una%20chiesa%20dedicata%20ai%2012%20Apostoli%20alle%20%E2%80%9CMose%E2%80%9D%20sull%E2%80%99asse%20viario%20che%20da%20Piacenza%20va%20a%20Roma,%20fuori%20dalle%20mura%20che%20al%20tempo%20racchiudevano%20il%20%E2%80%9Ccastrum%E2%80%9D.%20%20Il%20termine%20%E2%80%9CMose%E2%80%9D,%20in%20latino,%20significa%20palude%20e%20sicuramente%20si%20trattava%20dell%E2%80%99area%20cimiteriale%20situata%20proprio%20dove%20ancor%20oggi%20sorge%20la%20Basilica.', 1, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (32, N'Savino%20fu%20un%20grande%20amico%20di%20Sant%E2%80%99Ambrogio%20di%20Milano%20che%20lo%20ricorda%20nelle%20sue%20lettere%20come%20il%20revisore%20dei%20suoi%20scritti%20teologici,%20in%20effetti%20Savino%20era%20un%20teologo%20conosciuto%20a%20quei%20tempi%20per%20aver%20partecipato%20al%20Concilio%20Romano%20per%20comporre%20lo%20scisma%20d%E2%80%99Oriente%20sorto%20per%20la%20nomina%20di%20Paolino%20a%20Vescovo%20di%20Antiochia%20al%20posto%20di%20San%20Melezio%20legittimo%20pastore%20(372).%20%20E%E2%80%99%20ricordato%20anche%20per%20il%20%E2%80%9Cmiracolo%20del%20Po%E2%80%9D%20ricordato%20nei%20Dialoghi%20di%20San%20Gregorio%20Magno%20(Papa%20dal%20590%20al%20604),%20nel%20libro%20III%20che%20consiste%20nell%E2%80%99aver%20fatto%20rientrare%20le%20acque%20del%20fiume%20che%20avevano%20allagato%20parte%20della%20citt%C3%A0%20di%20Piacenza.%20Soprattutto%20%C3%A8%20ricordato%20per%20il%20ritrovamento%20della%20tomba%20e%20quindi%20delle%20reliquie%20di%20Sant%E2%80%99Antonino%20(388)%20che%20depone%20nella%20stessa%20urna,%20con%20una%20divisoria,%20in%20cui%20venivano%20custodite%20i%20resti%20mortali%20di%20San%20Vittore.%20%20Organizz%C3%B2%20la%20vita%20religiosa%20della%20giovane%20comunit%C3%A0%20cristiana%20piacentina%20adottandola%20di%20una%20liturgia%20propria%20che%20rimase%20in%20vigore%20fino%20al%20Concilio%20di%20Trento.', 2, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (33, N'Nell%E2%80%99anno%201000,%20il%20Vescovo%20Sigifredo%20riedific%C3%B2%20sul%20luogo%20ove%20sorgeva%20la%20prima%20basilica%20distrutta%20dai%20barbari,%20l%E2%80%99attuale%20Basilica%20che%20venne%20consacrata%20il%2010%20ottobre%201103%20dal%20Vescovo%20Aldo.%20Di%20questo%20periodo%20sono%20i%20mosaici%20della%20cripta%20raffiguranti%20i%2012%20mesi%20dell%E2%80%99anno,%20i%20simboli%20zodiacali%20e%20le%20attivit%C3%A0%20agricole;%20il%20mosaico%20posto%20nel%20presbiterio%20(riemersi%20nel%201902%20duranti%20i%20lavori%20di%20restauro)%20che%20rappresenta%20al%20centro%20il%20Signore%20del%20Tempo%20%E2%80%93%20Cristo%20Alfa%20e%20Omega%20%E2%80%93%20che%20tiene%20tra%20le%20mani%20il%20sole%20e%20la%20luna;%20nei%20quattro%20riquadri,%20due%20a%20destra%20e%20due%20a%20sinistra,%20le%20Virt%C3%B9%20Cardinali:%20la%20Giustizia%20%E2%80%93%20rex%20judex,%20la%20Prudenza%20%E2%80%93%20la%20partita%20a%20scacchi,%20la%20Fortezza%20%E2%80%93%20i%20due%20soldati,%20la%20Temperanza%20%E2%80%93%20personaggi%20con%20in%20mano%20un%20bicchiere;%20dello%20stesso%20periodo%20%C3%A8%20il%20crocifisso%20ligneo%20che%20si%20pu%C3%B2%20ammirare%20sull%E2%80%99altare%20maggiore.', 3, N'it', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (34, N'Bishop%20Savino%20(376-420),%20who%20succeeded%20the%20first%20Bishop%20of%20Piacenza,%20Vittore,%20built%20(in%20394)%20a%20church%20dedicated%20to%20the%2012%20Apostles%20at%20the%20%22Mose%22%20on%20the%20road%20that%20from%20Piacenza%20goes%20to%20Rome,%20outside%20the%20walls%20they%20enclosed%20the%20%22castrum%22.%20The%20word%20%22Mose%22,%20in%20Latin,%20means%20''swamp''%20and%20certainly%20it%20was%20the%20cemetery%20located%20where%20the%20Basilica%20is%20now%20located.', 1, N'en', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (35, N'Savino%20was%20a%20great%20friend%20of%20Sant''Ambrogio''s%20from%20Milan%20who%20remembers%20him%20in%20his%20letters%20as%20the%20editor%20of%20his%20theological%20writings,%20in%20fact%20Savino%20was%20a%20theologian%20known%20at%20that%20time%20for%20having%20participated%20at%20the%20Roman%20Council%20to%20compose%20the%20schism%20of%20the%20East.%20Pauline%20was%20promoted%20as%20Bishop%20of%20Antioch%20instead%20of%20San%20Melezio%20the%20legitimate%20pastor%20(372).%20He%20is%20also%20remembered%20for%20the%20%22miracle%20of%20the%20Po%22%20mentioned%20in%20the%20Dialogues%20of%20St.%20Gregory%20the%20Great%20(Pope%20from%20590%20to%20604),%20in%20Book%20III%20which%20consists%20in%20having%20returned%20the%20waters%20of%20the%20river%20that%20had%20flooded%20part%20of%20the%20city%20of%20Piacenza.%20Above%20all,%20it%20is%20remembered%20for%20the%20discovery%20of%20the%20tomb%20and%20of%20the%20relics%20of%20Sant''Antonino%20(388)%20which%20lays%20in%20the%20same%20urn,%20with%20a%20partition,%20in%20which%20the%20mortal%20remains%20of%20San%20Vittore%20were%20kept.%20He%20organized%20the%20religious%20life%20of%20the%20young%20christian%20community%20of%20Piacenza%20by%20adopting%20his%20own%20liturgy%20that%20remained%20in%20force%20until%20the%20Council%20of%20Trento.', 2, N'en', 6)
INSERT [dbo].[DESCRIZIONE] ([IDESCRIZIONE], [DESCRIZIONE], [FIELD], [LANG], [IDMONUMENTO]) VALUES (36, N'In%20the%20year%201000,%20the%20Bishop%20Sigifredo%20rebuilt%20on%20the%20place%20where%20there%20was%20the%20first%20basilica%20destroyed%20by%20the%20barbarians%20the%20current%20Basilica,%20consacrated%20on%20October%2010,%201103%20by%20Bishop%20Aldo.%20Of%20this%20period%20are%20the%20mosaics%20in%20%20the%20crypt%20representing%20the%2012%20months%20of%20the%20year,%20the%20zodiac%20symbols%20and%20the%20agricultural%20activities;%20the%20mosaic%20placed%20in%20the%20presbytery%20(re-emerged%20in%201902%20during%20the%20restoration%20works)%20which%20represents%20the%20Lord%20of%20Time%20-%20Christ%20Alpha%20and%20Omega%20-%20who%20holds%20the%20sun%20and%20the%20moon%20in%20his%20hands;%20in%20four%20squares,%20two%20on%20the%20right%20and%20two%20on%20the%20left%20there%20are%20the%20Cardinal%20Virtues:%20the%20Justice%20-%20rex%20judex,%20the%20Prudence%20-%20the%20chess%20game,%20the%20strength%20-%20the%20two%20soldiers,%20the%20self-control%20-%20characters%20thar%20are%20holding%20a%20glass;%20from%20the%20same%20period%20is%20the%20wooden%20crucifix%20that%20can%20be%20seen%20on%20the%20main%20altar.', 3, N'en', 6)
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
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[GETARRAYVALORI]    Script Date: 11/06/2018 16:13:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GETMONUMENTITILE]    Script Date: 11/06/2018 16:13:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GETURL]    Script Date: 11/06/2018 16:13:10 ******/
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
