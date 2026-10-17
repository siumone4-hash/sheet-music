\version "2.22.0"

\header {
  title = "Rutina Diaria de Calentamiento"
  subtitle = "Ejercicios Básicos para Bajo de 5 Cuerdas"
  subsubtitle = "Práctica de Lectura, Técnica y Arpegios (con Nombres de Notas)"
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
  e,4^\markup { "Mi" } f,^\markup { "Fa" } fis,^\markup { "Fa#" } g,^\markup { "Sol" } |
  a,4^\markup { "La" } bes,^\markup { "Sib" } b,^\markup { "Si" } c^\markup { "Do" } |
  c4^\markup { "Do" } b,^\markup { "Si" } bes,^\markup { "Sib" } a,^\markup { "La" } |
  g,4^\markup { "Sol" } fis,^\markup { "Fa#" } f,^\markup { "Fa" } e,^\markup { "Mi" } |

  \break

  % --- EJERCICIO 2: SALTO DE TÓNICA Y QUINTA ---
  \mark \markup { \bold \box "EJERCICIO 2: Saltos de Quinta (Ideal para Acompañamiento)" }
  c,2^\markup { "Do" } g,2^\markup { "Sol" } |
  a,2^\markup { "La" } e,2^\markup { "Mi" } |
  f,2^\markup { "Fa" } c,2^\markup { "Do" } |
  g,2^\markup { "Sol" } d,2^\markup { "Re" } |

  \break

  % --- EJERCICIO 3: ESCALA MAYOR BÁSICA EN DO ---
  \mark \markup { \bold \box "EJERCICIO 3: Escala Mayor de Do (Do - Re - Mi - Fa - Sol)" }
  c,4^\markup { "Do" } d,4^\markup { "Re" } e,4^\markup { "Mi" } f,4^\markup { "Fa" } |
  g,4^\markup { "Sol" } a,4^\markup { "La" } b,4^\markup { "Si" } c4^\markup { "Do" } |
  c4^\markup { "Do" } b,4^\markup { "Si" } a,4^\markup { "La" } g,4^\markup { "Sol" } |
  f,4^\markup { "Fa" } e,4^\markup { "Mi" } d,4^\markup { "Re" } c,4^\markup { "Do" } \bar "|."
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