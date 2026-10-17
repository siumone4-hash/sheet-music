\version "2.22.0"

\header {
  title = "Dios es más grande"
  subtitle = "Miel San Marcos (Versión en Do Mayor)"
  subsubtitle = "Arreglo Melódico Sencillo para Bajo de 5 Cuerdas"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  margin-top = 12\mm
  margin-bottom = 12\mm
  margin-left = 12\mm
  margin-right = 12\mm
}

% Arreglo con notas base y pequeños adornos musicales sencillos
notas = {
  \clef bass
  \key c \major
  \time 4/4
  \tempo 4 = 105

  % --- INTRO ---
  \mark \markup { \bold \box "INTRO" }
  c,2 c,2^\markup { \bold "C" } |
  f,2 f,2^\markup { \bold "Fmaj7" } |

  % --- VERSO 1 ---
  \mark \markup { \bold \box "VERSO 1" }
  c,2 e,2^\markup { \bold "C" } |
  g,2 b,2^\markup { \bold "G" } |
  d2 a,2^\markup { \bold "Dm7" } |
  f,4 f,4 c,2^\markup { \bold "F - C" } |
  
  c,2 c,2^\markup { \bold "C" } |
  g,2 b,2^\markup { \bold "G" } |
  d2 f,2^\markup { \bold "Dm7 - F" } |
  g,2 a,2^\markup { \bold "G - Am7" } |
  f,1^\markup { \bold "F" } |

  % --- CORO ---
  \mark \markup { \bold \box "CORO" }
  \repeat volta 2 {
    c,4 e, g, c'4^\markup { \bold "C/E (Arpegio base)" } |
    g,4 b, d g4^\markup { \bold "G" } |
    d4 f a d'4^\markup { \bold "Dm7" } |
    f,4 c f a4^\markup { \bold "F/C" } |
    a,2 g,2^\markup { \bold "Am7 - G" } |
  }

  % --- VERSO 2 ---
  \mark \markup { \bold \box "VERSO 2" }
  c,2 e,2^\markup { \bold "C" } |
  g,2 g,2^\markup { \bold "G" } |
  d2 a,2^\markup { \bold "Dm7" } |
  f,1^\markup { \bold "F" } |
  g,2 a,2^\markup { \bold "G - Am7" } |
  f,2 g,2^\markup { \bold "F/C - G" } |

  % --- PUENTE ---
  \mark \markup { \bold \box "PUENTE (Groove Constante)" }
  \repeat volta 2 {
    f,4 f, f, f,^\markup { \bold "F" } |
    g,4 g, g, g,^\markup { \bold "G" } |
    a,4 a, a, a,^\markup { \bold "Am" } |
    b,,4 b,, b,, b,,^\markup { \bold "G/B (Si grave)" } |
  }

  % --- FINAL ---
  \mark \markup { \bold \box "FINAL" }
  f,2 b,,2^\markup { \bold "F - G/B" } |
  a,2 g,2^\markup { \bold "Am7 - G" } |
  c,1\bar "|."
}

\score {
  <<
    \new Staff \with { 
      instrumentName = #"Bajo"
      shortInstrumentName = #"B."
    } \notas

    \new TabStaff \with {
      stringTunings = #bass-five-string-tuning
      instrumentName = #"TAB"
      shortInstrumentName = #"T."
    } \notas
  >>
  \layout {
    \context {
      \Score
      \override RehearsalMark.font-size = #1.5
      \override RehearsalMark.padding = #2
    }
  }
}