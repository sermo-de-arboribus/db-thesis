<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:db="http://docbook.org/ns/docbook" 
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="db fo xlink"> 
    <xsl:import href="http://cdn.docbook.org/release/xsl/current/fo/docbook_custom.xsl"/>
    <xsl:import href="avve.division.title.xsl"/>
    <xsl:import href="avve.titlepage.templates.xsl"/>
    
    <!-- Distribution der Warengruppencodes -->
    <xsl:variable name="avve.warengruppenDistribution">
        <warengruppen>
            <warengruppe traininstances="60" testinstances="30"><code>111</code><heading>Erzählende Literatur: Hauptwerk vor 1945</heading><bskat>0,28%</bskat></warengruppe>
            <warengruppe traininstances="828" testinstances="414"><code>112</code><heading>erzählende Gegenwartsliteratur (ab 1945)</heading><bskat>2,01% (+ 8,11% WG 110)</bskat></warengruppe>
            <warengruppe traininstances="64" testinstances="32"><code>113</code><heading>Historische Romane und Erzählungen</heading><bskat>1,00%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>114</code><heading>Märchen, Sagen, Legenden</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>115</code><heading>Anthologien</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="40" testinstances="20"><code>116</code><heading>Romanhafte Biografien</heading><bskat>0,34%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>117</code><heading>Briefe, Tagebücher</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="42" testinstances="21"><code>118</code><heading>Essays, Feuilleton, Literaturkritik, Interviews</heading><bskat>0,16%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>119</code><heading>Aphorismen</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="384" testinstances="192"><code>121</code><heading>Krimis, Thriller, Spionage</heading><bskat>3,41%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>122</code><heading>Historische Kriminalromane</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>123</code><heading>Horror</heading><bskat>0,33%</bskat></warengruppe>
            <warengruppe traininstances="14" testinstances="7"><code>131</code><heading>Science Fiction</heading><bskat>1,21%</bskat></warengruppe>
            <warengruppe traininstances="180" testinstances="90"><code>132</code><heading>Fantasy</heading><bskat>1,01%</bskat></warengruppe>
            <warengruppe traininstances="16" testinstances="8"><code>151</code><heading>Lyrik, Gedichte</heading><bskat>0,80%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>152</code><heading>Dramatik</heading><bskat>0,47%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>161</code><heading>zweisprachige Ausgaben Deutsch/Englisch</heading><bskat>0,00%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>162</code><heading>zweisprachige Ausgaben Deutsch/Französisch</heading><bskat>0,00%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>181</code><heading>Comic</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="140" testinstances="70"><code>182</code><heading>Manga</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="96" testinstances="48"><code>185</code><heading>Humor</heading><bskat>0,23%</bskat></warengruppe>
            <warengruppe traininstances="30" testinstances="15"><code>191</code><heading>Geschenkbücher</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="36" testinstances="18"><code>211</code><heading>Erzählerische Bilderbücher</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>240</code><heading>Erstleser, Vorschulalter</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="188" testinstances="94"><code>250</code><heading>Kinderbücher bis 11 Jahre</heading><bskat>0,59%</bskat></warengruppe>
            <warengruppe traininstances="370" testinstances="185"><code>260</code><heading>Jugendbücher ab 12 Jahre</heading><bskat>0,47%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>292</code><heading>Kinder- und Jugendbuch: Sprachen</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>311</code><heading>Reiseführer Deutschland</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="32" testinstances="16"><code>312</code><heading>Reiseführer Europa</heading><bskat>0,14%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>361</code><heading>Reiseberichte Deutschland</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="42" testinstances="21"><code>362</code><heading>Reiseberichte Europa</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>363</code><heading>Reiseberichte Afrika</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>364</code><heading>Reiseberichte Naher Osten</heading><bskat>0,00%</bskat></warengruppe>
            <warengruppe traininstances="14" testinstances="7"><code>365</code><heading>Reiseberichte Asien</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>366</code><heading>Reiseberichte Nord- und Mittelamerika</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>367</code><heading>Reiseberichte Südamerika</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>368</code><heading>Reiseberichte Australien, Neuseeland, Ozeanien</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="24" testinstances="12"><code>369</code><heading>Reiseberichte Arktis, Antarktis, Weltreise</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>390</code><heading>Kartenzubehör, Sonstiges</heading><bskat>0,08%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>411</code><heading>Kreatives Gestalten</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>412</code><heading>Handarbeit, Textiles</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>415</code><heading>Fotografieren, Filmen</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>416</code><heading>Spielen, Raten</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>421</code><heading>Garten</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>422</code><heading>Naturführer</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="16" testinstances="8"><code>424</code><heading>Hobbytierhaltung</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>426</code><heading>Angeln, Jagd</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>445</code><heading>Ballsport</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>449</code><heading>Sonstige Sportarten</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>453</code><heading>allgemeine Kochbücher, Grundkochbücher</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>454</code><heading>Länderküchen</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="64" testinstances="32"><code>455</code><heading>Themenkochbücher</heading><bskat>0,12%</bskat></warengruppe>
            <warengruppe traininstances="46" testinstances="23"><code>456</code><heading>Kochbuch: gesunde Küche, schlanke Küche</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="18" testinstances="9"><code>457</code><heading>Backen</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>458</code><heading>Getränke</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>460</code><heading>Ratgeber Gesundheit allgemein</heading><bskat>0,24%</bskat></warengruppe>
            <warengruppe traininstances="68" testinstances="34"><code>461</code><heading>Ratgeber Ernährung</heading><bskat>0,18%</bskat></warengruppe>
            <warengruppe traininstances="28" testinstances="14"><code>462</code><heading>Entspannung, Yoga, Meditation</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>463</code><heading>Ratgeber Schönheit / Kosmetik</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="38" testinstances="19"><code>464</code><heading>Fitness, Aerobic, Bodybuilding, Gymnastik</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="47" testinstances="25"><code>465</code><heading>Ratgeber Erkrankungen, Heilverfahren</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="30" testinstances="15"><code>466</code><heading>Ratgeber Alternative Heilverfahren</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="22" testinstances="11"><code>467</code><heading>Ratgeber Schwangerschaft, Geburt, Säuglinge</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>472</code><heading>Esoterik</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>476</code><heading>Östliche Weisheit</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>479</code><heading>Spiritualität: Sonstiges</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="172" testinstances="86"><code>481</code><heading>Ratgeber Lebensführung, persönliche Entwicklung</heading><bskat>0,73%</bskat></warengruppe>
            <warengruppe traininstances="30" testinstances="15"><code>483</code><heading>Ratgeber Partnerschaft, Sexualität</heading><bskat>0,23%</bskat></warengruppe>
            <warengruppe traininstances="40" testinstances="20"><code>484</code><heading>Ratgeber Familie</heading><bskat>0,28%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>485</code><heading>Praktische Anleitungen</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="14" testinstances="7"><code>496</code><heading>Ratgeber Geld, Bank Börse</heading><bskat>0,03%</bskat></warengruppe>
            <warengruppe traininstances="26" testinstances="13"><code>497</code><heading>Ratgeber Ausbildung, Beruf, Karriere</heading><bskat>0,53%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>498</code><heading>Ratgeber Briefe, Rhetorik</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>521</code><heading>Philosophie: Allgemeines, Lexika</heading><bskat>0,58%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>522</code><heading>Philosophie: Antike</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>525</code><heading>Philosophie: Deutscher Idealismus, 19. Jahrhundert</heading><bskat>0,08%</bskat></warengruppe>
            <warengruppe traininstances="26" testinstances="13"><code>526</code><heading>Philosophie: 20. und 21. Jahrhundert</heading><bskat>0,17%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>533</code><heading>Theoretische Psychologie</heading><bskat>0,13%</bskat></warengruppe>
            <warengruppe traininstances="50" testinstances="25"><code>534</code><heading>Fachbuch angewandte Psychologie</heading><bskat>0,80%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>535</code><heading>Fachbuch Psychoanalyse</heading><bskat>0,16%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>542</code><heading>christliche Theologie</heading><bskat>1,68%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>543</code><heading>praktische christliche Theologie</heading><bskat>0,10%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>544</code><heading>Judentum</heading><bskat>0,18%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>551</code><heading>Fachbuch Geschichte: Allgemeines, Lexika</heading><bskat>0,18%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>553</code><heading>Fachbuch Geschichte: Altertum</heading><bskat>0,31%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>555</code><heading>Fachbuch Geschichte: Neuzeit bis 1918</heading><bskat>0,16%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>557</code><heading>Fachbuch Zeitgeshichte (1945 bis 1989)</heading><bskat>0,20%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>559</code><heading>Fachbuch Kulturgeschichte</heading><bskat>0,08%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>561</code><heading>Allgemeine und vergleichende Sprachwissenschaft</heading><bskat>0,37%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>563</code><heading>Deutsche Sprach- und Literaturwissenschaft</heading><bskat>1,30%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>573</code><heading>Kindergarten- und Vorschulpädagogik</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>574</code><heading>Schulpädagogik, Didaktik, Methodik</heading><bskat>0,26%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>585</code><heading>Innenarchitektur, Design</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>610</code><heading>Fachbuch Naturwissenschaft allgemein</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>646</code><heading>Fachbuch Theoretische Physik</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>691</code><heading>Fachbuch Medizin allgemein</heading><bskat>0,36%</bskat></warengruppe>
            <warengruppe traininstances="12" testinstances="6"><code>692</code><heading>Fachbuch Medizin: nichtklinische Fächer</heading><bskat>0,18%</bskat></warengruppe>
            <warengruppe traininstances="74" testinstances="37"><code>693</code><heading>Fachbuch Medizin: klinische Fächer</heading><bskat>1,26%</bskat></warengruppe>
            <warengruppe traininstances="24" testinstances="12"><code>694</code><heading>Fachbuch: Pflege</heading><bskat>0,22%</bskat></warengruppe>
            <warengruppe traininstances="22" testinstances="11"><code>695</code><heading>Fachbuch: Medizinische Fachberufe</heading><bskat>0,11%</bskat></warengruppe>
            <warengruppe traininstances="34" testinstances="17"><code>696</code><heading>Fachbuch: Ganzheitsmedizin</heading><bskat>0,11%</bskat></warengruppe>
            <warengruppe traininstances="28" testinstances="14"><code>698</code><heading>Veterinärmedizin</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>710</code><heading>Sozialwissenschaften allgemein</heading><bskat>0,20%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>722</code><heading>Soziologische Theorien</heading><bskat>0,09%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>733</code><heading>Politische Theorien und Ideengeschichte</heading><bskat>0,24%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>737</code><heading>Vergleichende und internationale Politikwissenschaft</heading><bskat>1,07%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>781</code><heading>Fachbuch Wirtschaft: Allgemeines, Lexika</heading><bskat>0,12%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>782</code><heading>Fachbuch Volkswirtschaft</heading><bskat>0,71%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>783</code><heading>Fachbuch Betriebswirtschaft</heading><bskat>2,39%</bskat></warengruppe>
            <warengruppe traininstances="30" testinstances="15"><code>784</code><heading>Fachbuch Management</heading><bskat>1,91%</bskat></warengruppe>
            <warengruppe traininstances="16" testinstances="8"><code>785</code><heading>Fachbuch Werbung, Marketing</heading><bskat>0,85%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>786</code><heading>Fachbuch einzelne Wirtschaftszweige und Branchen</heading><bskat>0,40%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>862</code><heading>Selbstlermaterialien Sprache</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>914</code><heading>Sprachführer</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>915</code><heading>Jahrbücher</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>916</code><heading>Listenbücher</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>921</code><heading>Philosophie und Religion: Biografien</heading><bskat>0,10%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>922</code><heading>Sachbuch Philosophie: Allgemeines, Lexika</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>925</code><heading>Sachbuch Religion: Allgemeines, Lexika</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="48" testinstances="24"><code>926</code><heading>Sachbuch christliche Religionen</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="64" testinstances="32"><code>933</code><heading>Sachbuch angewandte Psychologie</heading><bskat>0,14%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>937</code><heading>Sachbuch Spiritualität</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="24" testinstances="12"><code>941</code><heading>Geschichte: Biografien</heading><bskat>0,31%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>942</code><heading>Sachbuch Geschichte: Allgemeines, Lexika</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>943</code><heading>Sachbuch Regional- und Ländergeschichte</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>944</code><heading>Sachbuch Vor- und Frühgeschichte, Antike</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>945</code><heading>Sachbuch Geschichte des Mittelalters</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>946</code><heading>Sachbuch Geschichte der Neuzeit bis 1918</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>947</code><heading>Sachbuch Geschichte 1918-1945</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="10" testinstances="5"><code>948</code><heading>Sachbuch Zeitgeschichte 1945-1989</heading><bskat>0,04%</bskat></warengruppe>
            <warengruppe traininstances="18" testinstances="9"><code>951</code><heading>Kunst, Literatur: Biografien</heading><bskat>0,74%</bskat></warengruppe>
            <warengruppe traininstances="16" testinstances="8"><code>952</code><heading>Kunst: Allgemeines, Nachschlagewerke</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>953</code><heading>Sachbuch Bildende Kunst</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>956</code><heading>Sachbuch Literatur: Allgemeines, Lexika</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>957</code><heading>Sachbuch Sprache: Allgemeines, Lexika</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="26" testinstances="13"><code>961</code><heading>Musik, Theater, Film: Biografien</heading><bskat>0,05%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>963</code><heading>Sachbuch Klassik, Oper, Operette, Musical</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>965</code><heading>Sachbuch Pop, Rock</heading><bskat>0,00%</bskat></warengruppe>
            <warengruppe traininstances="2" testinstances="1"><code>967</code><heading>Sachbuch TV: Allgemeines, Lexika</heading><bskat>0,00%</bskat></warengruppe>
            <warengruppe traininstances="62" testinstances="31"><code>971</code><heading>Politik, Gesellschaft, Wirtschaft: Biografien</heading><bskat>0,16%</bskat></warengruppe>
            <warengruppe traininstances="36" testinstances="18"><code>972</code><heading>Sachbuch: Politik</heading><bskat>0,19%</bskat></warengruppe>
            <warengruppe traininstances="144" testinstances="72"><code>973</code><heading>Sachbuch: Gesellschaft</heading><bskat>0,42%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>974</code><heading>Sachbuch Wirtschaft: Allgemeines, Nachschlagewerke</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="22" testinstances="11"><code>975</code><heading>Sachbuch: Betriebswirtschaft, Unternehmen</heading><bskat>0,07%</bskat></warengruppe>
            <warengruppe traininstances="8" testinstances="4"><code>976</code><heading>Sachbuch Volkswirtschaft</heading><bskat>0,01%</bskat></warengruppe>
            <warengruppe traininstances="44" testinstances="22"><code>977</code><heading>Sachbuch Geld, Bank, Börse</heading><bskat>0,06%</bskat></warengruppe>
            <warengruppe traininstances="16" testinstances="8"><code>982</code><heading>Sachbuch Naturwissenschaft</heading><bskat>0,99%</bskat></warengruppe>
            <warengruppe traininstances="4" testinstances="2"><code>983</code><heading>Sachbuch Astronomie</heading><bskat>0,02%</bskat></warengruppe>
            <warengruppe traininstances="6" testinstances="3"><code>985</code><heading>Sachbuch Natur und Gesellschaft</heading><bskat>0,10%</bskat></warengruppe>
        </warengruppen>
    </xsl:variable>
    
    <!-- Distribution der Thema-Codes -->
    <xsl:variable name="avve.themaDistribution">
        <themas>
            <thema traininstances="257" testinstances="57">
               <code>FYT</code>
               <heading>Belletristik in Übersetzung</heading>
            </thema>
            <thema traininstances="201" testinstances="47">
               <code>FBA</code>
               <heading>Moderne und zeitgenössische Belletristik</heading>
            </thema>
            <thema traininstances="110" testinstances="11">
               <code>1DFG</code>
               <heading>Deutschland</heading>
            </thema>
            <thema traininstances="77" testinstances="9">
               <code>FU</code>
               <heading>Belletristik: Humor</heading>
            </thema>
            <thema traininstances="76" testinstances="19">
               <code>FRD</code>
               <heading>Zeitgenössische Liebesromane</heading>
            </thema>
            <thema traininstances="75" testinstances="6">
               <code>3MP</code>
               <heading>20. Jahrhundert</heading>
            </thema>
            <thema traininstances="60" testinstances="5">
               <code>1KBB</code>
               <heading>USA</heading>
            </thema>
            <thema traininstances="46" testinstances="5">
               <code>FBC</code>
               <heading>Klassische Belletristik</heading>
            </thema>
            <thema traininstances="46" testinstances="11">
               <code>FFP</code>
               <heading>Kriminalromane und Mystery: Polizeiarbeit</heading>
            </thema>
            <thema traininstances="45" testinstances="11">
               <code>5JA</code>
               <heading>Zielgruppe: Frauen und / oder Mädchen</heading>
            </thema>
            <thema traininstances="41" testinstances="12">
               <code>YFB</code>
               <heading>Kinder / Jugendliche: Gegenwartsliteratur</heading>
            </thema>
            <thema traininstances="39" testinstances="19">
               <code>YFM</code>
               <heading>Kinder / Jugendliche: Liebesromane, Freundschaftsromane</heading>
            </thema>
            <thema traininstances="37" testinstances="3">
               <code>1DFG-DE-TB</code>
               <heading>Bayern</heading>
            </thema>
            <thema traininstances="37" testinstances="13">
               <code>5AQ</code>
               <heading>Zielgruppe: empfohlenes Alter ab 14 Jahre</heading>
            </thema>
            <thema traininstances="35" testinstances="6">
               <code>FV</code>
               <heading>Historischer Roman</heading>
            </thema>
            <thema traininstances="35" testinstances="7">
               <code>FYB</code>
               <heading>Belletristik: Erzählungen, Kurzgeschichten</heading>
            </thema>
            <thema traininstances="34" testinstances="4">
               <code>1DDU-GB-E</code>
               <heading>England</heading>
            </thema>
            <thema traininstances="34" testinstances="6">
               <code>3MPQ</code>
               <heading>Zweite Hälfte 20. Jahrhundert</heading>
            </thema>
            <thema traininstances="34" testinstances="6">
               <code>FFJ</code>
               <heading>Kriminalromane: Cosy Mystery</heading>
            </thema>
            <thema traininstances="34" testinstances="3">
               <code>WZG</code>
               <heading>Geschenkbücher</heading>
            </thema>
            <thema traininstances="33" testinstances="3">
               <code>DNC</code>
               <heading>Memoiren, Berichte, Erinnerungen</heading>
            </thema>
            <thema traininstances="33" testinstances="7">
               <code>FFS</code>
               <heading>Kriminalromane: weibliche Ermittler</heading>
            </thema>
            <thema traininstances="31" testinstances="2">
               <code>JB</code>
               <heading>Gesellschaft und Kultur, allgemein</heading>
            </thema>
            <thema traininstances="30" testinstances="3">
               <code>3MR</code>
               <heading>21. Jahrhundert</heading>
            </thema>
            <thema traininstances="29" testinstances="4">
               <code>3MN</code>
               <heading>19. Jahrhundert</heading>
            </thema>
            <thema traininstances="28" testinstances="5">
               <code>FT</code>
               <heading>Generationenromane, Familiensagas</heading>
            </thema>
            <thema traininstances="27" testinstances="9">
               <code>1DDU-GB-ESL</code>
               <heading>London, Greater London</heading>
            </thema>
            <thema traininstances="27" testinstances="6">
               <code>FMR</code>
               <heading>Fantasy Romance, Dark Romance</heading>
            </thema>
            <thema traininstances="27" testinstances="2">
               <code>FRH</code>
               <heading>Historische Liebesromane</heading>
            </thema>
            <thema traininstances="27" testinstances="6">
               <code>FRM</code>
               <heading>Belletristik: romantische Spannung</heading>
            </thema>
            <thema traininstances="27" testinstances="4">
               <code>WH</code>
               <heading>Humor</heading>
            </thema>
            <thema traininstances="26" testinstances="4">
               <code>3MRB</code>
               <heading>Erste Hälfte des 21. Jahrhunderts</heading>
            </thema>
            <thema traininstances="26" testinstances="4">
               <code>FFK</code>
               <heading>Kriminalromane und Mystery: Humor</heading>
            </thema>
            <thema traininstances="26" testinstances="3">
               <code>FMB</code>
               <heading>Epische Fantasy (High Fantasy)</heading>
            </thema>
            <thema traininstances="26" testinstances="7">
               <code>FMX</code>
               <heading>Urban Fantasy</heading>
            </thema>
            <thema traininstances="26" testinstances="5">
               <code>YFC</code>
               <heading>Kinder / Jugendliche: Action- und Abenteuergeschichten</heading>
            </thema>
            <thema traininstances="25" testinstances="2">
               <code>3MPB</code>
               <heading>Erste Hälfte des 20. Jahrhunderts</heading>
            </thema>
            <thema traininstances="25" testinstances="7">
               <code>FN</code>
               <heading>Mythen und Legenden (fiktional)</heading>
            </thema>
            <thema traininstances="25" testinstances="2">
               <code>FS</code>
               <heading>Belletristik: Familienleben</heading>
            </thema>
            <thema traininstances="24" testinstances="6">
               <code>FHX</code>
               <heading>Psychothriller</heading>
            </thema>
            <thema traininstances="23" testinstances="2">
               <code>DNL</code>
               <heading>Literarische Essays</heading>
            </thema>
            <thema traininstances="23" testinstances="6">
               <code>FXS</code>
               <heading>Belletristik: Themen, Stoffe, Motive: Soziales</heading>
            </thema>
            <thema traininstances="21" testinstances="6">
               <code>5AL</code>
               <heading>Zielgruppe: empfohlenes Alter ab 10 Jahre</heading>
            </thema>
            <thema traininstances="21" testinstances="4">
               <code>FHP</code>
               <heading>Politthriller / Justizthriller</heading>
            </thema>
            <thema traininstances="20" testinstances="2">
               <code>NHD</code>
               <heading>Europäische Geschichte</heading>
            </thema>
            <thema traininstances="20" testinstances="8">
               <code>YFHR</code>
               <heading>Kinder / Jugendliche: Fantasy Romance</heading>
            </thema>
            <thema traininstances="19" testinstances="7">
               <code>1DFG-DE-BE</code>
               <heading>Berlin</heading>
            </thema>
            <thema traininstances="19" testinstances="2">
               <code>1DFH</code>
               <heading>Schweiz</heading>
            </thema>
            <thema traininstances="19" testinstances="6">
               <code>5AN</code>
               <heading>Zielgruppe: empfohlenes Alter ab 12 Jahre</heading>
            </thema>
            <thema traininstances="19" testinstances="9">
               <code>NHTB</code>
               <heading>Sozial- und Kulturgeschichte</heading>
            </thema>
            <thema traininstances="19" testinstances="11">
               <code>WTL</code>
               <heading>Reiseberichte, Reiseliteratur</heading>
            </thema>
            <thema traininstances="18" testinstances="7">
               <code>3MRBF</code>
               <heading>2010 bis 2019 n. Chr.</heading>
            </thema>
            <thema traininstances="18" testinstances="5">
               <code>VSP</code>
               <heading>Ratgeber / Sachbuch: Psychologie</heading>
            </thema>
            <thema traininstances="17" testinstances="5">
               <code>1DDU</code>
               <heading>Großbritannien</heading>
            </thema>
            <thema traininstances="17" testinstances="3">
               <code>FC</code>
               <heading>Biografischer Roman</heading>
            </thema>
            <thema traininstances="17" testinstances="3">
               <code>FJH</code>
               <heading>Historische Abenteuerromane</heading>
            </thema>
            <thema traininstances="17" testinstances="3">
               <code>FRX</code>
               <heading>Erotische Liebesromane</heading>
            </thema>
            <thema traininstances="16" testinstances="2">
               <code>3MNQ</code>
               <heading>Zweite Hälte des 19. Jahrhunderts</heading>
            </thema>
            <thema traininstances="16" testinstances="6">
               <code>DNBF</code>
               <heading>Biografien: Kunst und Unterhaltung</heading>
            </thema>
            <thema traininstances="15" testinstances="2">
               <code>ATC</code>
               <heading>Einzelne Schauspieler und Darsteller</heading>
            </thema>
            <thema traininstances="15" testinstances="4">
               <code>FXB</code>
               <heading>Belletristik: Themen, Stoffe, Motive: Heranwachsen</heading>
            </thema>
            <thema traininstances="14" testinstances="2">
               <code>3MRBA</code>
               <heading>2000 bis 2009 n. Chr.</heading>
            </thema>
            <thema traininstances="14" testinstances="4">
               <code>DNBH</code>
               <heading>Biografien: historisch, politisch, militärisch</heading>
            </thema>
            <thema traininstances="14" testinstances="2">
               <code>DNBZ</code>
               <heading>Sammelbiografien</heading>
            </thema>
            <thema traininstances="13" testinstances="2">
               <code>FP</code>
               <heading>Erotische Literatur</heading>
            </thema>
            <thema traininstances="12" testinstances="4">
               <code>1DDF</code>
               <heading>Frankreich</heading>
            </thema>
            <thema traininstances="12" testinstances="3">
               <code>3MPBL</code>
               <heading>1940 bis 1949 n. Chr.</heading>
            </thema>
            <thema traininstances="12" testinstances="2">
               <code>5AX</code>
               <heading>Zielgruppe: geeignet für sich entwickelnde erwachsene Leser</heading>
            </thema>
            <thema traininstances="12" testinstances="3">
               <code>DNBL</code>
               <heading>Biografien: Literatur</heading>
            </thema>
            <thema traininstances="12" testinstances="2">
               <code>DND</code>
               <heading>Tagebücher, Briefe, Notizbücher</heading>
            </thema>
            <thema traininstances="12" testinstances="3">
               <code>FJMS</code>
               <heading>Kriegsromane: Zweiter Weltkrieg</heading>
            </thema>
            <thema traininstances="12" testinstances="2">
               <code>FUP</code>
               <heading>Satirische Romane und Parodie (fiktional)</heading>
            </thema>
            <thema traininstances="11" testinstances="2">
               <code>3MNB</code>
               <heading>Erste Hälfte des 19. Jahrhunderts</heading>
            </thema>
            <thema traininstances="11" testinstances="2">
               <code>AVP</code>
               <heading>Musiker, Sänger, Bands und Gruppen</heading>
            </thema>
            <thema traininstances="10" testinstances="4">
               <code>1DST</code>
               <heading>Italien</heading>
            </thema>
            <thema traininstances="10" testinstances="3">
               <code>1KBB-US-NAKC</code>
               <heading>New York</heading>
            </thema>
            <thema traininstances="10" testinstances="2">
               <code>DNBF1</code>
               <heading>Autobiografien: Kunst und Unterhaltung</heading>
            </thema>
            <thema traininstances="10" testinstances="2">
               <code>YFJ</code>
               <heading>Kinder / Jugendliche: Märchen, Sagen, Legenden</heading>
            </thema>
        </themas>
    </xsl:variable>
    
    <!-- AVVE parameters -->
    <xsl:param name="avve.numberOfClasses" select="149"/>
    <xsl:param name="avve.numberOfModifiedInstances" select="860"/>
    <xsl:param name="avve.numberOfTrainingInstances" select="sum($avve.warengruppenDistribution//warengruppe/@traininstances)"/>
    <xsl:param name="avve.numberOfTestInstances" select="sum($avve.warengruppenDistribution//warengruppe/@testinstances)"/>
    <xsl:param name="avve.numberOfThemaTrainingInstances" select="1050"/>
    <xsl:param name="avve.numberOfThemaTestInstances" select="205"/>
    <xsl:param name="avve.wordsPerSentenceMaximum" select="'1431,86'"/>
    <xsl:param name="avve.wordsPerSentenceMean" select="'18,18'"/>
    <xsl:param name="avve.wordsPerSentenceMinimum" select="'1 Wort pro Satz'"/>
    
    <xsl:param name="lucene.numberOfDocuments" select="6927"/>
    <xsl:param name="lucene.numberOfTerms" select="2971631"/>
    <xsl:param name="lucene.numberOfUniqueTerms" select="1852691"/>
    
    <!-- DocBook parameters -->
    <xsl:param name="paper.type" select="'A4'"/>
    <xsl:param name="page.margin.inner" select="'2.5cm'"/>
    <xsl:param name="page.margin.outer" select="'2.5cm'"/>
    <xsl:param name="page.margin.top" select="'1.25cm'"/> <!-- margin from top edge of page to top of header -->
    <xsl:param name="region.begore.extend" select="'0.75cm'"/> <!-- height of the header -->
    <xsl:param name="body.margin.top" select="'1.5cm'"/> <!-- top of the text body, as calculated from margin.top -->
    <xsl:param name="page.margin.bottom" select="'2cm'"/> <!--margin from bottom edge of page to bottom of footer -->
    <xsl:param name="body.start.indent" select="'0cm'"/> <!-- switch off DocBook's default indenting -->
    <xsl:param name="body.font.family" select="'Times Roman'"/>
    <xsl:param name="body.font.master" select="12"/> <!-- master font size -->
    <xsl:param name="header.column.widths">1 4 1</xsl:param> <!-- give more space to the running header title -->

    <xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
    
    <!-- Templates for extended elements -->
    <xsl:template match="db:modifiedInstancesRatio"><xsl:value-of select="format-number($avve.numberOfModifiedInstances div ($avve.numberOfTrainingInstances + $avve.numberOfTestInstances), '0,00%', 'european')" /></xsl:template>
    <xsl:template match="db:numberOfClasses"><xsl:value-of select="$avve.numberOfClasses"/></xsl:template>
    <xsl:template match="db:numberOfInstances"><xsl:value-of select="$avve.numberOfTrainingInstances + $avve.numberOfTestInstances"/></xsl:template>
    <xsl:template match="db:numberOfLuceneDocuments"><xsl:value-of select="$lucene.numberOfDocuments"/></xsl:template>
    <xsl:template match="db:numberOfLuceneTerms"><xsl:value-of select="format-number($lucene.numberOfTerms, '###.###', 'european')"/></xsl:template>
    <xsl:template match="db:numberOfTrainingInstances"><xsl:value-of select="$avve.numberOfTrainingInstances"/></xsl:template>
    <xsl:template match="db:numberOfTestInstances"><xsl:value-of select="$avve.numberOfTestInstances"/></xsl:template>
    <xsl:template match="db:numberOfUniqueLuceneTerms"><xsl:value-of select="format-number($lucene.numberOfUniqueTerms, '###.###', 'european')"/></xsl:template>
    <xsl:template match="db:randomClassifierSuccessRate">
        <xsl:value-of select="
          format-number(
            sum( 
                for $i in $avve.warengruppenDistribution/warengruppen/warengruppe 
                return (($i/@traininstances + $i/@testinstances) div ($avve.numberOfTrainingInstances + $avve.numberOfTestInstances)) * (($i/@traininstances + $i/@testinstances) div ($avve.numberOfTrainingInstances + $avve.numberOfTestInstances))
            ),
          '#0,0000%',
          'european')" />
    </xsl:template>
    <xsl:template match="db:wordsPerSentenceMaximum"><xsl:value-of select="$avve.wordsPerSentenceMaximum"/></xsl:template>
    <xsl:template match="db:wordsPerSentenceMean"><xsl:value-of select="$avve.wordsPerSentenceMean"/></xsl:template>
    <xsl:template match="db:wordsPerSentenceMinimum"><xsl:value-of select="$avve.wordsPerSentenceMinimum"/></xsl:template>
    
    <!-- this template renders a table with the Warengruppe code distributions based on the values in $avve.warengruppenDistribution -->
    <xsl:template match="db:warengruppenDistribution">
        <xsl:variable name="temp.warengruppenTable">
            <db:table xml:id="temp.warengruppenTable" pgwide="0">
                <db:info>
                    <db:title>Warengruppenverteilung im Korpus</db:title>
                </db:info>
                <db:tgroup cols="4" align="left" colsep="1" rowsep="1">
                    <db:colspec colname="code" colnum="1" colwidth="1*" align="left"/>
                    <db:colspec colname="heading" colnum="2" colwidth="3*" align="left"/>
                    <db:colspec colname="ratio" colnum="3" colwidth="1*" align="left"/>
                    <db:colspec colname="bs" colnum="4" colwidth="1*" align="left"/>
                    <db:thead>
                        <db:row><db:entry>Warengruppencode</db:entry><db:entry>Text</db:entry><db:entry>Anteil im Korpus</db:entry><db:entry>Anteil KNV-Katalog</db:entry></db:row>
                    </db:thead>
                    <db:tbody>
                        <xsl:for-each select="$avve.warengruppenDistribution/warengruppen/warengruppe">
                            <xsl:sort select="@traininstances + @testinstances" order="descending" />
                            <db:row>
                                <db:entry><xsl:value-of select="code"/></db:entry>
                                <db:entry><xsl:value-of select="heading"/></db:entry>
                                <db:entry><xsl:value-of select="format-number((@traininstances + @testinstances) div ($avve.numberOfTrainingInstances + $avve.numberOfTestInstances), '0,00%', 'european')"/></db:entry>
                                <db:entry><xsl:value-of select="bskat"/></db:entry>
                            </db:row>
                        </xsl:for-each>
                    </db:tbody>
                </db:tgroup>
            </db:table>
        </xsl:variable>
        <xsl:apply-templates select="$temp.warengruppenTable" mode="warengruppe">
        </xsl:apply-templates>
    </xsl:template>
    
    <!-- this template renders a table with the Thema code distributions based on the values in $avve.themaDistribution -->
    <xsl:template match="db:themaDistribution">
        <xsl:variable name="temp.themaTable">
            <db:table xml:id="temp.themaTable" pgwide="0">
                <db:info>
                    <db:title>Thema-Code-Verteilung im Korpus</db:title>
                </db:info>
                <db:tgroup cols="3" align="left" colsep="1" rowsep="1">
                    <db:colspec colname="code" colnum="1" colwidth="1*" align="left"/>
                    <db:colspec colname="heading" colnum="2" colwidth="3*" align="left"/>
                    <db:colspec colname="ratio" colnum="3" colwidth="1*" align="left"/>
                    <db:thead>
                        <db:row><db:entry>Thema-Code</db:entry><db:entry>Text</db:entry><db:entry>Anteil im Korpus</db:entry></db:row>
                    </db:thead>
                    <db:tbody>
                        <xsl:for-each select="$avve.themaDistribution/themas/thema">
                            <xsl:sort select="@traininstances + @testinstances" order="descending" />
                            <db:row>
                                <db:entry><xsl:value-of select="code"/></db:entry>
                                <db:entry><xsl:value-of select="heading"/></db:entry>
                                <db:entry><xsl:value-of select="format-number((@traininstances + @testinstances) div ($avve.numberOfThemaTrainingInstances + $avve.numberOfThemaTestInstances), '0,00%', 'european')"/></db:entry>
                            </db:row>
                        </xsl:for-each>
                    </db:tbody>
                </db:tgroup>
                <db:caption>Datenbasis: <xsl:value-of select="$avve.numberOfThemaTrainingInstances"/> Trainingsdatensätze und <xsl:value-of select="$avve.numberOfThemaTestInstances"/> Testdatensätze</db:caption>
            </db:table>
        </xsl:variable>
        <xsl:apply-templates select="$temp.themaTable" mode="warengruppe">
        </xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="db:table" mode="warengruppe">
        <xsl:message>Rendering table <xsl:value-of select="db:info/db:title"/></xsl:message>
        <!-- Contains fo:table, not title or footnotes -->
        <xsl:variable name="table.content">
            <xsl:call-template name="make.table.content"/>
        </xsl:variable>
        
        <!-- Optional layout table template for extensions -->
        <xsl:variable name="table.layout">
            <xsl:call-template name="table.layout">
                <xsl:with-param name="table.content" select="$table.content"/>
            </xsl:call-template>
        </xsl:variable>
        
        <!-- fo:block contains title, layout table, and footnotes  -->
        <xsl:variable name="table.block">
            <xsl:call-template name="table.block">
                <xsl:with-param name="table.layout" select="$table.layout"/>
            </xsl:call-template>
        </xsl:variable>
        
        <!-- pgwide or orient container -->
        <xsl:variable name="table.container">
            <xsl:call-template name="table.container">
                <xsl:with-param name="table.block" select="$table.block"/>
            </xsl:call-template>
        </xsl:variable>
        
        <!-- float or not -->
        <xsl:variable name="floatstyle">
            <xsl:call-template name="floatstyle"/>
        </xsl:variable>
        
        <xsl:choose>
            <xsl:when test="$floatstyle != ''">
                <xsl:call-template name="floater">
                    <xsl:with-param name="position" select="$floatstyle"/>
                    <xsl:with-param name="content" select="$table.container"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="$table.container"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- Prevent hyphenation in emphasized inline elements -->
    <xsl:template match="db:emphasis">
        <xsl:choose>
            <xsl:when test="@role='bold' or @role='strong'">
                <xsl:call-template name="inline.boldseq"/>
            </xsl:when>
            <xsl:when test="@role='underline'">
                <fo:inline text-decoration="underline" hyphenate="false">
                    <xsl:call-template name="inline.charseq"/>
                </fo:inline>
            </xsl:when>
            <xsl:when test="@role='strikethrough'">
                <fo:inline text-decoration="line-through" hyphenate="false">
                    <xsl:call-template name="inline.charseq"/>
                </fo:inline>
            </xsl:when>
            <xsl:otherwise>
                <!-- How many regular emphasis ancestors does this element have -->
                <xsl:variable name="depth" select="count(ancestor::db:emphasis
                    [not(contains(' bold strong underline strikethrough ', concat(' ', @role, ' ')))]
                    )"/>
                
                <xsl:choose>
                    <xsl:when test="$depth mod 2 = 1">
                        <fo:inline font-style="normal" hyphenate="false">
                            <xsl:apply-templates/>
                        </fo:inline>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:inline  hyphenate="false">
                            <xsl:call-template name="inline.italicseq"/>
                        </fo:inline>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- Indent only paragraphs that are preceded by other pararaphs, but inside of table entries -->
    <xsl:template match="db:para[preceding-sibling::*[position() = 1 and self::db:para and not(ancestor::db:entry)]]
         | db:para[preceding-sibling::*[position() = 1 and self::db:sidebar]]">
        <xsl:variable name="keep.together">
            <xsl:call-template name="pi.dbfo_keep-together"/>
        </xsl:variable>
        <fo:block xsl:use-attribute-sets="para.properties">
            <xsl:attribute name="text-indent">1.25cm</xsl:attribute>
            <xsl:if test="$keep.together != ''">
                <xsl:attribute name="keep-together.within-column"><xsl:value-of
                    select="$keep.together"/></xsl:attribute>
            </xsl:if>
            <xsl:call-template name="anchor"/>
            <xsl:apply-templates/>
        </fo:block>
    </xsl:template>
    
    <xsl:attribute-set name="pgwide.properties">
        <xsl:attribute name="start-indent">-1.5cm</xsl:attribute>
    </xsl:attribute-set>

    <!-- Settings for the rendering of chapter titles -->
    
    <xsl:attribute-set name="component.title.properties">
        <xsl:attribute name="hyphenate">true</xsl:attribute>
        <xsl:attribute name="space-before.minimum">2.05cm</xsl:attribute>
        <xsl:attribute name="space-before.optimum">2.12cm</xsl:attribute>
        <xsl:attribute name="space-before.maximum">2.19cm</xsl:attribute>
        <xsl:attribute name="space-after.minimum">2.05cm</xsl:attribute>
        <xsl:attribute name="space-after.optimum">2.12cm</xsl:attribute>
        <xsl:attribute name="space-after.maximum">2.19cm</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="equation.properties">
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="formal.title.properties">
        <xsl:attribute name="font-size">10pt</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="section.title.level1.properties">
        <xsl:attribute name="font-size">14pt</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.75cm</xsl:attribute>
        <xsl:attribute name="space-before.optimum">0.85cm</xsl:attribute>
        <xsl:attribute name="space-before.maximum">1cm</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.45cm</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.49cm</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.55cm</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="section.title.level2.properties">
        <xsl:attribute name="font-size">13pt</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.36cm</xsl:attribute>
        <xsl:attribute name="space-before.optimum">0.42cm</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.46cm</xsl:attribute>
        <xsl:attribute name="space-after.minimum">0.08cm</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.11cm</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.14cm</xsl:attribute>
    </xsl:attribute-set>
 
    <xsl:attribute-set name="section.title.level3.properties">
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0.30cm</xsl:attribute>
        <xsl:attribute name="space-before.optimum">0.36cm</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0.42cm</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.06cm</xsl:attribute>
        <xsl:attribute name="space-after.optimum">0.09cm</xsl:attribute>
        <xsl:attribute name="space-after.maximum">0.11cm</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="normal.para.spacing">
        <xsl:attribute name="space-before.optimum">0cm</xsl:attribute>
        <xsl:attribute name="space-before.minimum">0cm</xsl:attribute>
        <xsl:attribute name="space-before.maximum">0cm</xsl:attribute>
    </xsl:attribute-set>
    
    <!-- Settings for sidebars -->
    <xsl:attribute-set name="sidebar.properties" use-attribute-sets="formal.object.properties">
        <xsl:attribute name="background-color">#FFFFFF</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
    </xsl:attribute-set>
    
    <!-- clear flots with pi -->
    <xsl:template match="processing-instruction('float-clear')">
        <fo:block clear="both"/>
    </xsl:template>
</xsl:stylesheet>
