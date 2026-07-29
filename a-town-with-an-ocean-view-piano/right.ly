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
  <b dis fis b>2.\stopTextSpan\!  r8 b8-. % ここで点線を終了
  % Aセクション開始：二重小節線と [A] マーク
  \bar "||"
  %{ \mark \default  % 自動で [A] が表示されるっす %}
  \mark \markup { \box \bold "A" }

  g'4 r8 b,8-. fis'4 r8 b,8
  
  e4 d8-. [c-.] d4 r8 g,-.

  a ([c-.) e-. g8-.] fis [(d-.) b-. a-.]

  b2 r4 r8 b-.

  g'4 r8 b,8-. fis'4 r8 b,-. 

  e4 d8-. [c-.] d4. b8-. 
}
