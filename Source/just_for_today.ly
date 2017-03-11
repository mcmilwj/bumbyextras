\version "2.19.49"

\include "common.ly"

%%
%% Tweaks
%%

%%
%% Hymn Metadata Variables
%%

Title = "Just For Today"
SongNumber = \just_for_today_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 4 - DO" }
}

FirstPage = #(if just_for_today_number_rhs 1 2)

Scripture = "I beseech you therefore, brethren, by the mercies of God,
             that you present your bodies a living sacrifice, holy, acceptable to God, which
             is your reasonable service. And do not be conformed to this world, but be transformed
             by the renewing of your mind, that you may prove what is that good and acceptable and
             perfect will of God.  (Romans 12:1-2 NKJV)"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "FATHER GOD"
  meter = "7.7.7.7 with Chorus"
  composer = "Marc Schelske (1995)"
  poet = "Marc Schelske (1995)"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if just_for_today_number_rhs LeaderHints just_for_today_number)
  rhs = #(if just_for_today_number_rhs just_for_today_number LeaderHints)
  copyright = \markup { \char ##x00A9 " Copyright 1995 Marc Schelske Music." }
  license = "CCLI Song #1984677, License #2055442"
  arranger = "Jim Duke"
  tagline = ##f
}

%%
%% Music and Lyrics Variables
%%

Key = \key e \major
MajorKey = ##t

Time = {
  \time 4/4
  \tempo 4=65
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis2)
  
  gis8 fis8 |
  e2~ e8 cis8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  
  e8 fis8 |
  gis2~ gis8
  \tag #'VerseOne { gis8 }
  \tag #'VerseTwo { gis16 gis16 }
  \tag #'merged { gis16~ gis16 }
  a8 b8 |
  \autoBeamOn
  b4( fis2)
  \autoBeamOff

  b8 a8 |
  a2~ a8 cis,8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4) \bar "|."
  \autoBeamOff
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  b8 dis8 |
  e2~ e8 e8 e8. e16 |
  dis2.
  
  e8 dis8 |
  cis2~ cis8 cis8 cis8 dis8 |
  \autoBeamOn
  e4~( e16 fis16 e8 dis4)
  \autoBeamOff
%  e2( dis4)
  
  cis8 dis8 |
  e2~ e8
  \tag #'VerseOne { e8 }
  \tag #'VerseTwo { e16 e16 }
  \tag #'merged { e16~ e16 }
  e8 gis8 |
  fis2.

  gis8 fis8 |
  fis2~ fis8 cis8 cis8 dis8 |
  e2( dis4) \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  gis8 b8 |
  b2~ b8 b8 cis8. b16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  b2.
  
  gis8 b8 |
  b2~ b8
  \tag #'VerseOne { b8 }
  \tag #'VerseTwo { b16 b16 }
  \tag #'merged { b16~ b16 }
  cis8 e8 |
  dis2.
  
  dis8 cis8 |
  cis2~ cis8 a8 a8 b8 |
  b2. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 b8 |
  e2~ e8 e8 e8. e16 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4)
  
  b8 b8 |
  e2~ e8
  \tag #'VerseOne { e8 }
  \tag #'VerseTwo { e16 e16 }
  \tag #'merged { e16~ e16 }
  e8 e8 |
  b2.
  
  b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4) \bar "|."
}

AlignVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8 c8 |
  c2~ c8 c8 c8. c16 |
  c2.
  
  c8 c8 |
  c2~ c8 c8 c8 c8 |
  c2.
  
  c8 c8 |
  c2~ c8
  \tag #'VerseOne { c8 }
  \tag #'VerseTwo { c16 c16 }
  c8 c8 |
  c2.

  c8 c8 |
  c2~ c8 c8 c8 c8 |
  c2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

SopranoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  e8 fis8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. gis8 |
  %name.
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  % may my
  b8 a8 |
  % steps be wor -- ship,
  gis8 gis8\rest gis4 gis8 e8
  % may my
  a8 gis8 |
  % thoughts be praise
  fis8 fis8\rest fis4 gis8( fis8)
  % may my
  gis8 fis8 |
  % words bring ho -- nor to Your
  e4. e8 fis8 fis16 fis8. fis8 |
  % name.
  e2 e4\rest
  \bar "|."
}

%
% This isn't currently being used.  But we're keeping it in case
% we change our mind.
%
descant = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \hide r4 |
  \repeat volta 2 {
    \autoBeamOff
    r8^\markup { "Descant" } gis16 gis16 gis8 gis8 gis8 e8
    r4 |
    r8 fis16 fis16 fis8 fis8 gis8( fis8)
    \hide r4 |
    \hide r1 |
    \hide r1 |
  }
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 dis8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 b8
  % may my
  fis'8 e8 |
  % thoughts be praise
  dis8 \hide r8 dis4 e8( dis8)
  % may my
  e8 dis8 |
  % words bring ho -- nor to Your
  cis4. cis8 dis8 dis16 dis8. dis8 |
  %name.
  \autoBeamOn
  e4~( e16 fis16 e8 dis4)
  \autoBeamOff
  % may my
  gis8 fis8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 b8
  % may my
  fis'8 e8 |
  % thoughts be praise
  dis8 \hide r8 dis4 e8( dis8)
  % may my
  e8 dis8 |
  % words bring ho -- nor to
  cis4. cis8 dis8 dis16 dis8. dis8 |
  % name.
  b2 \hide r4
  \bar "|."
}

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  gis8 b8 |
  % steps be wor -- ship,
  b8 b8\rest b4 b8 gis8
  % may my
  cis8 b8 |
  % thoughts be praise
  b8 b8\rest b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 fis8 fis16 fis8. b8 |
  %name.
  b2.
  % may my
  dis8 cis8 |
  % steps be wor -- ship,
  b8 b8\rest b4 b8 gis8
  % may my
  cis8 b8 |
  % thoughts be praise
  b8 b8\rest b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 fis8 fis16 fis8. a8 |
  % name.
  gis2 e4\rest
  \bar "|."
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 b8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 e8
  % may my
  e8 e8 |
  % thoughts be praise
  b8 \hide r8 b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 b8 b16 b8. b8 |
  %name.
  e2( b4)
  % may my
  b8 b8 |
  % steps be wor -- ship,
  e8 \hide r8 e4 e8 e8
  % may my
  e8 e8 |
  % thoughts be praise
  b8 \hide r8 b4 b4
  % may my
  b8 b8 |
  % words bring ho -- nor to Your
  a4. a8 b8 b16 b8. b8 |
  % name.
  <e e,>2 \hide r4
  \bar "|."
}

AlignChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  c8 c8 |
  % steps be wor -- ship,
  c8 r8 c4 c8 c8
  % may my
  c8 c8 |
  % thoughts be praise
  c8 r8 c4 c4
  % may my
  c8 c8 |
  % words bring ho -- nor to Your
  c4. c8 c8 c16 c8. c8 |
  %name.
  c2.
  % may my
  c8 c8 |
  % steps be wor -- ship,
  c8 r8 c4 c8 c8
  % may my
  c8 c8 |
  % thoughts be praise
  c8 r8 c4 c4
  % may my
  c8 c8 |
  % words bring ho -- nor to Your
  c4. c8 c8 c16 c8. c8 |
  % name.
  c2 r4
  \bar "|."
}

SheetMusicChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  c4  | \noBreak
  c1  | \noBreak
  s2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break

  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break
}

SlidesChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c2  | \noBreak
  c2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c4  | \noBreak
  c2. \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  c4  | \noBreak
  c2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  c2  | \noBreak
  c2. \bar "" \break
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Fa -- ther God, just for to -- day,
  Help me walk Your nar -- row way.
  Help me stand when I could fall,
  Lend me strength to hear Your call.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Here I am, just for to -- day,
  Live in me, and have Your way.
  My de -- sire, when the race is run,
  Is to hear You say, "\"Well" "done!\""
}

ChorusLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise,
  May my words bring ho -- nor to Your name.
  May my steps be wor -- ship,
  May my thoughts be praise,
  May my words bring ho -- nor to Your name.
}

DescantLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise.
  May my steps be wor -- ship,
  May my thoughts be praise.
}

\include "bumby-hymnal-style.ly"