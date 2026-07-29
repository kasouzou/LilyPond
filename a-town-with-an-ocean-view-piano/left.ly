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
  e,,8-. [b'-. g'8-.] r8 d,8-. [a'-. fis'8-.] r8

  c,-. [g'-. e'-.] r8 b,-. [g'-. d'-.] r8

  a,-. [e'-. c'-.] r8 d,-. [a'-. d-.] r8

  g,,-. [d'-. a'-. g-.] fis-. [g-. a-. b-.] 
}
