
#hillshade {
  ::1[zoom<=14],
  ::2[zoom=15],
  ::3[zoom=16],
  ::4[zoom>16] {
    [class='full_shadow'] {
      polygon-pattern-file:url(img/full_shadow.png);
      polygon-pattern-alignment:global;
    }
    [class='medium_shadow'] {
      polygon-pattern-file:url(img/medium_shadow.png);
      polygon-pattern-alignment:global;
    }
    [class='medium_highlight'] {
      polygon-pattern-file:url(img/medium_highlight.png);
      polygon-pattern-alignment:global;
    }
    [class='full_highlight'] {
      polygon-pattern-file:url(img/full_highlight.png);
      polygon-pattern-alignment:global;
    }
  }
}
