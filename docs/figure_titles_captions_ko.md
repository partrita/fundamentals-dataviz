# 제목, 캡션, 표 {#figure-titles-captions}

데이터 시각화는 미적으로 만족스러운 특징만을 위해 보는 예술 작품이 아닙니다. 대신, 그 목적은 정보를 전달하고 요점을 제시하는 것입니다. 시각화를 준비할 때 이 목표를 안정적으로 달성하려면 데이터를 맥락에 배치하고 제목, 캡션 및 기타 주석을 함께 제공해야 합니다. 이 장에서는 그림에 적절하게 제목을 붙이고 레이블을 지정하는 방법에 대해 설명합니다. 또한 데이터를 표 형태로 제시하는 방법에 대해서도 설명합니다.

## 그림 제목과 캡션

모든 그림의 중요한 구성 요소 중 하나는 그림 제목입니다. 모든 그림에는 제목이 필요합니다. 제목의 역할은 그림이 무엇에 관한 것인지, 어떤 요점을 제시하는지를 독자에게 정확하게 전달하는 것입니다. 그러나 그림 제목이 예상했던 위치에 반드시 나타나는 것은 아닙니다. 그림 \@ref(fig:corruption-development)을 살펴보십시오. 제목은 "부패와 인간 개발: 가장 발전된 국가는 부패가 가장 적습니다."입니다. 그러나 이 제목은 그림 위에 표시되지 않습니다. 대신 제목은 그림 표시 아래 캡션 블록의 첫 번째 부분으로 제공됩니다. 이것이 제가 이 책 전체에서 사용하는 스타일입니다. 저는 일관되게 통합된 제목 없이 그림을 표시하고 별도의 캡션과 함께 표시합니다. (한 가지 예외는 챕터 \@ref(directory-of-visualizations)의 양식화된 플롯 예제로, 제목이 있고 캡션이 없습니다.)

(ref:corruption-development) 부패와 인간 개발: 가장 발전된 국가는 부패가 가장 적습니다. 이 그림은 @Economist-corruption의 게시물에서 영감을 받았습니다. 데이터 출처: 국제 투명성 기구 및 UN 인간 개발 보고서

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/corruption-development-1.png" alt="(ref:corruption-development)" width="685.714285714286" />
<p class="caption">(\#fig:corruption-development)(ref:corruption-development)</p>
</div>

또는 그림 제목과 데이터 출처 설명과 같은 캡션의 다른 요소를 주 표시에 통합할 수 있습니다(그림 \@ref(fig:corruption-development-infographic)). 직접 비교하면 그림 \@ref(fig:corruption-development-infographic)이 그림 \@ref(fig:corruption-development)보다 더 매력적이라고 생각할 수 있으며, 이 책 전체에서 후자의 스타일을 선택하는 이유가 궁금할 수 있습니다. 두 스타일은 적용 분야가 다르며 통합된 제목이 있는 그림은 기존 책 레이아웃에 적합하지 않기 때문입니다. 기본 원칙은 그림에는 제목이 하나만 있을 수 있다는 것입니다. 제목은 실제 그림 표시에 통합되거나 그림 아래 캡션의 첫 번째 요소로 제공됩니다. 그리고 출판물이 각 그림 아래에 일반적인 캡션 블록이 있도록 레이아웃된 경우 제목은 해당 텍스트 블록에 *반드시* 제공되어야 합니다. 이러한 이유로 기존 책이나 기사 출판의 맥락에서는 일반적으로 제목을 그림에 통합하지 않습니다. 통합된 제목, 부제목 및 데이터 출처 설명이 있는 그림은 독립형 인포그래픽으로 사용하거나 함께 제공되는 캡션 텍스트 없이 소셜 미디어나 웹 페이지에 게시하려는 경우에 적합합니다.

(ref:corruption-development-infographic) 그림 \@ref(fig:corruption-development)의 인포그래픽 버전. 제목, 부제목 및 데이터 출처 설명이 그림에 통합되었습니다. 이 그림은 그대로 웹에 게시하거나 별도의 캡션 블록 없이 사용할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/corruption-development-infographic-1.png" alt="(ref:corruption-development-infographic)" width="685.714285714286" />
<p class="caption">(\#fig:corruption-development-infographic)(ref:corruption-development-infographic)</p>
</div>

<div class="rmdtip">
<p>문서 레이아웃에서 각 그림 아래에 캡션 블록을 사용하는 경우 그림 제목을 그림 위가 아니라 각 캡션 블록의 첫 번째 요소로 배치하십시오.</p>
</div>

그림 캡션에서 가장 흔히 볼 수 있는 실수 중 하나는 캡션의 첫 번째 요소로 적절한 그림 제목을 생략하는 것입니다. 그림 \@ref(fig:corruption-development)의 캡션을 다시 살펴보십시오. "부패와 인간 개발"로 시작합니다. "이 그림은 부패가 인간 개발과 어떻게 관련되는지 보여줍니다."로 시작하지 *않습니다*. 캡션의 첫 번째 부분은 항상 제목이지 그림 내용에 대한 설명이 아닙니다. 제목은 완전한 문장일 필요는 없지만 명확한 주장을 하는 짧은 문장은 제목 역할을 할 수 있습니다. 예를 들어 그림 \@ref(fig:corruption-development)의 경우 "가장 발전된 국가는 가장 부패하지 않습니다"와 같은 제목도 괜찮았을 것입니다.

## 축 및 범례 제목

모든 플롯에 제목이 필요한 것처럼 축과 범례에도 제목이 필요합니다. (축 제목은 종종 구어체로 *축 레이블*이라고 합니다.) 축 및 범례 제목과 레이블은 표시된 데이터 값이 무엇이며 플롯 미학에 어떻게 매핑되는지 설명합니다.

모든 축과 범례에 적절하게 레이블이 지정되고 제목이 붙은 플롯의 예를 제시하기 위해 챕터 \@ref(visualizing-associations)에서 자세히 논의한 파랑어치 데이터 세트를 가져와 버블 플롯으로 시각화했습니다(그림 \@ref(fig:blue-jays-scatter-bubbles2)). 이 플롯에서 축 제목은 *x* 축이 그램 단위의 체질량을 나타내고 *y* 축이 밀리미터 단위의 머리 길이를 나타냄을 명확하게 보여줍니다. 마찬가지로 범례 제목은 점 색상이 새의 성별을 나타내고 점 크기가 밀리미터 단위의 새 두개골 크기를 나타냄을 보여줍니다. 모든 수치 변수(체질량, 머리 길이, 두개골 크기)에 대해 관련 제목이 표시된 변수뿐만 아니라 변수가 측정된 단위도 명시한다는 점을 강조합니다. 이것은 좋은 관행이며 가능하면 항상 수행해야 합니다. 범주형 변수(예: 성별)에는 단위가 필요하지 않습니다.

(ref:blue-jays-scatter-bubbles2) 123마리 파랑어치의 머리 길이 대 체질량. 새의 성별은 색상으로, 새의 두개골 크기는 기호 크기로 표시됩니다. 머리 길이 측정에는 부리 길이가 포함되지만 두개골 크기 측정에는 포함되지 않습니다. 데이터 출처: 키스 타빈, 오벌린 대학

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/blue-jays-scatter-bubbles2-1.png" alt="(ref:blue-jays-scatter-bubbles2)" width="576" />
<p class="caption">(\#fig:blue-jays-scatter-bubbles2)(ref:blue-jays-scatter-bubbles2)</p>
</div>

그러나 레이블 자체가 완전히 설명적인 경우 축 또는 범례 제목을 생략할 수 있는 경우가 있습니다. 예를 들어 "암컷"과 "수컷"으로 레이블이 지정된 두 가지 다른 색상의 점을 보여주는 범례는 색상이 성별을 인코딩함을 명확하게 나타냅니다. 이 사실을 명확히 하기 위해 "성별"이라는 제목은 필요하지 않으며 실제로 이 책 전체에서 성별을 나타내는 범례에 대한 범례 제목을 종종 생략했습니다(예: 그림 \@ref(fig:titanic-passengers-by-class-sex), \@ref(fig:blue-jays-scatter-sex) 또는 \@ref(fig:titanic-passenger-breakdown) 참조). 마찬가지로 국가 이름은 일반적으로 무엇인지 명시하는 제목이 필요하지 않으며(그림 \@ref(fig:Americas-life-expect)), 영화 제목(그림 \@ref(fig:boxoffice-vertical))이나 연도(그림 \@ref(fig:tech-stocks-minimal-labeling))도 마찬가지입니다.

(ref:tech-stocks-minimal-labeling) 4개 주요 기술 회사의 시간에 따른 주가. 각 회사의 주가는 2012년 6월에 100과 같도록 정규화되었습니다. 이 그림은 챕터 \@ref(redundant-coding)의 그림 \@ref(fig:tech-stocks-good-legend)을 약간 수정한 버전입니다. 여기서 시간을 나타내는 *x* 축에는 제목이 없습니다. 2013, 2014 등의 숫자가 연도를 나타낸다는 것은 맥락에서 명확합니다.

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/tech-stocks-minimal-labeling-1.png" alt="(ref:tech-stocks-minimal-labeling)" width="576" />
<p class="caption">(\#fig:tech-stocks-minimal-labeling)(ref:tech-stocks-minimal-labeling)</p>
</div>

그러나 축 또는 범례 제목을 생략할 때는 주의해야 합니다. 맥락에서 무엇이 명확하고 무엇이 명확하지 않은지 잘못 판단하기 쉽기 때문입니다. 저는 대중 매체에서 축 제목을 생략하는 것이 불편할 정도로 심한 그래프를 자주 봅니다. 예를 들어 일부 출판물은 플롯 제목과 부제목(여기서는 "4개 주요 기술 회사의 시간에 따른 주가" 및 "각 회사의 주가는 2012년 6월에 100과 같도록 정규화되었습니다")에서 축의 의미가 명확하다고 가정하고 그림 \@ref(fig:tech-stocks-minimal-labeling-bad)과 같은 그림을 만들 수 있습니다. 저는 맥락이 축을 명확하게 정의한다는 관점에 동의하지 않습니다. 캡션에는 일반적으로 "*x*/*y* 축이 보여주는 것"과 같은 단어가 포함되지 않으므로 그림을 해석하는 데 항상 어느 정도의 추측이 필요합니다. 제 경험상 축에 제대로 레이블이 지정되지 않은 그림은 95% 확신하더라도 100% 확신하지 못하는 불안감을 남기는 경향이 있습니다. 일반적인 원칙으로 독자가 무엇을 의미하는지 추측하게 만드는 것은 나쁜 관행이라고 생각합니다. 왜 독자에게 불확실성을 느끼게 만들고 싶겠습니까?

(ref:tech-stocks-minimal-labeling-bad) 4개 주요 기술 회사의 시간에 따른 주가. 각 회사의 주가는 2012년 6월에 100과 같도록 정규화되었습니다. 이 그림 \@ref(fig:tech-stocks-minimal-labeling)의 변형은 *y* 축에도 제목이 없고 *y* 축을 따라 표시된 값이 무엇을 나타내는지 맥락에서 즉시 명확하지 않기 때문에 "나쁨"으로 표시되었습니다.

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/tech-stocks-minimal-labeling-bad-1.png" alt="(ref:tech-stocks-minimal-labeling-bad)" width="576" />
<p class="caption">(\#fig:tech-stocks-minimal-labeling-bad)(ref:tech-stocks-minimal-labeling-bad)</p>
</div>

반대로 레이블링을 과도하게 할 수도 있습니다. 범례에 잘 알려진 4개 회사의 이름이 나열되어 있다면 범례 제목 "회사"는 중복되며 유용한 것을 추가하지 않습니다(그림 \@ref(fig:tech-stocks-labeling-ugly)). 마찬가지로 모든 정량적 변수에 대해 일반적으로 단위를 보고해야 하지만 *x* 축에 최근 몇 년이 표시된 경우 "시간(서기 연도)"으로 제목을 지정하는 것은 어색합니다(그림 \@ref(fig:tech-stocks-labeling-ugly)).

(ref:tech-stocks-labeling-ugly) 4개 주요 기술 회사의 시간에 따른 주가. 각 회사의 주가는 2012년 6월에 100과 같도록 정규화되었습니다. 이 그림 \@ref(fig:tech-stocks-minimal-labeling)의 변형은 과도하게 레이블이 지정되어 "못생김"으로 표시되었습니다. 특히 *x* 축을 따른 값에 단위("서기 연도")를 제공하는 것은 어색합니다.

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/tech-stocks-labeling-ugly-1.png" alt="(ref:tech-stocks-labeling-ugly)" width="576" />
<p class="caption">(\#fig:tech-stocks-labeling-ugly)(ref:tech-stocks-labeling-ugly)</p>
</div>

마지막으로 경우에 따라 축 제목뿐만 아니라 전체 축을 생략하는 것도 허용됩니다.
원형 차트에는 일반적으로 명시적인 축이 없으며(예: 그림 \@ref(fig:bundestag-pie)), 트리맵도 마찬가지입니다(그림 \@ref(fig:bridges-treemap)). 모자이크 그림이나 막대 차트는 플롯의 의미가 명확한 경우 하나 또는 두 축 없이 표시할 수 있습니다(그림 \@ref(fig:bridges-mosaic) 및 \@ref(fig:titanic-passengers-by-class-sex)). 축 눈금과 눈금 레이블이 있는 명시적인 축을 생략하면 그래프의 정성적 특징이 특정 데이터 값보다 더 중요하다는 것을 독자에게 알립니다.

## 표

표는 데이터를 시각화하는 중요한 도구입니다. 그러나 겉보기에는 단순해 보이기 때문에 항상 필요한 만큼의 주의를 받지 못할 수도 있습니다. 저는 이 책 전체에서 몇 가지 표를 보여주었습니다(예: 표 \@ref(tab:boxoffice-gross), \@ref(tab:titanic-ages), \@ref(tab:color-codes)). 잠시 시간을 내어 이러한 표를 찾아보고 어떻게 서식이 지정되었는지 살펴보고 최근에 귀하 또는 동료가 만든 표와 비교해 보십시오. 아마도 중요한 차이점이 있을 것입니다. 제 경험상 표 서식에 대한 적절한 교육이 없다면 본능적으로 올바셔널 서식 선택을 하는 사람은 거의 없습니다. 자체 출판된 문서에서는 잘못된 서식의 표가 잘못 디자인된 그림보다 훨씬 더 널리 퍼져 있습니다. 또한 표를 만드는 데 일반적으로 사용되는 대부분의 소프트웨어는 권장되지 않는 기본값을 제공합니다. 예를 들어 제 버전의 Microsoft Word는 105개의 미리 정의된 표 스타일을 제공하며 이 중 최소 70~80개는 제가 여기서 논의할 표 규칙 중 일부를 위반합니다. 따라서 Microsoft Word 표 레이아웃을 무작위로 선택하면 문제가 있는 레이아웃을 선택할 확률이 80%입니다. 그리고 기본값을 선택하면 매번 잘못된 서식의 표가 됩니다.

표 레이아웃에 대한 몇 가지 주요 규칙은 다음과 같습니다.

1. 세로선을 사용하지 마십시오.
2. 데이터 행 사이에 가로선을 사용하지 마십시오. (제목 행과 첫 번째 데이터 행 사이의 구분선으로 가로선을 사용하거나 전체 표의 프레임으로 사용하는 것은 괜찮습니다.)
3. 텍스트 열은 왼쪽 정렬해야 합니다.
4. 숫자 열은 오른쪽 정렬해야 하며 전체적으로 동일한 소수 자릿수를 사용해야 합니다.
5. 단일 문자를 포함하는 열은 가운데 정렬합니다.
6. 머리글 필드는 해당 데이터와 정렬됩니다. 즉, 텍스트 열의 머리글은 왼쪽 정렬되고 숫자 열의 머리글은 오른쪽 정렬됩니다.

그림 \@ref(fig:table-examples)는 챕터 \@ref(visualizing-amounts)의 표 \@ref(tab:boxoffice-gross)를 네 가지 다른 방식으로 재현하며, 그중 두 가지(a, b)는 이러한 규칙 중 여러 가지를 위반하고 두 가지(c, d)는 그렇지 않습니다.

(ref:table-examples) 챕터 \@ref(visualizing-amounts)의 표 \@ref(tab:boxoffice-gross) 데이터를 사용한 잘못된 서식 및 적절한 서식의 표 예. (a) 이 표는 세로선 사용, 데이터 행 사이의 가로선 사용, 가운데 정렬된 데이터 열 사용을 포함하여 적절한 표 서식의 여러 규칙을 위반합니다. (b) 이 표는 표 (a)의 모든 문제를 가지고 있으며, 또한 매우 어두운 행과 매우 밝은 행을 번갈아 사용하여 추가적인 시각적 노이즈를 만듭니다. 또한 표 머리글이 표 본문과 강력하게 시각적으로 구분되지 않습니다. (c) 이것은 최소한의 디자인으로 적절하게 서식이 지정된 표입니다. (d) 색상을 사용하여 데이터를 행으로 그룹화하는 데 효과적으로 사용할 수 있지만 색상 차이는 미묘해야 합니다. 표 머리글은 더 강한 색상을 사용하여 구분할 수 있습니다. 데이터 출처: Box Office Mojo (http://www.boxofficemojo.com/). 허가를 받아 사용함

<div class="figure" style="text-align: center">
<img src="figure_titles_captions_files/figure-html/table-examples-1.png" alt="(ref:table-examples)" width="685.714285714286" />
<p class="caption">(\#fig:table-examples)(ref:table-examples)</p>
</div>

작성자가 데이터 행 사이에 가로선을 그릴 때 일반적으로 의도는 눈이 개별 선을 따라가도록 돕는 것입니다. 그러나 표가 매우 넓고 희소하지 않는 한 이러한 시각적 지원은 일반적으로 필요하지 않습니다. 일반 텍스트 조각에서도 행 사이에 가로선을 그리지 않습니다. 가로(또는 세로) 선의 비용은 시각적 혼란입니다. 그림 \@ref(fig:table-examples)의 (a) 부분과 (c) 부분을 비교하십시오. (c) 부분이 (a) 부분보다 훨씬 읽기 쉽습니다. 표 행을 구분하는 시각적 지원이 필요하다고 생각되면 행의 밝고 어두운 음영을 번갈아 사용하는 것이 일반적으로 많은 혼란을 일으키지 않고 잘 작동합니다(그림 \@ref(fig:table-examples)d).

마지막으로 그림과 표 사이에 캡션이 표시 항목에 대해 어디에 위치하는지에 대한 중요한 차이점이 있습니다. 그림의 경우 캡션을 아래에 배치하는 것이 일반적이지만 표의 경우 위에 배치하는 것이 일반적입니다. 이러한 캡션 배치는 독자가 그림과 표를 처리하는 방식에 따라 결정됩니다. 그림의 경우 독자는 먼저 그래픽 표시를 보고 컨텍스트를 위해 캡션을 읽는 경향이 있으므로 캡션은 그림 아래에 있는 것이 합리적입니다. 반대로 표는 위에서 아래로 텍스트처럼 처리되는 경향이 있으며 캡션을 읽기 전에 표 내용을 읽는 것은 종종 유용하지 않습니다. 따라서 캡션은 표 위에 배치됩니다.
