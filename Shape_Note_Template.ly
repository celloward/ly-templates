\version "2.18.2"
#(set-global-staff-size 19.5)
#(set-default-paper-size "executive" 'landscape)
\header {
  title =
  composer =
  poet =
  tagline = ##f
}
global = {
  \key
  \time
}
cantusnotes = \relative c' {
  \sacredHarpHeads
}
cantuswords = \lyricmode {
  \set stanza = "1. "
}
altonotes = \relative c' {
  \sacredHarpHeads
}
altowords = \lyricmode {
  \set stanza = "2. "
}
tenornotes = \relative c {
  \clef "G_8"
  \sacredHarpHeads
}
tenorwords = \lyricmode {
  \set stanza = "3. "
}
bassnotes = \relative c {
  \clef bass
  \sacredHarpHeads
}
basswords = \lyricmode {

}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "cantus" <<
        \global
        \cantusnotes
      >>
      \new Lyrics \lyricsto "cantus" {
        \cantuswords
      }
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \new Lyrics \lyricsto "alto" {
        \altowords
      }
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \new Lyrics \lyricsto "tenor" {
        \tenorwords
      }
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \new Lyrics \lyricsto "bass" {
        \basswords
      }
    >>
  >>
}


\layout {
  indent = #0
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
  \set Score.automaticBars = ##f
}
\midi {
 \set Score.midiInstrument = #"reed organ"
}
