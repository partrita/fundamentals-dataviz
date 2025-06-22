# 데이터와 컨텍스트의 균형 맞추기 {#balance-data-context}

모든 시각화의 그래픽 요소는 데이터를 나타내는 요소와 그렇지 않은 요소로 크게 나눌 수 있습니다. 전자는 산점도의 점, 히스토그램이나 막대 그래프의 막대, 히트맵의 음영 처리된 영역과 같은 요소입니다. 후자는 플롯 축, 축 눈금 및 레이블, 축 제목, 범례, 플롯 주석과 같은 요소입니다. 이러한 요소는 일반적으로 데이터에 대한 컨텍스트 및/또는 플롯에 대한 시각적 구조를 제공합니다. 플롯을 디자인할 때 데이터와 컨텍스트를 나타내는 데 사용되는 잉크의 양(챕터 \@ref(proportional-ink))을 고려하는 것이 도움이 될 수 있습니다. 일반적인 권장 사항은 비데이터 잉크의 양을 줄이는 것이며, 이 조언을 따르면 종종 덜 복잡하고 더 우아한 시각화를 얻을 수 있습니다. 동시에 컨텍스트와 시각적 구조는 중요하며 이를 제공하는 플롯 요소를 지나치게 최소화하면 읽기 어렵거나 혼란스럽거나 단순히 그다지 설득력 없는 그림이 될 수 있습니다.

## 적절한 양의 컨텍스트 제공

데이터와 비데이터 잉크를 구별하는 것이 유용할 수 있다는 아이디어는 에드워드 터프티가 그의 저서 "정량적 정보의 시각적 표시"[@TufteQuantDispl]에서 대중화했습니다. 터프티는 "데이터-잉크 비율"이라는 개념을 도입했는데, 그는 이를 "데이터 정보의 비중복 표시에 사용된 그래픽 잉크의 비율"로 정의합니다. 그런 다음 그는 다음과 같이 씁니다(강조는 필자).

> 합리적인 범위 내에서 데이터-잉크 비율을 최대화하십시오.

"합리적인 범위 내에서"라는 문구를 강조한 이유는 그것이 중요하고 자주 잊혀지기 때문입니다. 사실, 터프티 자신도 책의 나머지 부분에서 이 점을 잊고 지나치게 미니멀한 디자인을 옹호하는데, 제 생각에는 우아하지도 않고 해독하기도 쉽지 않습니다. "데이터-잉크 비율을 최대화하라"는 문구를 "혼란을 줄이고 깔끔하고 우아한 디자인을 추구하라"는 의미로 해석한다면 합리적인 조언이라고 생각합니다. 그러나 "비데이터 잉크를 제거하기 위해 할 수 있는 모든 것을 하라"는 의미로 해석한다면 잘못된 디자인 선택으로 이어질 것입니다. 어느 쪽으로든 너무 멀리 가면 보기 흉한 그림이 될 것입니다. 그러나 극단적인 경우를 제외하고는 모두 수용 가능하고 다양한 상황에 적합할 수 있는 광범위한 디자인이 있습니다.

극단적인 경우를 탐색하기 위해 비데이터 잉크가 너무 많은 그림(그림 \@ref(fig:Aus-athletes-grid-bad))을 살펴보겠습니다. 플롯 패널(데이터 포인트가 포함된 프레임이 있는 중앙 영역)의 색상 점은 데이터 잉크입니다. 그 외의 모든 것은 비데이터 잉크입니다. 비데이터 잉크에는 전체 그림 주위의 프레임, 플롯 패널 주위의 프레임, 범례 주위의 프레임이 포함됩니다. 이러한 프레임은 모두 필요하지 않습니다. 또한 실제 데이터 포인트에서 주의를 분산시키는 눈에 띄고 빽빽한 배경 격자도 볼 수 있습니다. 프레임과 보조 격자선을 제거하고 주 격자선을 밝은 회색으로 그리면 그림 \@ref(fig:Aus-athletes-grid-good)이 됩니다. 이 버전의 그림에서는 실제 데이터 포인트가 훨씬 더 명확하게 두드러지며 그림의 가장 중요한 구성 요소로 인식됩니다.

(ref:Aus-athletes-grid-bad) 호주 남자 프로 운동선수의 키 대비 체지방률. 각 점은 한 명의 운동선수를 나타냅니다. 이 그림은 비데이터에 너무 많은 잉크를 사용합니다. 전체 그림, 플롯 패널, 범례 주위에 불필요한 프레임이 있습니다. 좌표 격자가 매우 두드러지며 그 존재는 데이터 포인트에서 주의를 분산시킵니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/Aus-athletes-grid-bad-1.png" alt="(ref:Aus-athletes-grid-bad)" width="576" />
<p class="caption">(\#fig:Aus-athletes-grid-bad)(ref:Aus-athletes-grid-bad)</p>
</div>

(ref:Aus-athletes-grid-good) 호주 남자 프로 운동선수의 키 대비 체지방률. 이 그림은 그림 \@ref(fig:Aus-athletes-grid-bad)의 정리된 버전입니다. 불필요한 프레임이 제거되었고, 보조 격자선이 제거되었으며, 주 격자선은 데이터 포인트에 비해 뒤로 물러나도록 밝은 회색으로 그려졌습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/Aus-athletes-grid-good-1.png" alt="(ref:Aus-athletes-grid-good)" width="576" />
<p class="caption">(\#fig:Aus-athletes-grid-good)(ref:Aus-athletes-grid-good)</p>
</div>

다른 극단적인 경우 그림 \@ref(fig:Aus-athletes-grid-good)의 미니멀리스트 버전인 그림 \@ref(fig:Aus-athletes-min-bad)과 같은 그림이 될 수 있습니다. 이 그림에서는 축 눈금 레이블과 제목이 너무 희미해서 보기 어렵습니다. 그림을 그냥 훑어보면 어떤 데이터가 실제로 표시되는지 즉시 인식할 수 없습니다. 공간에 떠 있는 점만 보입니다. 또한 범례 주석이 너무 희미해서 범례의 점을 데이터 점으로 착각할 수 있습니다. 플롯 영역과 범례 영역 사이에 명확한 시각적 구분이 없기 때문에 이 효과는 증폭됩니다. 그림 \@ref(fig:Aus-athletes-grid-good)의 배경 격자가 공간에서 점을 고정하고 범례 영역에서 데이터 영역을 분리하는 방법을 확인하십시오. 이러한 효과는 모두 그림 \@ref(fig:Aus-athletes-min-bad)에서 사라졌습니다.

(ref:Aus-athletes-min-bad) 호주 남자 프로 운동선수의 키 대비 체지방률. 이 예에서는 비데이터 잉크 제거 개념이 너무 멀리 나갔습니다. 축 눈금 레이블과 제목이 너무 희미해서 거의 보이지 않습니다. 데이터 포인트가 공간에 떠 있는 것처럼 보입니다. 범례의 포인트가 데이터 포인트와 충분히 분리되지 않아 부주의한 관찰자는 이를 데이터의 일부라고 생각할 수 있습니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/Aus-athletes-min-bad-1.png" alt="(ref:Aus-athletes-min-bad)" width="576" />
<p class="caption">(\#fig:Aus-athletes-min-bad)(ref:Aus-athletes-min-bad)</p>
</div>

그림 \@ref(fig:Aus-athletes-grid-good)에서는 열린 배경 격자를 사용하고 플롯 패널 주위에 축선이나 프레임이 없습니다. 저는 이 디자인을 좋아하는데, 가능한 데이터 값의 범위가 축 한계를 넘어 확장된다는 것을 독자에게 전달하기 때문입니다. 예를 들어 그림 \@ref(fig:Aus-athletes-grid-good)에는 키가 210cm를 넘는 운동선수가 표시되지 않지만 그러한 운동선수가 존재할 수도 있습니다. 그러나 일부 저자는 플롯 패널 주위에 프레임을 그려 플롯 패널의 범위를 명확히 하는 것을 선호합니다(그림 \@ref(fig:Aus-athletes-grid-good-frame)). 두 가지 옵션 모두 합리적이며 어느 것이 더 바람직한지는 주로 개인적인 의견의 문제입니다. 프레임이 있는 버전의 한 가지 장점은 범례를 플롯 패널과 명확하게 구분한다는 것입니다.

(ref:Aus-athletes-grid-good-frame) 호주 남자 프로 운동선수의 키 대비 체지방률. 이 그림은 그림 \@ref(fig:Aus-athletes-grid-good)의 플롯 패널 주위에 프레임을 추가하며, 이 프레임은 범례를 데이터와 분리하는 데 도움이 됩니다. 데이터 출처: @Telford-Cunningham-1991

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/Aus-athletes-grid-good-frame-1.png" alt="(ref:Aus-athletes-grid-good-frame)" width="576" />
<p class="caption">(\#fig:Aus-athletes-grid-good-frame)(ref:Aus-athletes-grid-good-frame)</p>
</div>


비데이터 잉크가 너무 적은 그림은 그림 요소가 명확한 연결이나 참조 없이 공간에 떠 있는 것처럼 보이는 효과로 인해 종종 어려움을 겪습니다. 이 문제는 특히 작은 다중 그림 플롯에서 심각한 경향이 있습니다. 그림 \@ref(fig:titanic-survival-by-gender-class-bad)는 6개의 서로 다른 막대 그래프를 비교하는 작은 다중 그림 플롯을 보여주지만 유용한 데이터 시각화라기보다는 현대 미술 작품처럼 보입니다. 막대는 명확한 기준선에 고정되어 있지 않으며 개별 플롯 패싯이 명확하게 구분되지 않습니다. 각 패싯에 밝은 회색 배경과 얇은 수평 격자선을 추가하여 이러한 문제를 해결할 수 있습니다(그림 \@ref(fig:titanic-survival-by-gender-class)).

(ref:titanic-survival-by-gender-class-bad) 타이타닉호 승객의 생존 여부를 성별과 계급별로 분류했습니다. 이 작은 다중 그림 플롯은 너무 미니멀합니다. 개별 패싯에 프레임이 없어 그림의 어느 부분이 어느 패싯에 속하는지 보기 어렵습니다. 또한 개별 막대는 명확한 기준선에 고정되어 있지 않고 떠 있는 것처럼 보입니다.

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/titanic-survival-by-gender-class-bad-1.png" alt="(ref:titanic-survival-by-gender-class-bad)" width="480" />
<p class="caption">(\#fig:titanic-survival-by-gender-class-bad)(ref:titanic-survival-by-gender-class-bad)</p>
</div>


(ref:titanic-survival-by-gender-class) 타이타닉호 승객의 생존 여부를 성별과 계급별로 분류했습니다. 이것은 그림 \@ref(fig:titanic-survival-by-gender-class-bad)의 개선된 버전입니다. 각 패싯의 회색 배경은 이 플롯을 구성하는 6개 그룹(1등석, 2등석 또는 3등석에서 생존 또는 사망)을 명확하게 구분합니다. 배경의 얇은 수평선은 막대 높이에 대한 참조를 제공하고 패싯 간 막대 높이 비교를 용이하게 합니다.

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/titanic-survival-by-gender-class-1.png" alt="(ref:titanic-survival-by-gender-class)" width="480" />
<p class="caption">(\#fig:titanic-survival-by-gender-class)(ref:titanic-survival-by-gender-class)</p>
</div>



## 배경 격자

플롯 배경의 격자선은 독자가 특정 데이터 값을 식별하고 플롯의 한 부분에 있는 값을 다른 부분의 값과 비교하는 데 도움이 될 수 있습니다. 동시에 격자선은 특히 눈에 띄거나 빽빽하게 배치된 경우 시각적 노이즈를 추가할 수 있습니다. 격자를 사용할지 여부, 사용한다면 서식을 지정하는 방법과 간격을 얼마나 빽빽하게 할지에 대해 합리적인 사람들이 의견을 달리할 수 있습니다. 이 책 전체에서 저는 다양한 격자 스타일을 사용하여 반드시 최상의 선택이 하나만 있는 것은 아니라는 점을 강조합니다.

R 소프트웨어 ggplot2는 회색 배경에 흰색 선으로 된 상당히 눈에 띄는 배경 격자 스타일을 대중화했습니다. 그림 \@ref(fig:price-plot-ggplot-default)는 이 스타일의 예를 보여줍니다. 이 그림은 2012년부터 2017년까지 5년 동안 4개 주요 기술 회사의 주가 변화를 보여줍니다. 제가 최대한 존경하는 ggplot2 작성자 해들리 위컴에게 사과드리지만, 저는 회색 배경에 흰색 격자가 특별히 매력적이라고 생각하지 않습니다. 제 눈에는 회색 배경이 실제 데이터에서 주의를 분산시킬 수 있으며 주 격자선과 보조 격자선이 있는 격자는 너무 빽빽할 수 있습니다. 또한 범례의 회색 사각형도 혼란스럽습니다.

(ref:price-plot-ggplot-default) 4개 주요 기술 회사의 시간에 따른 주가. 각 회사의 주가는 2012년 6월에 100과 같도록 정규화되었습니다. 이 그림은 ggplot2 기본 모양을 모방하여 회색 배경에 흰색 주 격자선과 보조 격자선을 사용합니다. 이 특정 예에서 격자선이 데이터 선을 압도하여 균형이 잘 맞지 않고 데이터에 충분한 강조를 두지 않는 그림이 되었다고 생각합니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-plot-ggplot-default-1.png" alt="(ref:price-plot-ggplot-default)" width="576" />
<p class="caption">(\#fig:price-plot-ggplot-default)(ref:price-plot-ggplot-default)</p>
</div>

회색 배경을 선호하는 주장은 (i) 플롯이 단일 시각적 개체로 인식되도록 돕고 (ii) 플롯이 주변의 어두운 텍스트에서 흰색 상자로 나타나는 것을 방지한다는 것입니다[@Wickham2016]. 첫 번째 요점에는 전적으로 동의하며, 그림 \@ref(fig:titanic-survival-by-gender-class)에서 회색 배경을 사용한 이유입니다. 두 번째 요점에 대해서는 텍스트의 인지된 어두움은 글꼴 크기, 글꼴 모양, 줄 간격에 따라 달라지며 그림의 인지된 어두움은 모든 데이터 잉크를 포함하여 사용된 잉크의 절대량과 색상에 따라 달라진다는 점에 주의를 환기시키고 싶습니다. 빽빽한 10포인트 Times New Roman으로 조판된 과학 논문은 1.5줄 간격으로 14포인트 Palatino로 조판된 커피 테이블 책보다 훨씬 어둡게 보일 것입니다. 마찬가지로 노란색으로 된 5개 점의 산점도는 검은색으로 된 10,000개 점의 산점도보다 훨씬 밝게 보일 것입니다. 회색 그림 배경을 사용하려면 그림 전경의 색상 강도와 그림 주변 텍스트의 예상 레이아웃 및 타이포그래피를 고려하여 배경 회색 선택을 그에 따라 조정하십시오. 그렇지 않으면 그림이 주변의 밝은 텍스트 사이에서 어두운 상자로 두드러질 수 있습니다. 또한 데이터를 플로팅하는 데 사용하는 색상이 회색 배경과 잘 어울려야 한다는 점을 명심하십시오. 우리는 다른 배경에 대해 색상을 다르게 인식하는 경향이 있으며 회색 배경은 흰색 배경보다 더 어둡고 채도가 높은 전경색을 필요로 합니다.

반대 방향으로 완전히 가서 배경과 격자선을 모두 제거할 수 있습니다(그림 \@ref(fig:price-plot-no-grid)). 이 경우 플롯을 프레임으로 만들고 단일 시각적 단위로 유지하려면 보이는 축선이 필요합니다. 이 특정 그림의 경우 이 선택이 더 나쁜 옵션이라고 생각하며 "나쁨"으로 표시했습니다. 배경 격자가 전혀 없는 경우 곡선이 공간에 떠 있는 것처럼 보이며 오른쪽의 최종 값을 왼쪽의 축 눈금과 참조하기 어렵습니다.

(ref:price-plot-no-grid) 4개 주요 기술 회사의 시간에 따른 지수화된 주가. 그림 \@ref(fig:price-plot-ggplot-default)의 이 변형에서는 데이터 선이 충분히 고정되지 않았습니다. 이로 인해 해당 기간 말에 지수 값 100에서 어느 정도 벗어났는지 확인하기 어렵습니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-plot-no-grid-1.png" alt="(ref:price-plot-no-grid)" width="576" />
<p class="caption">(\#fig:price-plot-no-grid)(ref:price-plot-no-grid)</p>
</div>

최소한 수평 참조선 하나를 추가해야 합니다. 그림 \@ref(fig:price-plot-no-grid)의 주가가 2012년 6월에 100으로 지수화되었으므로 *y* = 100에 얇은 수평선을 표시하면 많은 도움이 됩니다(그림 \@ref(fig:price-plot-refline)). 또는 수평선의 최소 "격자"를 사용할 수 있습니다. 주로 *y* 값의 변화에 관심이 있는 플롯의 경우 수직 격자선은 필요하지 않습니다. 또한 주 축 눈금에만 위치한 격자선으로도 충분한 경우가 많습니다. 그리고 수평선이 플롯의 범위를 명확하게 표시하므로 축선은 생략하거나 매우 얇게 만들 수 있습니다(그림 \@ref(fig:price-plot-hgrid)).

(ref:price-plot-refline) 4개 주요 기술 회사의 시간에 따른 지수화된 주가. 그림 \@ref(fig:price-plot-no-grid)에 지수 값 100에 얇은 수평선을 추가하면 플롯이涵盖하는 전체 기간 동안 중요한 참조를 제공하는 데 도움이 됩니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-plot-refline-1.png" alt="(ref:price-plot-refline)" width="576" />
<p class="caption">(\#fig:price-plot-refline)(ref:price-plot-refline)</p>
</div>


(ref:price-plot-hgrid) 4개 주요 기술 회사의 시간에 따른 지수화된 주가. 모든 주요 *y* 축 눈금에 얇은 수평선을 추가하면 그림 \@ref(fig:price-plot-refline)의 단일 수평선보다 더 나은 참조점 집합을 제공합니다. 이 디자인은 또한 균일한 간격의 수평선이 플롯 패널에 대한 시각적 프레임을 생성하므로 눈에 띄는 *x* 및 *y* 축선이 필요하지 않습니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-plot-hgrid-1.png" alt="(ref:price-plot-hgrid)" width="576" />
<p class="caption">(\#fig:price-plot-hgrid)(ref:price-plot-hgrid)</p>
</div>

이러한 최소 격자의 경우 일반적으로 관심 있는 숫자가 변하는 방향에 직각으로 선을 그립니다. 따라서 주가를 시간에 따라 플로팅하는 대신 5년 증가분을 수평 막대로 플로팅하면 대신 수직선을 사용해야 합니다(그림 \@ref(fig:price-increase)).

(ref:price-increase) 2012년 6월부터 2017년 6월까지 4개 주요 기술 회사의 주가 상승률. 막대가 수평으로 이어지므로 여기서는 수직 격자선이 적절합니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-increase-1.png" alt="(ref:price-increase)" width="576" />
<p class="caption">(\#fig:price-increase)(ref:price-increase)</p>
</div>


<div class="rmdtip">
<p>주요 관심 변수에 수직인 격자선이 가장 유용한 경향이 있습니다.</p>
</div>

그림 \@ref(fig:price-increase)와 같은 막대 그래프의 경우 @TufteQuantDispl은 아래에 어두운 격자선 대신 막대 위에 흰색 격자선을 그리도록 권장합니다(그림 \@ref(fig:price-increase-tufte)). 이러한 흰색 격자선은 막대를 동일한 길이의 개별 세그먼트로 분리하는 효과가 있습니다. 저는 이 스타일에 대해 두 가지 생각을 가지고 있습니다. 한편으로 인간 인식에 대한 연구에 따르면 막대를 개별 세그먼트로 나누면 독자가 막대 길이를 인식하는 데 도움이 됩니다[@Haroz_et_al_2015]. 다른 한편으로 제 눈에는 막대가 무너져 내리는 것처럼 보이고 명확한 시각적 단위를 형성하지 못합니다. 실제로 저는 그림 \@ref(fig:titanic-passengers-by-class-sex)에서 남성과 여성 승객을 나타내는 누적 막대를 시각적으로 분리하기 위해 이 스타일을 의도적으로 사용했습니다. 어떤 효과가 우세한지는 막대 너비, 막대 사이의 거리, 흰색 격자선의 두께와 같은 특정 선택에 따라 달라질 수 있습니다. 따라서 이 스타일을 사용하려는 경우 원하는 시각적 효과를 내는 그림을 얻을 때까지 이러한 매개변수를 변경해 보시기 바랍니다.

(ref:price-increase-tufte) 2012년 6월부터 2017년 6월까지 4개 주요 기술 회사의 주가 상승률. 막대 위의 흰색 격자선은 독자가 막대의 상대적인 길이를 인식하는 데 도움이 될 수 있습니다. 동시에 막대가 무너져 내리는 듯한 인상을 줄 수도 있습니다. 데이터 출처: Yahoo Finance

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/price-increase-tufte-1.png" alt="(ref:price-increase-tufte)" width="576" />
<p class="caption">(\#fig:price-increase-tufte)(ref:price-increase-tufte)</p>
</div>

그림 \@ref(fig:price-increase-tufte)의 또 다른 단점을 지적하고 싶습니다. 여러 막대의 마지막 세그먼트에 레이블이 맞지 않아 백분율 값을 막대 바깥쪽으로 옮겨야 했습니다. 그러나 이 선택은 막대를 부적절하게 시각적으로 길게 만들며 가능한 한 피해야 합니다.

두 축 방향을 따른 배경 격자는 주요 관심 축이 없는 산점도에 가장 적합합니다. 이 장의 시작 부분에 있는 그림 \@ref(fig:Aus-athletes-grid-good)이 예를 제공합니다. 그림에 전체 배경 격자가 있는 경우 일반적으로 축선은 필요하지 않습니다(그림 \@ref(fig:Aus-athletes-grid-good)).

## 쌍을 이룬 데이터

쌍을 이룬 데이터의 산점도와 같이 관련 비교가 *x* = *y* 선인 그림의 경우 격자 대신 대각선을 그리는 것을 선호합니다. 예를 들어 그림 \@ref(fig:gene-expression)을 생각해 보십시오. 이 그림은 돌연변이 바이러스의 유전자 발현 수준을 돌연변이되지 않은(야생형) 변종과 비교합니다. 대각선을 그리면 돌연변이에서 야생형에 비해 어떤 유전자가 더 높거나 낮게 발현되는지 즉시 알 수 있습니다. 그림에 배경 격자가 있고 대각선이 없는 경우 동일한 관찰을 하기가 훨씬 더 어렵습니다(그림 \@ref(fig:gene-expression-bad)). 따라서 그림 \@ref(fig:gene-expression-bad)는 보기 좋지만 나쁨으로 표시합니다. 특히 돌연변이에서 야생형에 비해 발현 수준이 분명히 감소한 유전자 *10A*(그림 \@ref(fig:gene-expression))는 그림 \@ref(fig:gene-expression-bad)에서 시각적으로 두드러지지 않습니다.

(ref:gene-expression) 야생형에 대한 돌연변이 박테리오파지 T7의 유전자 발현 수준. 유전자 발현 수준은 mRNA 풍부도(TPM)로 측정됩니다. 각 점은 하나의 유전자에 해당합니다. 돌연변이 박테리오파지 T7에서는 유전자 *9* 앞의 프로모터가 삭제되었으며, 이로 인해 유전자 *9*와 인접 유전자 *8* 및 *10A*(강조 표시됨)의 mRNA 풍부도가 감소했습니다. 데이터 출처: @Paffetal2018

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/gene-expression-1.png" alt="(ref:gene-expression)" width="432" />
<p class="caption">(\#fig:gene-expression)(ref:gene-expression)</p>
</div>


(ref:gene-expression-bad) 야생형에 대한 돌연변이 박테리오파지 T7의 유전자 발현 수준. 이 데이터 세트를 대각선 대신 배경 격자에 대해 플로팅하면 돌연변이에서 야생형 박테리오파지보다 어떤 유전자가 더 높거나 낮은지 모호하게 만듭니다. 데이터 출처: @Paffetal2018

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/gene-expression-bad-1.png" alt="(ref:gene-expression-bad)" width="432" />
<p class="caption">(\#fig:gene-expression-bad)(ref:gene-expression-bad)</p>
</div>


물론 그림 \@ref(fig:gene-expression)의 대각선을 가져와 그림 \@ref(fig:gene-expression-bad)의 배경 격자 위에 추가하여 관련 시각적 참조가 있는지 확인할 수 있습니다. 그러나 결과 그림은 상당히 복잡해집니다(그림 \@ref(fig:gene-expression-ugly)). 배경 격자에 대해 두드러지도록 대각선을 더 어둡게 만들어야 했지만 이제 데이터 포인트가 거의 배경으로 사라지는 것처럼 보입니다. 데이터 포인트를 더 크거나 어둡게 만들어 이 문제를 개선할 수 있지만 모든 것을 고려할 때 그림 \@ref(fig:gene-expression)을 선택하는 것이 좋습니다.

(ref:gene-expression-ugly) 야생형에 대한 돌연변이 박테리오파지 T7의 유전자 발현 수준. 이 그림은 그림 \@ref(fig:gene-expression-bad)의 배경 격자와 그림 \@ref(fig:gene-expression)의 대각선을 결합합니다. 제 생각에는 이 그림이 그림 \@ref(fig:gene-expression)에 비해 시각적으로 너무 복잡하며 그림 \@ref(fig:gene-expression)을 선호합니다. 데이터 출처: @Paffetal2018

<div class="figure" style="text-align: center">
<img src="balance_data_context_files/figure-html/gene-expression-ugly-1.png" alt="(ref:gene-expression-ugly)" width="432" />
<p class="caption">(\#fig:gene-expression-ugly)(ref:gene-expression-ugly)</p>
</div>

## 요약

그림에 비데이터 잉크를 과도하게 사용하거나 비데이터 잉크를 과도하게 지우면 모두 잘못된 그림 디자인으로 이어질 수 있습니다. 데이터 포인트가 그림의 주요 강조점이 되면서 표시되는 데이터, 포인트가 서로 상대적으로 어디에 있는지, 무엇을 의미하는지에 대한 충분한 컨텍스트가 제공되는 건강한 중간 지점을 찾아야 합니다.

배경 및 배경 격자와 관련하여 모든 상황에서 선호되는 단일 선택은 없습니다. 격자선에 대해 신중하게 결정하는 것이 좋습니다. 만들고 있는 플롯에 가장 유익한 특정 격자 또는 안내선을 신중하게 고려한 다음 해당 선만 표시하십시오. 흰색은 종이의 기본 중립 색상이며 거의 모든 전경색을 지원하므로 흰색 배경에 최소한의 밝은 격자를 선호합니다. 그러나 음영 처리된 배경은 플롯이 단일 시각적 개체로 보이도록 하는 데 도움이 될 수 있으며 이는 특히 작은 다중 그림 플롯에서 유용할 수 있습니다. 마지막으로 이러한 모든 선택이 시각적 브랜딩 및 정체성과 어떻게 관련되는지 고려해야 합니다. 많은 잡지와 웹사이트는 즉시 알아볼 수 있는 자체 스타일을 갖는 것을 선호하며 음영 처리된 배경과 특정 배경 격자 선택은 고유한 시각적 정체성을 만드는 데 도움이 될 수 있습니다.
