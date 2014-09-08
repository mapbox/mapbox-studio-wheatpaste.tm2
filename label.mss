// --- places ------------------------------------

#place_label {
  text-name: @name;
  text-face-name: @sans_bold_italic;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 16;
  text-transform:lowercase;
  [type='city'] { text-size: 28; }
  [type='town'] { text-size: 22; }
  [zoom>13][type='neighborhood'],
  [zoom>13][type='village'],
  [zoom>14][type='suburb'],
  [zoom>14][type='hamlet'] { 
    text-size: 18;
  }
  ::red {
    text-name: @name;
    text-face-name: @sans_bold_italic;
    text-fill: #f04;
    text-dx: 2;
    text-dy: 2;
  }
}

// --- pois ------------------------------------

#poi_label[scalerank=1][zoom>=14],
#poi_label[scalerank=2][zoom>=16],
#poi_label[scalerank=3][zoom>=17] {
  [type='Aerodrome']{ 
    text-name: "'[ ' + [ref] + ' ]'";
    text-face-name: @sans_bold;
    text-size: 20;
    text-transform:uppercase;
  }
  // --- dots ---------
  marker-width: 8;
  marker-fill: #000;
  marker-line-color: @land;
  marker-line-width: 3;
  
  // --- text ---------
  text-name: @name;
  text-face-name: @sans_italic;
  text-size: 14;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-transform: lowercase;
  text-wrap-width: 100;
  text-placement-type: simple;
  text-placements: NE,SE,NW,SW;
  text-dx: 5;
  text-dx: -5;
}