
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

  c8\sustainOff\sustainOn [g' d' c] b\sustainOff\sustainOn [g] <g b,>4

  % -------------コレで一つの小節（4拍分）何をやっているのかわからなければ「楽譜 多声部記譜」で検索！------------
  <<
    {a,8\sustainOff\sustainOn e' <g c> e r4\sustainOff\sustainOn c'} % 上声部：8分音符×8個 ＝ 4拍分
    \\
    {r2 d,2} % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  g,8\sustainOff\sustainOn [d' a' g] fis\sustainOff\sustainOn [g a b]

  e,\sustainOff\sustainOn [b'] <e g>4 fis,8\sustainOff\sustainOn [dis'] <fis a>4 

  g,8\sustainOff\sustainOn e' <g b>4 gis,8\sustainOff\sustainOn [e'] <gis b>4

  a,8\sustainOff\sustainOn [e c a] <a' b,>4\sustainOff\sustainOn d    

  e,,8 [(b'-.\sustainOff) g'-. b,-.] d,2\sustainOn
}

