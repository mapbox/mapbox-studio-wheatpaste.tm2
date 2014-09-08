// Fonts 

@sans: "Roboto Regular";
@sans_italic:"Roboto Italic";
@sans_bold: "Roboto Bold";
@sans_bold_italic: "Roboto Bold Italic";

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name]';

// Common Colors //
@water: #fff;
@park: #f04;
@land: lighten(#edb,5); //#F8E7BE;

Map {
  background-image: url(img/land_paper.png);
}

#water {
  b/polygon-fill: #2df;
  b/polygon-opacity: .25;
  b/polygon-comp-op: multiply;
  b/line-color: #2df * .6;
  b/line-width: 4;
  b/line-comp-op: multiply;
}

//#waterway { line-color: @water; }

// cemetery, hospital, industrial, park, parking, pitch, sand, school, wood


#landuse { 
  [class='park'],[class='wood'],[class='scrub'],
    [class='pitch'],[class='grass']  { 
    polygon-fill: #f04;
    line-color: #f04 * .5;
  }
  [class='industrial'],[class='parking'],
    [class='school'],[class='hospital'] {
    polygon-fill: #df2;
    line-color: #df2 * .5;
  }
  line-color: #2df * .5;
  line-comp-op: multiply;
  polygon-fill: #2df;
  polygon-comp-op: multiply;
  [zoom>15] { line-width:2; }
}

#landuse_overlay { polygon-fill: #2df; comp-op:multiply; }

#building {
  polygon-fill: #2df;
  [zoom>=15] { polygon-geometry-transform: translate(-1,-1); }
  [zoom>=17] { polygon-geometry-transform: translate(-2,-2); }
  ::red {
    polygon-fill: #f07;
    polygon-comp-op:multiply;
    [zoom>=15] { polygon-geometry-transform: translate(1,1); }
    [zoom>=17] { polygon-geometry-transform: translate(2,2); }
  }
  ::black {
    polygon-fill: #000;
    polygon-comp-op:multiply;
  }
}

#aeroway {
  ['mapnik::geometry_type'=2] { line-color: #000; }
  ['mapnik::geometry_type'=3] { polygon-fill: #000; }
}


// --- roads ------------------------------------

#tunnel { opacity:.25; }

#road::case,
#bridge::case,
#tunnel::case {
  line-color: @land;
  line-width:0;
  [class='motorway'] {
    line-width: 3 + 4;
    [zoom=14] { line-width: 4 + 4; }
    [zoom=15] { line-width: 5 + 4; }
    [zoom=16] { line-width: 6 + 4; }
    [zoom=17] { line-width: 8 + 4; }
    [zoom=18] { line-width: 10 + 4; }
  }
  [class='main'] { 
    line-width: 2 + 4;
    [zoom>16] { line-width: 3 + 4; }
  }
  [zoom>13][class='street'] {
    line-width: 1 + 3; 
  }
}

#road::fill,
#bridge::fill,
#tunnel::fill {
  line-color: #000;
  line-width:0;
  line-join:bevel;
  line-cap: butt;
  [class='motorway'] {
    line-width:3;
    [zoom=14] { line-width: 4; }
    [zoom=15] { line-width: 5; }
    [zoom=16] { line-width: 6; }
    [zoom=17] { line-width: 8; }
    [zoom=18] { line-width: 10; }
  }
  [class='main'] { 
    line-width: 2;
    [zoom>16] { line-width: 3; }
  }
  [class='street'] {
    [zoom=12] { line-width: .1; }
    [zoom=13] { line-width: .2; }
    [zoom=14] { line-width: .3; }
    [zoom>14] { line-width: .5; }
  }
}