\version "2.18.2"

global = {
  \key c \major
  \time 3/4
  \aikenHeads
}

\header {
  title = \markup {
    \column {
      "My Shepherd Will"
      "Supply My Need"
    }
  }
  tune = "RESIGNATION"
  meter = "CM"
  composer = "Traditional North American"
  poet = "Isaac Watts"
  songNumber = "B-001"
  copyright = "In the Public Domain"
  license = ##f
  arranger = ##f
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"How lovely on the mountains
         are the feet of him who brings good news,
         who announces peace
         and brings good news of happiness,
         who announces salvation,
         and says to Zion, \"Your God reigns!\" - Isaiah 52:7"
    }
  }
  tagline = ##f
}

sopranoVerse = \relative c' {
  \partial 4 c8( e8) \noBreak
  g2 e8( d8) \noBreak
  e2 g4 \noBreak
  c2 a8( g8) \noBreak
  e2 \bar ""
  
  c8( e8) \noBreak
  g2 c,4 \noBreak
  e2 d4 \noBreak
  c2.~ \noBreak
  c2 \bar ""

  c8( e8) \noBreak
  g2 e8( d8) \noBreak
  e2 g4 \noBreak
  c2 a8( g8) \noBreak
  e2 \bar ""
  
  c8( e8) \noBreak
  g2 c,4 \noBreak
  e2 d4 \noBreak
  c2.~ \noBreak
  c2 \bar ""

  g'4 \noBreak
  c2 e8( c8) \noBreak
  a2 c4 \noBreak
  d2 c8( a8) \noBreak
  g2 \bar ""
  
  e8( g8) \noBreak
  a2 g8( a8) \noBreak
  c2 d4 \noBreak
  c2.~ \noBreak
  c2 \bar ""
  
  c,8( e8) \noBreak
  g2 e8( d8) \noBreak
  e2 g4 \noBreak
  c2 a8( g8) \noBreak
  e2 \bar ""
  
  c8( e8) \noBreak
  g2 c,4 \noBreak
  e2 d4 \noBreak
  c2.~ \noBreak
  c2 \bar "|."  
}

altoVerse = \relative c' {
  % Phrase 1
  \partial 4 c4 |
  b2 b4 |
  b4( c4) d4 |
  e2 f8( e8) |
  c2 \bar ""
  
  c4 |
  b2 c4 |
  c2 g4 |
  g2.~ |
  g2 \bar ""
  
  c4 |
  b2 b4 |
  b4( c4) d4 |
  e2 f8( e8) |
  c2 \bar ""
  
  c4 |
  d2 c4 |
  c2 b4 |
  c2.~ |
  c2 \bar ""
  
  e4 |
  e2 g4 |
  f2 a8( g8) |
  f2 g8( f8) |
  d2 \bar ""
  
  e4 |
  e2 g8( f8) |
  g2 f4 |
  e2.~ |
  e2 \bar ""
  
  c4 |
  d2 b4 |
  c2 d4 |
  c2 c4 |
  b2 \bar ""
  
  c4 |
  d2 c4 |
  c2 b4 |
  g2.~ |
  g2 \bar "|."
}

tenorVerse = \relative c {
  \partial 4 e4 |
  d2 g4 |
  g2 g4 |
  g2 f8( g8) |
  a2 \bar ""
  
  a4 |
  g2 e4 |
  e2 g4 |
  e2.~ |
  e2 \bar ""
  
  e4 |
  d2 g4 |
  g2 g4 |
  g2 f8( g8) |
  a2 \bar ""
  
  a4 |
  g2 e4 |
  g2 g4 |
  e2.~ |
  e2 \bar ""

  c'4 |
  c2 b8( c8) |
  c2 a4 |
  a2 g8( c) |
  b2 \bar ""
  
  c4 |
  c2 b8( d8) |
  c2 a4 |
  g2.~ |
  g2 \bar ""
  
  e4 |
  d2 g4 |
  g2 g4 |
  e2 e4 |
  g2 \bar ""
  
  e4 |
  d2 e4 |
  g2 g4 |
  e2.~ |
  e2 \bar "|."
}

bassVerse = \relative c {
  \partial 4 c4 |
  g2 g'4 |
  e2 b4 |
  c2 d8( e8) |
  a2 \bar ""
  
  a4 |
  e2 c4 |
  a2 b4 |
  c2.~ |
  c2 \bar ""
  
  c4 |
  g2 g'4 |
  e2 b4 |
  c2 d8( e8) |
  a2 \bar ""
  
  a,4 |
  b2 c4 |
  g2 g4 |
  c2.~ |
  c2 \bar ""
  
  c'4 |
  a2 g8( e8) |
  f2 f8( e8) |
  d2 e8( f8) |
  g2 \bar ""
  
  c4 |
  a2 e8( d8) |
  e2 f4 |
  c2.~ |
  c2 \bar ""
  
  c4 |
  b2 g4 |
  c2 b4 |
  a2 c4 |
  e2 \bar ""
  
  a,4 |
  b2 c4 |
  g2 g4 |
  c2.~ |
  c2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  My Shep -- herd will sup -- ply my need;
  Je -- ho -- vah is his Name;
  In pas -- tures fresh he makes me feed,
  Be -- side the liv -- ing stream.
  He brings my wan -- d'ring spir -- it back
  When I for -- sake His ways,
  And leads me, for His mer -- cy's sake,
  In paths of truth and grace.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  When I walk through the Shades of Death,  
  Thy Pre -- sence is my Stay;  
  A Word of thy sup -- port -- ing Breath  
  Drives all my Fears away.
  Thy Hand in Spite of all my Foes  
  Doth still my Ta -- ble spread;  
  My Cup with Bless -- ings over -- flows,  
  Thine Oil a -- noints my Head.

}

verseThree = \lyricmode {
  \set stanza = "3. "
  The sure Pro -- vis -- ions of my God  
  At -- tend me all my Days;  
  O may thy House be mine A -- bode,  
  And all my Work be Praise!
  There would I find a set -- tled Rest,  
  (While oth -- ers go and come)  
  No more a Strang -- er or a Guest,  
  But like a Child at Home. 
}

