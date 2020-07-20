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
      \lyricsto "cantus" \new Lyrics \cantuswords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \lyricsto "bass" \new Lyrics \basswords
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
