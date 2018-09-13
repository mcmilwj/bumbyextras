\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "build_dir")))
       "Slides"
       (string-append build_dir songNumber " - " title " - Slides")))

\book {
  \bookOutputName \outputName
  \paper {
    #(set-paper-size "arch alandscape" )

    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \on-the-fly #first-page \column {
        \fontsize #-4
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
          }
          \line {
            "Composer:"
            \fromproperty #'header:composer
          }
          \line {
            "Arranger:"
            \fromproperty #'header:arranger
          }
          \line {
            \fromproperty #'header:copyright
          }
          \line {
            \fromproperty #'header:license
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \center-column {
        \fill-line {
          \null
          {
            \abs-fontsize #44
            \bold
            \fromproperty #'header:songNumber
          }
        }
        \vspace #3
        \override #'(line-width . 70)
        \center-column {
          \abs-fontsize #48
          \bold
          \wordwrap-field #'header:title
        }
        \vspace #2
        \override #'(line-width . 60)
        \center-column {
          \abs-fontsize #24
          \italic
          \wordwrap-field #'header:scripture
        }
      }
    }
    scoreTitleMarkup = ##f
    #(layout-set-staff-size 44)
  }
  \pageBreak
  #(ly:message "first verse")
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseOne
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  #(ly:message "second verse")
  \score {
    <<
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseTwo
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  #(ly:message "third verse")
  \score {
    <<
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \thirdVerseAlign
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseThree
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  #(ly:message "chorus")
  \score {
    <<
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \sopranoChorus
          }
          {
            \global
            \keepWithTag #'usePartials \altoChorus
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \slideMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \alignChorus
        }
        \new Lyrics \lyricsto "align" {
          \huge \chorusLyrics
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \tenorChorus
          }
          {
            \global
            \keepWithTag #'usePartials \bassChorus
          }
      >>
    >>
    \SlideLayout
  }
  #(ly:message "coda")
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \sopranoCoda
          }
          {
            \global
            \keepWithTag #'usePartials \altoCoda
          }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoCoda
        }
        \new Lyrics \lyricsto "align" {
          \codaLyrics
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \tenorCoda
          }
          {
            \global
            \keepWithTag #'usePartials \bassCoda
          }
      >>
    >>
    \SlideLayout
  }
}
