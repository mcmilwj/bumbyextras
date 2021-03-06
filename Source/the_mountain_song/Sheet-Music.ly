\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

\book {
  \paper {
    #(set-paper-size "letter")
      
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
      
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing.basic-distance = #10
    system-system-spacing.minimum-distance = #6
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
      
    indent = 0
    first-page-number = #2
    two-sided = ##t
    inner-margin = 0.25\in
    outer-margin = 0.25\in
    binding-offset = 0.5\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    ragged-right = ##f
    ragged-last = \SheetMusicRaggedLast
    print-page-number = ##f
    ragged-bottom = \SheetMusicRaggedBottom
    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:meter
            \char ##x2022
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \char ##x2022
            \fromproperty #'header:composer
          }
          \line {
            \fromproperty #'header:copyright
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #20
          \bold
          \fill-line {
            \fromproperty #'header:lhs
            \override #'(line-width . 85)
            \wordwrap-field #'header:title
            \fromproperty #'header:rhs
          }
          \SheetMusicScripture
        }
      }
      \vspace #0.5
    }
  }
  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'(usePartials verseOneSheetRhythms) \SopranoVerseMusic
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'(usePartials verseTwoSheetRhythms) \SopranoVerseMusic
        }
      >>
      \new Lyrics \lyricsto "alignOne" {
        \VerseOne
      }
      \new Lyrics \lyricsto "alignTwo" {
        \VerseTwo
      }
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
  \pageBreak
  \markup {
    \huge \bold "Chorus:"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoChorusMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoChorusMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicChorusBreaks
        }
        \context NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \Chorus
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorChorusMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassChorusMusic
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
  \markup {
    \huge \italic "Repeat the last line softly at the end only."
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoChorusTailMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicChorusTailBreaks
        }
        \context NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoChorusTailMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \ChorusTail
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassChorusTailMusic
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
