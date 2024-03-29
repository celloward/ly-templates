\version "2.18.2"
#(set-global-staff-size 19.5)
\header {
  title = ""
  composer = ""
  tagline = ##f
}
global = {
  \key
  \time
}
cantusnotes = \relative c'' {

}
cantuswords = \lyricmode {

}
altonotes = \relative c' {

}
altowords = \lyricmode {

}
tenornotes = \relative c' {
  \clef "G_8"

}
tenorwords = \lyricmode {

}
bassnotes = \relative c {
  \clef bass

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
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
  \set Score.automaticBars = ##f
}
