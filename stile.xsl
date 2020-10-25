<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="it">
            <head>
            <title>
                <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>-<xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id='SF']"/>
            </title>
            <meta charset="UTF-8"/>
            <script type="text/javascript" src="script.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <meta name="keyword">             
               <xsl:attribute name="content">   
                     <xsl:for-each select="//tei:textClass/tei:keywords">
                          <xsl:value-of select="tei:term"/>
                     </xsl:for-each>              
               </xsl:attribute>
            </meta>
            <link rel="stylesheet" type="text/css" href="stile.css" />
            </head>
            <body>
                <!--menu e intestazione-->
                <xsl:element name="div">
                     <xsl:attribute name="class">
                        <xsl:value-of select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher" />
                     </xsl:attribute>
                  <img id="Banner" src="loghi/banner.jpg" alt="banner"/>
               </xsl:element>
                  <h1>Progetto di Codifica di testi</h1>
                  <div id="menu">
                     <p align="center"><a href="#7694-031">[Donna con lettera]</a>  |  <a href="#7694-080">Incontro di Dante con Beatrice</a></p>
                  </div>
                <xsl:apply-templates select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc"/>
                <xsl:apply-templates select="//tei:teiCorpus/tei:teiHeader/tei:encodingDesc"/>

                <h2><a id="7694-031">[Donna con lettera]</a></h2>
                <!--header cartolina 1-->
                <xsl:apply-templates select="//tei:teiCorpus/tei:TEI[@xml:id='C1']/tei:teiHeader"/>
                <!--galleria cartolina 1-->
                <div id="Foto1">
                <img id="Foto2" src="img/7694-031F.jpg" alt="fotogallery1"/>
                </div>
                <div id="Box1"></div>
                <!--didascalia cartolina 1-->             
                <div id="Uno">Cartolina che rappresenta una donna con lettera e bastone, illustrata da Alberto Bianchi (Rimini 1882 - Milano 1969). Pittore, illustratore, cartellonista. Figlio e nipote d'arte. Realizzava vari bozzetti per fortunate serie di cartoline illustrate, caratterizzate dal gusto elegante e frivolo della high society di cui era assiduo frequentatore.</div>
                <!--testo cartolina 1-->             
                <xsl:apply-templates select="//tei:text[@xml:id='PRIMOTESTO']"/> 
                <!--fonti e note cartolina 1-->
                <h3>Fonti e note</h3>
                <xsl:for-each select="//tei:teiCorpus/tei:TEI[@xml:id='C1']/tei:text/tei:body/tei:div/tei:note">
                     <ul><li><xsl:value-of select="."/></li></ul>
                </xsl:for-each>

                <!--cartolina 2-->
                <h2><a id="7694-080">Incontro di Dante con Beatrice</a></h2>
                <!--header cartolina 2-->
                <xsl:apply-templates select="//tei:teiCorpus/tei:TEI[@xml:id='C2']/tei:teiHeader"/>
                <!--galleria cartolina 2-->
                <div id="Foto3"> 
                <img id="Foto4" src="img/7694-080F.jpg" alt="fotogallery2"/>
                </div>
                <div id="Box2"></div>
                <!--didascalia cartolina 2-->             
                <div id="Due">Dipinto storico di Henry Holiday (1839-1927), Dante incontra Beatrice al Ponte Santa Trinità,soggetti: Dante Alighieri, Beatrice Portinari. Data: 1883, tecnica: olio su tela. Dimensioni:140x199 cm. Si possono vedere il fiume Arno e il Ponte Vecchio di Firenze sullo sfondo.</div>
                <!--testo cartolina 2-->             
                <xsl:apply-templates select="//tei:text[@xml:id='SECONDOTESTO']"/>
                <!--fonti e note cartolina 2-->
                <h3>Fonti e note</h3>
                <xsl:for-each select="//tei:teiCorpus/tei:TEI[@xml:id='C2']/tei:text/tei:body/tei:div/tei:bibl">
                     <ol><xsl:value-of select="."/></ol>
                </xsl:for-each>
                <xsl:for-each select="//tei:teiCorpus/tei:TEI[@xml:id='C2']/tei:text/tei:body/tei:div/tei:note">
                     <ul><li><xsl:value-of select="."/></li></ul>
                </xsl:for-each>

                <p align="center"><a href="#">Torna all'inizio</a></p>

                <footer>  
                   <p align="center">XML conversion by Atom</p> 
                   <p align="center">Simone Failla [559086]</p>
                   <p align="center">A.a. 2019/2020</p>          
                </footer>
            </body>
        </html>      
    </xsl:template>

    <xsl:template match="//tei:textClass/tei:keywords/tei:term">
       <xsl:apply-templates/>,
    </xsl:template>

    <xsl:template match="//tei:teiCorpus/tei:fileDesc">
    <h2>Informazioni sul progetto</h2><xsl:apply-templates/>
    </xsl:template>
   
    <xsl:template match="//tei:encodingDesc">
    <h2>Informazioni sulla codifica</h2><xsl:apply-templates/>
    </xsl:template>
   
    <xsl:template match="//tei:publisher">
       Editore:<xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:langUsage">
       Lingua:<xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:settingDesc">
       a:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:pubPlace">
       Luogo di pubblicazione:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:edition">
       Edizione:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:country">
       Paese:<xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:stamp">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:objectType">
       Oggetto:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:settlement">
       Luogo:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:settlement">
       Ente di appartenenza:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:punctuation">
       <xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:correction">
       <xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:refsDecl">
       <xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:creation/tei:listChance/tei:change">
       Ultima revisione:<xsl:value-of select="@when"/><xsl:apply-templates/>.<br />
    </xsl:template>

    <xsl:template match="//tei:fileDesc/tei:titleStmt/tei:title">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:address">
      <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:author">
       Autore:<xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:correspAction/tei:settlement">
       <xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:distributor">
       Distributore:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:availability/tei:p">
       Disponibilità:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:idno">
       Identificativo:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:summary">
       Tipologia:<xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:calendarDesc">
       <xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:handNotes">
       <b>Note:</b><br /><xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:handNote">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:material">
       Materiale:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:condition">
       status:<xsl:apply-templates/><br />
    </xsl:template>
   
    <xsl:template match="//tei:dimensions">
       Dimensioni:<xsl:apply-templates/>
    </xsl:template>
   
    <xsl:template match="//tei:height">
       <xsl:apply-templates/>x
    </xsl:template>
   
    <xsl:template match="//tei:width">
       <xsl:apply-templates/>cm<br />
    </xsl:template>
   
    <xsl:template match="//tei:listPerson">
       <b>Persone coinvolte:</b><br /><xsl:apply-templates/>
    </xsl:template>
   
    <xsl:template match="//tei:person">
       - Nome:<xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="//tei:date">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:settlement">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:district">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:placeName">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:correspAction">
       <b>Corrispondenza:</b><br /><xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="//tei:persName">
       <xsl:apply-templates/> <br />
    </xsl:template>

    <xsl:template match="//tei:settlement">
       <xsl:apply-templates/>.<br />
    </xsl:template>
   
    <xsl:template match="//tei:occupation">
       Occupazione:<xsl:apply-templates/>.<br />
    </xsl:template>

    <xsl:template match="//tei:respStmt">
       <xsl:apply-templates/><br />
    </xsl:template>

    <xsl:template match="//tei:teiCorpus/tei:TEI/tei:teiHeader">
    <h3>Informazioni sulla Cartolina</h3><xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="//tei:pb[@n='1']">
       <h3>Fronte<xsl:apply-templates/></h3>
    </xsl:template>

    <xsl:template match="//tei:pb[@n='2']">
       <h3>Retro<xsl:apply-templates/></h3>
    </xsl:template>

    <xsl:template match="//tei:pb[@n='3']">
       <h3>Fronte<xsl:apply-templates/></h3>
    </xsl:template>

    <xsl:template match="//tei:pb[@n='4']">
       <h3>Retro<xsl:apply-templates/></h3>
    </xsl:template>

 <xsl:template match="//tei:damage">
      /<xsl:apply-templates/>
 </xsl:template>

 <xsl:template match="//tei:add">
        <xsl:apply-templates/>[add]
 </xsl:template>

 <xsl:template match="//tei:gap">
 <xsl:apply-templates/>[...]
 </xsl:template>

 <xsl:template match="//tei:text">
    <p><xsl:apply-templates/></p>
 </xsl:template>

 <xsl:template match="//tei:l">
        <xsl:apply-templates/><br/>
 </xsl:template>

 <xsl:template match="//tei:term">
    <i><xsl:apply-templates/></i>
 </xsl:template>

 <xsl:template match="//tei:orig">
    <xsl:apply-templates/> |
 </xsl:template>

 <xsl:template match="//tei:reg">
    | <xsl:apply-templates/>
 </xsl:template>

 <xsl:template match="//tei:gi">
    <code><xsl:apply-templates/></code>
 </xsl:template>

 <xsl:template match="//tei:bibl">
    <cite><xsl:apply-templates/></cite>
 </xsl:template>

 <xsl:template match="//tei:cit">
    <blockquote><xsl:apply-templates/></blockquote>
 </xsl:template>

 <xsl:template match="//tei:note">
   <xsl:apply-templates/><br/>
 </xsl:template>

 <xsl:template match="//tei:abbr">
    <xsl:apply-templates/> | 
 </xsl:template>

 <xsl:template match="//tei:expan">
     | <xsl:apply-templates/> 
 </xsl:template>

 <xsl:template match="//tei:sic">
     <del><xsl:apply-templates/></del>
 </xsl:template>

</xsl:stylesheet>
