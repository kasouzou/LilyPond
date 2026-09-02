\version "2.24.3"
% 1小節ごとに改行しています。
left = \relative c {
  \clef bass

  \global

  <a a,>8\sustainOn [<g' c e> <g c e> <g c e>8] <g c e>8 [<e g c> <e g c> <e g c>8\sustainOff]

  b8\sustainOn( [g' <b d> g8\sustainOff]) c,8\sustainOn([g' <c e> g\sustainOff]) 

  cis,\sustainOn (g' <b e> g <e' g> b e, g\sustainOff) 

  \time 2/4
  d\sustainOn (a'8 <d fis> g,\sustainOff)

  \time 4/4
  b,\sustainOn (fis' b dis b'4 \sustainOff) r4

  % Aセクション開始
  \bar "||"
  e,,8-. -5 [b'-. -2 g'8-. -1] r8 d,8-. -5 [a'-. -2 fis'8-. -1] r8

  c,-. -5 [g'-. -2 e'-. -1] r8 b,-. -5 [g'-. -2 d'-. -1] r8

  a, -. -5 [e'-. -2 c'-. -1] r8 d,-. -5 [a'-. -2 d-. -1] r8

  g,,-. -5 [d'-. -2 a'-. -1 g-. -2] fis-. -3 [g-. -2 a-. -1 b-. -2] 

  e,-. -5 [b'-. -2 g'-. -1] r8 fis,-. -5 [b-. -2 a'-. -1] r8 

  g,-. -5 [e'-. -2 b'-. -1] r8 gis,-. -5 [e'-. -2 b'-. -1 e,-. -2]

  a,-1 [(e-. -2) c-. -3 a-. -5] b-5 [(fis'-. -2) b-. -1 b, -. -5]

  \set Staff.pedalSustainStyle = #'mixed
  e-5 [(b'-. -2 g'-. -1 b,-. -2)] e,2\sustainOn-5 

  \bar ".|:"

  e,8-5\sustainOff\sustainOn [b'-3] <e-2 g-1>4 d,8-5\sustainOff\sustainOn [a'-3] <d-2 fis-1>4

  c8-5\sustainOff\sustainOn [g'-3 d'-1 c-2] b-1\sustainOff\sustainOn [g-2] <g-1 b,-5>4

  % -------------コレで一つの小節（4拍分）何をやっているのかわからなければ「楽譜 多声部記譜」で検索！------------
  <<
    {a,8-5\sustainOff\sustainOn e'-3 <g-2 c-1> e-4 r4\sustainOff\sustainOn c'-1} % 上声部：8分音符×8個 ＝ 4拍分
    \\
    {r2                                             d,2-5} % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  g,8-5\sustainOff\sustainOn [d'-3 a'-1 g-2] fis-3\sustainOff\sustainOn [g-2 a-1 b-2]

  e,-5\sustainOff\sustainOn [b'-3] <e-2 g-1>4 fis,8-5\sustainOff\sustainOn [dis'-3] <fis-2 a-1>4 

  g,8-5\sustainOff\sustainOn e'-3 <g-2 b-1>4 gis,8-5\sustainOff\sustainOn [e'-3] <gis-2 b-1>4

  a,8-1\sustainOff\sustainOn [e-2 c-3 a-5] <a'-5 b,-1>4\sustainOff\sustainOn d-1    

  e,,8-5 [(b'-. -2\sustainOff) g'-. -1 b,-. -2] d,2-5\sustainOn

  % ここからCメロ
  a'8-5\sustainOff\sustainOn [e'-3 <g-2 c-1> e-3] <g-2 c-1> [e-3 <g-2 c-1> e-3]

  b-5\sustainOff\sustainOn [fis'-3 fis'-1 fis,-5] e'-1[fis,-5 d'-1 fis,-3]

  c-5\sustainOff\sustainOn [g'-3 c-1 g-3] d'-1 [g,-3 c-1 g-3]

  g,-5\sustainOff\sustainOn[d'-3 b'-1 d,-3] c'-1[d,-3 d'-1 d,-3]
  
  a-5\sustainOn\sustainOff[e'-3 g-2 c-1] d4-1\sustainOff\sustainOn <d,-5 c'-1>

  b8-5\sustainOff\sustainOn[d-3 a'-2 d-1] e4-1\sustainOff\sustainOn <e,-5 d'-1> 

  a,8-5\sustainOff\sustainOn[e'-3 g-2 cis-1~] cis-1[g-2 cis-1 g-2] 

  a,-5\sustainOff\sustainOn[e'-3] <g-2 c-1>4 d,8-5\sustainOff\sustainOn[a'-3 fis'-1 e-2]

  \time 2/4
  <dis-3 b'-1>4\sustainOff\sustainOff r4\sustainOn
  
  \bar ":|."
  \time 4/4
  e,8-5\sustainOff[(b'-. -2) g'-. -1 b,-. -1] e,2-5

  % ここからDメロ
  \bar "||"
  e'8[(b'-.) <e g>-. b-.] a,[(e'-.)] c'16-.[b-. a-. g-.]

  d8[(a'-.) <d fis>-. a-.] g,[(d'-.)] b'16-.[a-. g-. fis-.]

  c8[(g'-.) <c e>-. g-.] fis,[(c'-.)] a'16-.[g-. fis-. e-.]

  b8[(fis'-.) <a dis>-. fis-.] e[(g-.)] b16-.[a-. g-. fis-.]

  e8[(b'-.) <e g>-. b-.] a,[(e'-.)] c'16-.[b-. a-. g-.]

  d8[(a'-.) <d fis>-. a-.] g,[(d'-.)] b'16-.[a-. g-. fis-.]

  c8[(g'-.) <c e>-. g-.] fis,[(c'-.)] a'16-.[g-. fis-. e-.]

  b8[(fis'-.) <a dis>-. fis-.] e[(b-.) g-. e-.]

  % ここからEメロ
  e\sustainOn [b' <e g> b] a\sustainOff\sustainOn[e'] c'16[b a g]

  d8\sustainOff\sustainOn[a' <d fis> a] g,\sustainOff\sustainOn[d'] b'16[a g fis] 

  c8\sustainOff\sustainOn[g' <c e> g] g,\sustainOff\sustainOn[d'] a'16[g fis e]

  b8\sustainOff\sustainOn[fis' <a dis> fis] e,\sustainOff\sustainOn[g] e'4 
  
  \bar "|"
  \time 2/4
  <e b'>2\sustainOff\sustainOn

  \time 6/8
  <d, d'>2.\sustainOff\sustainOn

  <d' g,>8.\sustainOff\sustainOn[<d g,>8.] <d g,>4. ~

  <d g,>4. a8\sustainOff\sustainOn[a16[b d e]]\sustainOff

  % ここからFメロ
  \bar "||" 
  \key d \major
  
  <d d,>8\sustainOn[<fis a d> <fis a d>] d\sustainOff\sustainOn[<g b d> <g b d>]

  d\sustainOff\sustainOn[<fis a d> <fis a d>] d\sustainOff\sustainOn[<g b d> <g b d>]

  <d d,>\sustainOff\sustainOn[<g b d> <g b d>] d\sustainOff\sustainOn[<g a c> <g a c>]

  d\sustainOff\sustainOn[<g b d> <g b d>] <a c e>\sustainOff\sustainOn[<g b d> <a c e>]

  <d, d,>\sustainOff\sustainOn[<fis a d> <fis a d>] d\sustainOff\sustainOn[<g b d> <g b d>]

  d\sustainOff\sustainOn[<fis a d> <fis a d>] d\sustainOff\sustainOn[<g b d> <g b d>]

  <d d,>\sustainOff\sustainOn[<d' b g> <d b g>] d,\sustainOff\sustainOn[<c' a g> <c a g>]

  d,\sustainOff\sustainOn[<d' b g> <d b g>] <e c a>\sustainOff\sustainOn[<d b g> <e c a>] 

  <d, d,>\sustainOff\sustainOn[<d' a fis> <d a fis>] d,\sustainOff\sustainOn[<d' b g> <d b g>]

  d,\sustainOff\sustainOn[<d' a fis> <d a fis>] d,\sustainOff\sustainOn[<d' b g> <d b g>]

  <d, d,>\sustainOff\sustainOn[<d' b g> <d b g>] d,\sustainOff\sustainOn[<c' a g> <c a g>]

  d,\sustainOff\sustainOn[<d' b g> <d b g>] <e c a>\sustainOff\sustainOn[<d b g> <e c a>]

  <d, d,>\sustainOff\sustainOn[<d' a fis> <d a fis>] d,\sustainOff\sustainOn[<d' b g> <d b g>]

  d,\sustainOff\sustainOn[<d' a fis> <d a fis>] d,\sustainOff\sustainOn[<d' b g> <d b g>]

  <d, d,>\sustainOff\sustainOn[<g b d> <g b d>] d\sustainOff\sustainOn[<g a c> <g a c>] 

  d\sustainOff\sustainOn[<d' b g> <d b g>] <e c a>\sustainOff\sustainOn[<d b g> <e c a>]
}
