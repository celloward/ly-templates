\version "2.18.2"
#(set-global-staff-size 19.5)
\header {
	title = ""
	composer = ""
	tagline = ##f
}
verseOne = \lyricmode {

}
verseTwo = \lyricmode {

}
verseThree = \lyricmode {

}
verseFour = \lyricmode {

}
verseFive = \lyricmode {

}
harmonies = \chordmode {

}
\score {
\new ChoirStaff
\transpose g e
<<
	\new Staff = "upper"
	<<
	\new ChordNames \with { alignAboveContext = "upper" } {
    \set chordChanges = ##t
    \harmonies
  	}
	\new Voice = "soprano" {
		\relative c'' {
			\time 4/4

		}
	}
	\new Voice = "alto" {

	}
	>>
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"1. "
		\verseOne
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"2. "
		\verseTwo
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"3. "
		\verseThree
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"4. "
		\verseFour
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"5. "
		\verseFive
	}

	\new Staff
	<<
		\clef bass
		\new Voice = "tenor" {
			\key g \minor
			\relative c' {
				\time 4/4
				\voiceOne
			}
		}
		\new Voice = "bass" {
			\key g \minor
			\relative c {
				\time 4/4
				\voiceTwo
			}
		}
	>>
>>
}
