
// --- admin labels ------------------------------
#country_label {
  text-name: @name;
  text-face-name: @sans_thin_italic;
  text-size: 16;
  text-fill: #f04;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-wrap-width: 50;
  text-transform: lowercase;
}

#state_label {
  text-name: @name;
  text-face-name: @sans_thin_italic;
  text-size: 12;
  text-fill: #f04;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-transform: lowercase;
}

// --- places ------------------------------------
#place_label [type='city']{
  text-name: @name;
  text-face-name: @sans_bold_italic;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 18;
  text-transform:lowercase;
  [zoom>=8]  { text-size: 24; }
  [zoom>=10]  { text-size: 28; }
  [zoom>=14]  { text-size: 32; }
  [scalerank<=2] {
    text-size: 24;
    [zoom>=8]  { text-size: 28; }
    [zoom>=10]  { text-size: 32; }
    [zoom>=10]  { text-size: 36; }
  }
}

#place_label[type='town'][zoom>8] {
  text-name: @name;
  text-face-name: @sans_bold_italic;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 16;
  text-transform:lowercase;
  [zoom>=12] { text-size: 20; }
  [zoom>=14] { text-size: 24; }
  }

#place_label[type!='city'][type!='town'] {
  text-name: @name;
  text-face-name: @sans_bold_italic;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 11;
  text-transform:lowercase;
  [zoom>13][type='neighborhood'],
  [zoom>13][type='village'],
  [zoom>14][type='suburb'],
  [zoom>14][type='hamlet'] {
    text-size: 18;
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