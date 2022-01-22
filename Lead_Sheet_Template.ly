\version "2.18.2"
#(set-global-staff-size 19)
\paper {
  system-system-spacing #'padding = #2
}
\header {
  title = ""
  subtitle = " "
  composer = ""
  tagline = ##f
}
melody = \new Staff = "upper" \new Voice = "melody"{
    \time ****
    \key ****
    \relative c' {
      }
}
harmonies = \chordmode {
}
verseOne = \lyricmode {
}
verseTwo = \lyricmode {
}
verseThree = \lyricmode {
}
verseFour = \lyricmode {
}
\score {
  <<
    {
      \melody
    }
    \new ChordNames \with {alignAboveContext = "upper"} {
      \set chordChanges = ##t
      \harmonies
    }
    \new Lyrics \lyricsto "melody" {
      \set stanza = #"1. "
      \verseOne
    }
    \new Lyrics \lyricsto "melody" {
      \set stanza = #"2. "
      \verseTwo
    }
    \new Lyrics \lyricsto "melody" {
      \set stanza = #"3. "
      \verseThree
    }
    \new Lyrics \lyricsto "melody" {
      \set stanza = #"4. "
      \verseFour
    }
  >>
  \layout {
    indent = #0
    \context {
      \Lyrics
      fontSize = #.6
    }
    \context {
      \ChordNames noChordSymbol = ""
    }
  }
}
\markup { \fontsize #1 {
	\fill-line {
		\column {
		\null
			\line #""
			\line #""
			\line #""
			\line #""
		\null
			\line #""
			\line #""
			\line #""
			\line #""
		}
	}
}}
