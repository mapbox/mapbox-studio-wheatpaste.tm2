
#hillshade {
  ::1[zoom<=14],
  ::2[zoom=15],
  ::3[zoom=16],
  ::4[zoom>16] {
    //image-filters: agg-stack-blur(1,1);
    //polygon-fill: #f04;
    //comp-op: value;
    [class='full_shadow'] {
      polygon-pattern-file:url(img/full_shadow.png);
      polygon-pattern-alignment:global;
      //polygon-fill: #000;
      //polygon-opacity:.25;
    }
    [class='medium_shadow'] {
      polygon-pattern-file:url(img/medium_shadow.png);
      polygon-pattern-alignment:global;
      //polygon-fill: #000;
      //polygon-opacity:.1;
    }
    [class='medium_highlight'] {
      polygon-pattern-file:url(img/medium_highlight.png);
      polygon-pattern-alignment:global;
      //polygon-fill: #00f;
      //polygon-opacity:.1;
    }
    [class='full_highlight'] {
      polygon-pattern-file:url(img/full_highlight.png);
      polygon-pattern-alignment:global;
      //polygon-opacity:.2;
      //polygon-fill: #fff;
    }
  }
}


/**/
/*

  polygon-pattern-file: url(water_photo.jpg);
  polygon-pattern-opacity: .1;
  polygon-pattern-alignment: global;
  polygon-pattern-comp-op: multiply;

*/