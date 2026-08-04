\version "2.24.3"
% 1小節ごとに改行しています。
right = \relative c' {
  \clef treble

  \global

  % 2. rall. の点線（TextSpanner）のテキスト設定
  \override TextSpanner.bound-details.left.text = \markup { \italic "rall." }
  % rall. をコードネームよりも上に表示するための優先度設定
  \override TextSpanner.outside-staff-priority = #2000

  <g b c g'>8\arpeggio\mf [<b' b'> <a a'> <g g'>8] <g g'>\startTextSpan [<fis fis'> <e e'> \dimTextDim <fis fis'>8] \>

  <a a'>8 [<g g'> <fis fis'> <g g'>8] <d' g b d>4.\arpeggio <c c'>8

  <b g' b>4. a'8 <b, e a>8 e b <g g'>

  \time 2/4
  <a d fis a>2 
  \bar "||"

  \time 4/4
  <b dis fis b>2.  r8 b8-.-1 \stopTextSpan\!% ここで点線を終了
  % Aメロ開始：二重小節線と [A] マーク
  \bar "||"
  %{ \mark \default  % 自動で [A] が表示されるっす %}
  \mark \markup { \box \bold "A" }

  g'4^\markup { \italic "a tempo" }-5 r8 b,8-.-1 fis'4-4 r8 b,8-2
  
  e4-5 d8-.-4 [c-.-3] d4-4 r8 g,-.-1

  a-1 ([c-.-2) e-.-3 g8-.-5] fis-4 [(d-.-3) b-.-2 a-.-1]

  b2-3 r4 r8 b-.-1

  g'4-5 r8 b,8-.-1 fis'4-4 r8 b,-.-2

  e4-5 d8-.-4 [c-.-3] d4.-4 b8-.-2 
  
  a-1 [(c-.-2) e-.-3 g-.-4] a-4 [(b-.-5) fis-.-4 d-.-2]

  e2.-3 r8 b-1

  % Bメロ開始：二重小節線と [B] マーク
  \bar ".|:"
  \mark \markup { \box \bold "B" }
  g'4-5 r8 b,-1 fis'4-4 r8 b,-2

  <e g,>4 d8 [c8] <d g,>4 r8 g, 

  % -------------コレで一つの小節（4拍分）何をやっているのかわからなければ「楽譜 多声部記譜」で検索！------------
  <<
    { a8 [c e g]  fis [d b a] } % 上声部：8分音符×8個 ＝ 4拍分
    \\
    {r2           a4     fis     } % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  % -------------コレで一つの小節（4拍分）------------
  <<
    {<d g b>2 r4 r8 b'}  % 上声部：8分音符×8個 ＝ 4拍分

    \\
    {r4 fis8 [e] dis4 fis} % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  g' r8 b, fis'4 r8 b,

  e4 d8 [c] d4. b8

  % -------------コレで一つの小節（4拍分）------------
  <<
    {a [c e g] a [b fis d]}  % 上声部：8分音符×8個 ＝ 4拍分

    \\
    {r2      d4     r4   } % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  % -------------コレで一つの小節（4拍分）------------
  <<
    {<g, b e>2. r4}  % 上声部：8分音符×8個 ＝ 4拍分
    \\
    {r2 r16 g [a b] c [d e fis] } % 下声部：2分休符×2個 ＝ 4拍分
  >>
  % -------------コレで一つの小節（4拍分）------------

  % Cメロ開始：二重小節線と [C] マーク
  \bar "||"
  \mark \markup { \box \bold "C" }
}
