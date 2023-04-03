% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Anima Christi" }
  poet = "Nhạc: Marco Fristina"
  composer = "Lời Việt: NMT"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  fs4 fs8 fs b4 b8 b |
  a4 a8 (g) fs2 |
  e4 fs8 g d4 e |
  fs4. fs8 fs2 |
  fs4 fs b cs8 d |
  d (cs) b (a) b2 |
  b4 fs a8 (g) fs e |
  d e fs8. fs16 fs2 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  d4 d8 d d4 e8 e |
  e4 e8 (e) d2 |
  b4 b8 b b4 b |
  d4. d8 cs2 |
  d4 fs fs e8 e |
  e4 e8 (e) d2 |
  fs4 fs e b8 b |
  b b cs8. cs16 d2
}

nhacDiepKhucTenor = \relative c' {
  b4 b8 b b4 b8 b |
  d4 cs8 (cs) d2 |
  g,4 8 g fs4 fs |
  g4. b8 as2 |
  fs4 fs b b8 b |
  a4 cs8 (cs) b2 |
  b4 b b g8 g |
  b b as8. as16 b2
}

nhacDiepKhucBas = \relative c' {
  b4 b8 a g4 g8 g |
  a4 a,8 (a) b2 |
  e4 d8 cs b4 b |
  b4. b8 fs'2 |
  b,4 b g g'8 g |
  a4 fs8 (fs) g2 |
  d4 d e e8 e |
  fs fs fs8. fs16 b,2
}

nhacPhienKhucSop = \relative c'' {
  b4 b8 b b4 cs8 d |
  d cs b a b4 ~ b |
  a8 g fs e g4 fs8 b, |
  fs'4 e fs2 |
  fs4 g8 a b4 cs8 d |
  d4 cs b2 |
  a8 g fs e g4 fs8 b, |
  d4 cs8 b2 \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy hồn của Đức Chúa Giê -- su Ki -- tô
  Xin thánh hóa đời con mãi Chúa hỡi
  Lạy mình Thánh Chúa Ki -- tô Giê -- su
  Xin Ngài cứu độ gian trần trong lúc gian nan.
}

loiDiepKhucAlto = \lyricmode {
  Lạy hồn của Đức Chúa Giê -- su Ki -- tô
  Xin thánh hóa đời con mãi Chúa hỡi
  Lạy mình Thánh Chúa Ki -- tô Giê -- su
  Xin Ngài cứu độ gian trần trong lúc gian nan.
}

loiDiepKhucTenor = \lyricmode {
  Lạy hồn của Đức Chúa Giê -- su Ki -- tô
  Xin thánh hóa đời con mãi Chúa hỡi
  Lạy mình Thánh Chúa Ki -- tô Giê -- su
  Xin Ngài cứu độ gian trần trong lúc gian nan.
}

loiDiepKhucBas = \lyricmode {
  Lạy hồn của Đức Chúa Giê -- su Ki -- tô
  Xin thánh hóa đời con mãi Chúa hỡi
  Lạy mình Thánh Chúa Ki -- tô Giê -- su
  Xin Ngài cứu độ gian trần trong lúc gian nan.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Giê -- su hy sinh trên Thánh giá đau thương vì con
  Xin xót thương phù giúp cho đoàn con thêm sức.
  Lạy lòng từ ái Đức thánh Chúa Giê -- su
  Xin cho con ẩn náu nơi từ vết thương Ngài.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Xin ban cho con luôn thấy Chúa không bao giờ xa
  Xin hãy thương gìn giữ thoát khỏi tay quân dữ
  Gần giờ lâm tử xin Chúa đến đón con
  Xin hãy nhận lời chúng con từ trái tim Ngài.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Xin ban cho con đức Kính Mến Tin Trông Cậy luôn
  Xin chỉ dạy đường lối con chạy đến bên Chúa
  Hiệp cùng các Thánh luôn cất tiếng ca khen
  Đấng uy linh hùng dũng con thờ kính muôn đời.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
  left-margin = 12\mm
  right-margin = 12\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  page-count = #1
  print-page-number = #f
}

TongNhip = {
  \key d \major \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacDiepKhucSop }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff \with {
      instrumentName = #"A"
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacDiepKhucAlto }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff \with {
      instrumentName = #"T"
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacDiepKhucTenor }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
    >>
    \new Staff \with {
      instrumentName = #"B"
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacDiepKhucBas }
      \new Lyrics \lyricsto beBass \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSop }
        \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
        \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
