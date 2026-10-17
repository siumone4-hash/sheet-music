\version "2.22.0"

\header {
  title = "Rutina Diaria de Calentamiento"
  subtitle = "Ejercicios Básicos para Bajo de 5 Cuerdas"
  subsubtitle = "Práctica de Lectura, Técnica y Arpegios"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  margin-top = 12\mm
  margin-bottom = 12\mm
  margin-left = 12\mm
  margin-right = 12\mm
}

notas = {
  \clef bass
  \key c \major
  \time 4/4
  \tempo 4 = 80

  % --- EJERCICIO 1: ARAÑA CROMÁTICA ---
  \mark \markup { \bold \box "EJERCICIO 1: Araña Cromática (Dedos 1-2-3-4)" }
  e,4 f, fis, g, |
  a,4 bes, b, c |
  c4 b, bes, a, |
  g,4 fis, f, e, |

  \break

  % --- EJERCICIO 2: SALTO DE TÓNICA Y QUINTA (Arpegio) ---
  \mark \markup { \bold \box "EJERCICIO 2: Saltos de Quinta (Ideal para Acompañamiento)" }
  c,2 g,2 |
  a,2 e,2 |
  f,2 c,2 |
  g,2 d,2 |

  \break

  % --- EJERCICIO 3: ESCALA MAYOR BÁSICA EN DO ---
  \mark \markup { \bold \box "EJERCICIO 3: Escala Mayor de Do (Do - Re - Mi - Fa - Sol)" }
  c,4 d, e, f, |
  g,4 a, b, c |
  c4 b, a, g, |
  f,4 e, d, c, \bar "|."
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