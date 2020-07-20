\version "2.18.2"
#(set-global-staff-size 19.5)

\header {
	title = ""
	composer = ""
	tagline = ##f
}
verseTwo = \lyricmode {
	
}
verseThree = \lyricmode {
	
}
verseFive = \lyricmode {
	
}
verseSeven = \lyricmode {
	
}
verseEight = \lyricmode {
	
}

% Begin printed score
% Verse 1 and 4
\markup { \fontsize #1.1 {
	\fill-line {
		\hspace #1
		\column {
			\null
			\line {  }
			\line {  }
			\line {  }
			\line {  }
			\null
		}
		\hspace #2
		\column {
			\null
			\line {  }
			\line {  }
			\line {  }
			\line {  }
			\null
		}
		\hspace #1
	}
}
}

% Verses 2-3 and 5
\score {
\new ChoirStaff
<<
	\new Staff = "upper"
	<<
	\new Voice = "soprano" {
		\relative c'' {
			\key 
			\time 
			\voiceOne
			
		}
	}
	\new Voice = "alto" {
		\relative c'' {
			\voiceTwo
			
		}
	}
	>>
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"2. "
		\verseTwo
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"3. "
		\verseThree
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"5. "
		\verseFive
	}
	\new Staff
	<<
		\clef bass
		\new Voice = "tenor" {
			\relative c' {
				\key 
				\voiceOne
				
			}
		}
		\new Voice = "bass" {
			\relative c {
				\voiceTwo
				
			}
		}
	>>
>>
\layout {
	indent = #0
	\override Staff.TimeSignature.stencil = ##f
}
}

% Verse 6
\markup { \fontsize #1.1 {
	\fill-line {
		\column {
			\line {  }
			\line {  }
			\line {  }
			\line {  }
			\null
		}
	}
}
}

% Verses 7-8
\score {
\new ChoirStaff
<<
	\new Staff = "upper"
	<<
	\new Voice = "soprano" {
		\relative c'' {
			\key
			\time
			\voiceOne
			
		}
	}
	\new Voice = "alto" {
		\relative c'' {
			\voiceTwo
			
		}
	}
	>>
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"7. "
 		\verseSeven
	}
	\new Lyrics \lyricsto "soprano" {
		\set stanza = #"8. "
		\verseEight
	}
	\new Staff
	<<
		\clef bass
		\new Voice = "tenor" {
			\relative c' {
				\key 
				\voiceOne
				
			}
		}
		\new Voice = "bass" {
			\relative c {
				\voiceTwo
				
			}
		}
	>>
>>
\layout {
	indent = #0
	\override Staff.TimeSignature.stencil = ##f
}
}