% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Một Đêm Đông Giá" }
  subsubtitle = " "
  composer = "When a child is born - Tiro Dammicco"
  arranger = "Lời Việt và hòa âm: Tiến Linh"
  opus = " "
  tagline = ##f
}

nhacIntroSop = \relative c' {
  \key d \major
  \time 4/4
  \partial 4. a8 [
  <<
    {
      d8 e] |
      fs2 e8 [fs g
    }
    {
      b,8 cs |
      d2 cs8 d e
    }
  >>
  cs] |
  d2 r8 d [
  <<
    {
      g a]
    }
    {
      e fs
    }
  >>
  <<
    {
      \voiceOne
      b2 ~ b8 [cs d b] |
      a2 ~ a8 [b cs a]
      g2 ~ g8 [a b g]
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g2 fs |
      e2 ~ e4 r |
      r8 d cs b e2
    }
  >>
}

nhacIntroBas = \relative c' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \partial 4. g8 fs e |
  <<
    {
      a2 g |
      fs r
    }
    {
      d2 a |
      b r |
    }
  >>
  <<
    {
      \voiceOne
      d'1 ~ |
      d4 cs8 b cs4 r
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g2 gs |
      a ~ a4 r
    }
  >>
  \oneVoice
  r8 fs e d cs2
}

% Nhạc phiên khúc
nhacPhienKhucSolo = \relative c' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  r2 r8 a d e |
  fs2 e8 fs g cs, |
  d2 r8 a d fs |
  a2 b8 cs b fs |
  e2 r4 r8 b'16 a |
  d8 a16 g ~ g4 cs8 d e cs |
  a2 fs8 e4 d8 |
  a'2 e8 fs g cs, |
  d2 r |
  \repeat unfold 8 { R1 }
  
  \set Staff.printKeyCancellation = ##f
  \key ef \major
  R1
  r2 r8 bf ef f |
  g2 f8 g af d, |
  ef2 r8 bf ef g |
  bf2 c8 d c g |
  f2 r4 r8 c'16 bf |
  c8 bf16 af ~ af4 d8 ef f d |
  bf2 g8 f4 ef8 |
  bf'2 f8 g af d, |
  ef2 r4 r8 c'16 bf |
  c8 bf16 af ~ af4 d8 ef f d |
  bf2 g8 f4 ef8 |
  bf'2 f8 g af d, |
  \noBreak
  ef2 r4 d \bar "||"
  
  \key g \major
  g a b c \break
}

nhacPhienKhucSop = \relative c' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  <<
    {
      fs4 d e
    }
    {
      a b cs
    }
  >>
  r4 |
  
  d,2 e |
  d4 g fs r |
  a2 ~ a4 g8 fs |
  e2 a4 r |
  g1 |
  fs4 g fs2 |
  e1 |
  d2 ~ d8 a [d e] |
  fs2 e8 fs g cs, |
  d2 r8 a d fs |
  a2
  <<
    {
      b8 cs b
    }
    {
      \tweak font-size #-2 g8 \tweak font-size #-2 g
      \tweak font-size #-2 g
    }
  >>
  fs |
  e2 r4 r8 b'16 a |
  b8 a16 g ~ g4
  <<
    {
      cs8 d e cs |
      a2
    }
    {
      \tweak font-size #-2 g8 \tweak font-size #-2 g
      \tweak font-size #-2 g \tweak font-size #-2 g |
      \tweak font-size #-2 fs2
    }
  >>
  fs8 e4 d8 |
  a'2 e8 fs g cs, |
  d2  
  <<
    {
      e8 fs g
    }
    {
      cs,8 d e
    }
  >>
  cs
  
  \set Staff.printKeyCancellation = ##f
  \key ef \major
  d2 r8 bf ef f |
  g4. af16 g
  <<
    {
      f8 d ef f
    }
    {
      d8 bf c d
    }
  >>
  
  r8 ef g af bf2 |
  r8 g c8. af16 bf4 r |
  r8 bf d f ef4 ef8 ef |
  d4 d8 c bf4 r |
  r8 ef16 d ef8 c16 d ~ d4 r |
  r8 d g d ef2 ~ |
  ef8 ef d c d4 d |
  ef2 r4 r8 c16 bf |
  c8 ef16 d ef8 c16 d ~ d4 r |
  r8 d g d ef2 ~ |
  ef2 c,8 ef c d |
  g2 r4 r |
  
  \key g \major
  R1 |
  \repeat volta 2 {
    d'2 (e8 d c b |
    c2 d8 c b a |
    b2 c8 b a g |
    a4.) a8 d,4 r |
    g4 a b c |
  }
  \alternative {
     {
       b2 a4 r
     }
     {
       b2 (a) |
       g1
     }
  }
  \bar "|."
}

nhacPhienKhucBas = \relative c' {
  \key d \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  R1
  a2 cs |
  d4 d d r |
  fs e d2 |
  cs2 ~ cs4 r |
  d2 cs ~ |
  cs d ~ |
  d cs |
  a2 ~ a8 a [d cs] |
  d2 cs8 d e a, |
  d4 b8. b16 a8 a d fs |
  fs2 d8 d d d |
  <a \tweak font-size #-2 cs>2 r4 r8 fs'16 fs |
  d8 d16 d ~ d4 g8 g cs, cs |
  cs2 d8 a4 d8 |
  d2 cs8 d e a, |
  a2
  
  <g' g,>2
  
  \set Staff.printKeyCancellation = ##f
  \key ef \major
  <f bf>2 r8 af g <af f> |
  <bf ef,>2 bf8 <bf af> <bf g> <bf f>
  
  r8 bf, ef ef d2 |
  r8 ef af8. ef16 g4 r |
  r8 d g bf bf (af) af g |
  f4 f8 f g4 r |
  r8 ef16 ef ef4 f8 ef16 d ~ d4 |
  r8 g bf af g2 ( |
  f) f8 g af4 |
  g2 r4 r8 g16 g |
  ef8 ef16 ef ef4 f8 ef16 d ~ d4 |
  r8 g bf af g2 ( |
  f) c8 e c d |
  g2 r4 r |
  
  \key g \major
  R1 |
  g4. (fs8 e2 |
  a2 a4 d, |
  g2 g4 e |
  d8 e d) cs d4 r |
  d d d e |
  d (g) fs r |
  
  d (g g fs) |
  d1
}

% Lời phiên khúc
loiIntro = \lyrics {
  \markup { \italic "(Đàn)" }
  \repeat unfold 23 { "-" }
}
loiPhienKhucSop = \lyrics {
  Một đêm đông giá nơi hang đá quạnh hiu,
  Hài Nhi Con Chúa đã giáng sinh làm người.
  Chúa đã đến gian trần để cứu rỗi muôn người.
  An bình trời cao tràn lan khắp mọi nơi.
  
  \set stanza = "3."
  Rạng danh Thiên Chúa ở trên chốn trời cao
  Bình an dưới thế cho những ai ngay lành.
  Đây là chính Ngôi Lời đã trở nên con người.
  Cứu nhân độ thế niềm vui khắp mọi nơi.
  
  Đây là chính Ngôi Lời đã trở nên con người
  cứu nhân độ thế niềm vui khắp mọi nơi.
  
  Uh \repeat unfold 4 { - }
}

loiPhienKhucAlto = \lyrics {
  \repeat unfold 3 { "-" }
  Uh \repeat unfold 4 { - }
  Uh \repeat unfold 5 { - }
  Uh \repeat unfold 4 { - }
  \set stanza = "2."
  Tình yêu Thiên Chúa thật cao quý nhiệm mầu.
  Hài Nhi Con Chúa sinh xuống trong đơn hèn.
  Đã mang lấy xác phàm, ai suy thấu cho tường,
  Chúa Cả hoàn vũ ngự nơi máng lừa chiên.
  
  \markup { \italic "(đàn)" } \repeat unfold 14 { - }
  
  Rạng danh Thiên Chúa ở chốn trời cao
  Bình an thế nhân ai ngay lành, ai ngay lành
  Đây là chính Con Chúa trở nên người thế
  cứu nhân độ thế mọi nơi.
  
  Đây là chính,
  Đây là chính Con Chúa trở nên người thế
  niềm vui khắp mọi nơi.
  
  Glo -- ri -- a in ex -- cel -- sis De -- o.
  De -- o.
}

loiPhienKhucBas = \lyrics {
  Uh \repeat unfold 4 { - }
  Uh \repeat unfold 4 { - }
  Uh \repeat unfold 3 { - }
  \set stanza = "2."
  Tình yêu Thiên Chúa thật cao quý nhiệm mầu
  (thật nhiệm mầu).
  Hài nhi Con Chúa sinh xuống trong đơn hèn.
  Đã mang lấy xác phàm, ai suy thấu cho tường,
  Chúa Cả hoàn vũ ngự nơi máng lừa chiên.
  
  \markup { \italic "(đàn)" } \repeat unfold 9 { - }
  
  Rạng danh Thiên Chúa ở chốn trời cao
  Bình an thế nhân ai ngay lành,
  ai ngay lành.
  Đây là chính, chính Ngôi Lời trở nên con người
  niềm vui khắp nơi.
  
  Đây là chính
  Đây là Chính, chính Ngôi Lời trở nên con người
  niềm vui khắp mọi nơi.
  
  Glo -- ri -- a in ex -- cel -- sis De -- o.
  De -- o.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %page-count = 4
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
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
        \remove "Time_signature_engraver"
      }
    <<
     \new Voice = "beSop" {
       \clef treble \nhacIntroSop
     }
     \new Lyrics \lyricsto beSop \loiIntro
     >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
        \remove "Time_signature_engraver"
      }
    <<
      \new Voice = "beBass" {
        \clef bass \nhacIntroBas
      }
    >>
  >>
  \layout {
    ragged-last = ##f
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSolo
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef treble \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    %\override LyricHyphen.minimum-distance = #2
  }
}
