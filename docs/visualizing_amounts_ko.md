# 양 시각화하기 {#visualizing-amounts}


많은 시나리오에서 우리는 어떤 숫자 집합의 크기에 관심이 있습니다. 예를 들어, 여러 자동차 브랜드의 총 판매량, 여러 도시에 사는 총 인구 수 또는 여러 스포츠를 하는 올림픽 선수의 나이를 시각화하고 싶을 수 있습니다. 이러한 모든 경우에 범주 집합(예: 자동차 브랜드, 도시 또는 스포츠)과 각 범주에 대한 정량적 값이 있습니다. 저는 이러한 경우를 양 시각화라고 부르는데, 이러한 시각화의 주요 강조점은 정량적 값의 크기이기 때문입니다. 이 시나리오의 표준 시각화는 막대 그래프이며, 단순 막대뿐만 아니라 그룹화된 막대 및 누적 막대를 포함한 여러 변형이 있습니다. 막대 그래프의 대안으로는 점 그림과 히트맵이 있습니다.

## 막대 그래프

막대 그래프의 개념을 설명하기 위해 특정 주말에 가장 인기 있는 영화의 총 티켓 판매량을 생각해 보겠습니다. 표 \@ref(tab:boxoffice-gross)는 2017년 크리스마스 주말의 상위 5개 주말 총 티켓 판매량을 보여줍니다. 영화 "스타워즈: 라스트 제다이"는 해당 주말에 단연 가장 인기 있는 영화였으며 4위와 5위 영화인 "위대한 쇼맨"과 "페르디난드"보다 거의 10배나 많은 수익을 올렸습니다.


표: (\#tab:boxoffice-gross)2017년 12월 22-24일 주말 최고 흥행 영화. 데이터 출처: 박스오피스 모조 (http://www.boxofficemojo.com/). 허가를 받아 사용함

      순위   제목                             주말 총수입
---  ------  -------------------------------  --------------  ---  ---
       1     스타워즈: 라스트 제다이            $71,565,498
       2     쥬만지: 새로운 세계      $36,169,328
       3     피치 퍼펙트 3                     $19,928,525
       4     위대한 쇼맨                 $8,805,843
       5     페르디난드                            $7,316,746

이러한 종류의 데이터는 일반적으로 세로 막대로 시각화됩니다. 각 영화에 대해 0에서 시작하여 해당 영화의 주말 총수입 달러 값까지 확장되는 막대를 그립니다(그림 \@ref(fig:boxoffice-vertical)). 이러한 시각화를 *막대 그래프* 또는 *막대 차트*라고 합니다.

(ref:boxoffice-vertical) 2017년 12월 22-24일 주말 최고 흥행 영화, 막대 그래프로 표시. 데이터 출처: 박스오피스 모조 (http://www.boxofficemojo.com/). 허가를 받아 사용함

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/boxoffice-vertical-1.png" alt="(ref:boxoffice-vertical)" width="685.714285714286" />
<p class="caption">(\#fig:boxoffice-vertical)(ref:boxoffice-vertical)</p>
</div>

세로 막대에서 흔히 발생하는 문제 중 하나는 각 막대를 식별하는 레이블이 많은 가로 공간을 차지한다는 것입니다. 실제로 그림 \@ref(fig:boxoffice-vertical)을 상당히 넓게 만들고 막대 간격을 넓혀 영화 제목을 아래에 배치해야 했습니다. 가로 공간을 절약하기 위해 막대를 더 가깝게 배치하고 레이블을 회전할 수 있습니다(그림 \@ref(fig:boxoffice-rot-axis-tick-labels)). 그러나 저는 회전된 레이블을 그다지 지지하지 않습니다. 결과 플롯이 어색하고 읽기 어렵다고 생각합니다. 그리고 제 경험상 레이블이 너무 길어서 가로로 배치할 수 없는 경우에는 회전해도 보기 좋지 않습니다.

(ref:boxoffice-rot-axis-tick-labels) 2017년 12월 22-24일 주말 최고 흥행 영화, 회전된 축 눈금 레이블이 있는 막대 그래프로 표시. 회전된 축 눈금 레이블은 읽기 어렵고 플롯 아래에 어색한 공간 사용을 필요로 하는 경향이 있습니다. 이러한 이유로 저는 일반적으로 회전된 눈금 레이블이 있는 플롯을 보기 흉하다고 생각합니다. 데이터 출처: 박스오피스 모조 (http://www.boxofficemojo.com/). 허가를 받아 사용함

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/boxoffice-rot-axis-tick-labels-1.png" alt="(ref:boxoffice-rot-axis-tick-labels)" width="576" />
<p class="caption">(\#fig:boxoffice-rot-axis-tick-labels)(ref:boxoffice-rot-axis-tick-labels)</p>
</div>

긴 레이블에 대한 더 나은 해결책은 일반적으로 *x* 축과 *y* 축을 바꾸어 막대가 가로로 이어지도록 하는 것입니다(그림 \@ref(fig:boxoffice-horizontal)). 축을 바꾼 후에는 모든 텍스트를 포함한 모든 시각적 요소가 가로로 정렬된 간결한 그림을 얻을 수 있습니다. 결과적으로 그림은 그림 \@ref(fig:boxoffice-rot-axis-tick-labels) 또는 그림 \@ref(fig:boxoffice-vertical)보다 훨씬 읽기 쉽습니다.

(ref:boxoffice-horizontal) 2017년 12월 22-24일 주말 최고 흥행 영화, 가로 막대 그래프로 표시. 데이터 출처: 박스오피스 모조 (http://www.boxofficemojo.com/). 허가를 받아 사용함

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/boxoffice-horizontal-1.png" alt="(ref:boxoffice-horizontal)" width="576" />
<p class="caption">(\#fig:boxoffice-horizontal)(ref:boxoffice-horizontal)</p>
</div>

막대를 세로로 배치하든 가로로 배치하든 관계없이 막대가 배열되는 순서에 주의해야 합니다. 막대가 임의로 또는 그림의 맥락에서 의미 없는 기준으로 배열된 막대 그래프를 자주 봅니다. 일부 플로팅 프로그램은 기본적으로 레이블의 알파벳 순서로 막대를 배열하며 다른 유사하게 임의적인 배열도 가능합니다(그림 \@ref(fig:boxoffice-horizontal-bad-order)). 일반적으로 결과 그림은 막대가 크기 순으로 배열된 그림보다 더 혼란스럽고 덜 직관적입니다.


(ref:boxoffice-horizontal-bad-order) 2017년 12월 22-24일 주말 최고 흥행 영화, 가로 막대 그래프로 표시. 여기서 막대는 영화 제목의 길이 내림차순으로 배치되었습니다. 이러한 막대 배열은 임의적이며 의미 있는 목적을 수행하지 않으며 결과 그림을 그림 \@ref(fig:boxoffice-horizontal)보다 훨씬 덜 직관적으로 만듭니다. 데이터 출처: 박스오피스 모조 (http://www.boxofficemojo.com/). 허가를 받아 사용함

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/boxoffice-horizontal-bad-order-1.png" alt="(ref:boxoffice-horizontal-bad-order)" width="576" />
<p class="caption">(\#fig:boxoffice-horizontal-bad-order)(ref:boxoffice-horizontal-bad-order)</p>
</div>

그러나 막대가 나타내는 범주에 자연스러운 순서가 없는 경우에만 막대를 다시 정렬해야 합니다. 자연스러운 순서가 있는 경우(즉, 범주형 변수가 순서형 요인인 경우) 시각화에서 해당 순서를 유지해야 합니다. 예를 들어 그림 \@ref(fig:income-by-age)는 연령 그룹별 미국 중간 연간 소득을 보여줍니다. 이 경우 막대는 연령 증가 순으로 배열되어야 합니다. 연령 그룹을 뒤섞으면서 막대 높이별로 정렬하는 것은 의미가 없습니다(그림 \@ref(fig:income-by-age-sorted)).


(ref:income-by-age) 2016년 미국 가구 연령대별 중간 연간 소득. 45~54세 연령대가 중간 소득이 가장 높습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/income-by-age-1.png" alt="(ref:income-by-age)" width="576" />
<p class="caption">(\#fig:income-by-age)(ref:income-by-age)</p>
</div>

(ref:income-by-age-sorted) 2016년 미국 가구 연령대별 중간 연간 소득, 소득별 정렬. 이러한 막대 순서는 시각적으로 보기 좋지만 연령대 순서가 이제 혼란스럽습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/income-by-age-sorted-1.png" alt="(ref:income-by-age-sorted)" width="576" />
<p class="caption">(\#fig:income-by-age-sorted)(ref:income-by-age-sorted)</p>
</div>

<div class="rmdtip">
<p>막대 순서에 주의하십시오. 막대가 순서 없는 범주를 나타내는 경우 데이터 값의 오름차순 또는 내림차순으로 정렬하십시오.</p>
</div>

## 그룹화된 막대 및 누적 막대

이전 하위 섹션의 모든 예는 하나의 범주형 변수에 대해 정량적 양이 어떻게 변하는지 보여주었습니다. 그러나 종종 동시에 두 개의 범주형 변수에 관심이 있습니다. 예를 들어 미국 인구 조사국은 연령과 인종별로 분류된 중간 소득 수준을 제공합니다. 이 데이터 세트를 *그룹화된 막대 그래프*로 시각화할 수 있습니다(그림 \@ref(fig:income-by-age-race-dodged)). 그룹화된 막대 그래프에서는 하나의 범주형 변수에 의해 결정되는 *x* 축을 따른 각 위치에 막대 그룹을 그리고 다른 범주형 변수에 따라 각 그룹 내에 막대를 그립니다.

(ref:income-by-age-race-dodged) 2016년 미국 가구 연령대 및 인종별 중간 연간 소득. 연령대는 *x* 축을 따라 표시되며 각 연령대에 대해 아시아인, 백인, 히스패닉, 흑인의 중간 소득에 해당하는 4개의 막대가 각각 표시됩니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/income-by-age-race-dodged-1.png" alt="(ref:income-by-age-race-dodged)" width="754.285714285714" />
<p class="caption">(\#fig:income-by-age-race-dodged)(ref:income-by-age-race-dodged)</p>
</div>

그룹화된 막대 그래프는 한 번에 많은 정보를 보여주며 혼란스러울 수 있습니다. 실제로 그림 \@ref(fig:income-by-age-race-dodged)에 나쁨 또는 못생김으로 표시하지 않았음에도 불구하고 읽기가 어렵다고 생각합니다. 특히 특정 인종 그룹에 대해 연령 그룹 간 중간 소득을 비교하기가 어렵습니다. 따라서 이 그림은 특정 연령 그룹에 대해 인종 그룹 간 소득 수준 차이에 주로 관심이 있는 경우에만 적합합니다. 인종 그룹 간 소득 수준의 전반적인 패턴에 더 관심이 있다면 인종을 *x* 축을 따라 표시하고 각 인종 그룹 내에 연령을 개별 막대로 표시하는 것이 더 바람직할 수 있습니다(그림 \@ref(fig:income-by-race-age-dodged)).

(ref:income-by-race-age-dodged) 2016년 미국 가구 연령대 및 인종별 중간 연간 소득. 그림 \@ref(fig:income-by-age-race-dodged)와 달리 이제 인종이 *x* 축을 따라 표시되며 각 인종에 대해 7개 연령대에 따라 7개의 막대가 표시됩니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/income-by-race-age-dodged-1.png" alt="(ref:income-by-race-age-dodged) " width="754.285714285714" />
<p class="caption">(\#fig:income-by-race-age-dodged)(ref:income-by-race-age-dodged) </p>
</div>

그림 \@ref(fig:income-by-age-race-dodged)와 \@ref(fig:income-by-race-age-dodged) 모두 *x* 축을 따른 위치로 하나의 범주형 변수를 인코딩하고 막대 색상으로 다른 변수를 인코딩합니다. 그리고 두 경우 모두 위치 인코딩은 읽기 쉽지만 막대 색상 인코딩은 막대 색상을 범례의 색상과 정신적으로 일치시켜야 하므로 더 많은 정신적 노력이 필요합니다. 하나의 그룹화된 막대 그래프 대신 네 개의 개별 일반 막대 그래프를 표시하여 이러한 추가적인 정신적 노력을 피할 수 있습니다(그림 \@ref(fig:income-by-age-race-faceted)). 이러한 여러 옵션 중 어떤 것을 선택할지는 궁극적으로 취향의 문제입니다. 저는 막대 색상으로 범주형 변수를 인코딩할 필요가 없다는 장점이 있으므로 그림 \@ref(fig:income-by-age-race-faceted)를 선택할 것입니다.

(ref:income-by-age-race-faceted) 2016년 미국 가구 연령대 및 인종별 중간 연간 소득. 이 데이터를 그림 \@ref(fig:income-by-age-race-dodged) 및 \@ref(fig:income-by-race-age-dodged)에서와 같이 그룹화된 막대 그래프로 표시하는 대신 이제 네 개의 개별 일반 막대 그래프로 표시합니다. 이 선택은 막대 색상으로 범주형 변수를 인코딩할 필요가 없다는 장점이 있습니다. 데이터 출처: 미국 인구 조사국

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/income-by-age-race-faceted-1.png" alt="(ref:income-by-age-race-faceted)" width="754.285714285714" />
<p class="caption">(\#fig:income-by-age-race-faceted)(ref:income-by-age-race-faceted)</p>
</div>

막대 그룹을 나란히 그리는 대신 막대를 서로 겹쳐 쌓는 것이 더 바람직할 때가 있습니다. 개별 누적 막대가 나타내는 양의 합계 자체가 의미 있는 양일 때 누적이 유용합니다. 따라서 그림 \@ref(fig:income-by-age-race-dodged)의 중간 소득 값을 누적하는 것은 의미가 없지만(두 중간 소득 값의 합계는 의미 있는 값이 아님) 그림 \@ref(fig:boxoffice-vertical)의 주말 총수입 값을 누적하는 것은 의미가 있을 수 있습니다(두 영화의 주말 총수입 값의 합계는 두 영화의 총 총수입임). 또한 개별 막대가 개수를 나타내는 경우에도 누적이 적절합니다. 예를 들어 사람 데이터 세트에서 남성과 여성을 별도로 계산하거나 함께 계산할 수 있습니다. 남성을 나타내는 막대 위에 여성을 나타내는 막대를 쌓으면 결합된 막대 높이는 성별에 관계없이 총 사람 수를 나타냅니다.

1912년 4월 15일에 침몰한 대서양 횡단 여객선 타이타닉호의 승객에 대한 데이터 세트를 사용하여 이 원칙을 설명하겠습니다. 승무원을 제외하고 약 1300명의 승객이 탑승했습니다. 승객은 세 등급(1등석, 2등석 또는 3등석) 중 하나로 여행했으며 배에는 여성 승객보다 남성 승객이 거의 두 배나 많았습니다. 등급 및 성별별 승객 분석을 시각화하기 위해 각 등급 및 성별에 대해 별도의 막대를 그리고 각 등급에 대해 별도로 남성을 나타내는 막대 위에 여성을 나타내는 막대를 쌓을 수 있습니다(그림 \@ref(fig:titanic-passengers-by-class-sex)). 결합된 막대는 각 등급의 총 승객 수를 나타냅니다.

(ref:titanic-passengers-by-class-sex) 1등석, 2등석, 3등석으로 여행한 타이타닉호의 여성 및 남성 승객 수.

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/titanic-passengers-by-class-sex-1.png" alt="(ref:titanic-passengers-by-class-sex)" width="528" />
<p class="caption">(\#fig:titanic-passengers-by-class-sex)(ref:titanic-passengers-by-class-sex)</p>
</div>

그림 \@ref(fig:titanic-passengers-by-class-sex)는 제가 보여준 이전 막대 그래프와 명시적인 *y* 축이 없다는 점에서 다릅니다. 대신 각 막대가 나타내는 실제 숫자 값을 표시했습니다. 플롯이 소수의 다른 값만 표시하도록 의도된 경우 플롯에 실제 숫자를 추가하는 것이 좋습니다. 이렇게 하면 시각적 노이즈를 많이 추가하지 않고 플롯이 전달하는 정보의 양이 크게 증가하며 명시적인 *y* 축이 필요하지 않습니다.


## 점 그림과 히트맵

막대는 양을 시각화하는 유일한 옵션이 아닙니다. 막대의 중요한 한계 중 하나는 막대 길이가 표시된 양에 비례하도록 0에서 시작해야 한다는 것입니다. 일부 데이터 세트의 경우 이것이 비실용적이거나 주요 특징을 모호하게 만들 수 있습니다. 이 경우 *x* 또는 *y* 축을 따라 적절한 위치에 점을 배치하여 양을 나타낼 수 있습니다.

그림 \@ref(fig:Americas-life-expect)은 미주 25개국의 기대 수명 데이터 세트에 대한 이러한 시각화 접근 방식을 보여줍니다. 이들 국가의 시민은 60세에서 81세 사이의 기대 수명을 가지며 각 개별 기대 수명 값은 *x* 축을 따라 적절한 위치에 파란색 점으로 표시됩니다. 축 범위를 60세에서 81세 사이의 간격으로 제한함으로써 그림은 이 데이터 세트의 주요 특징을 강조합니다. 캐나다는 나열된 모든 국가 중에서 기대 수명이 가장 높고 볼리비아와 아이티는 다른 모든 국가보다 기대 수명이 훨씬 낮습니다. 막대 대신 점을 사용했다면(그림 \@ref(fig:Americas-life-expect-bars)) 훨씬 덜 설득력 있는 그림을 만들었을 것입니다. 이 그림의 막대가 너무 길고 거의 같은 길이를 가지므로 눈이 막대의 끝점보다는 막대의 중간으로 향하고 그림이 메시지를 전달하지 못합니다.

(ref:Americas-life-expect) 2007년 미주 국가의 기대 수명. 데이터 출처: 갭마인더 프로젝트

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/Americas-life-expect-1.png" alt="(ref:Americas-life-expect)" width="576" />
<p class="caption">(\#fig:Americas-life-expect)(ref:Americas-life-expect)</p>
</div>

(ref:Americas-life-expect-bars) 2007년 미주 국가의 기대 수명, 막대로 표시. 이 데이터 세트는 막대로 시각화하기에 적합하지 않습니다. 막대가 너무 길고 데이터의 주요 특징인 여러 국가 간 기대 수명 차이에서 주의를 분산시킵니다. 데이터 출처: 갭마인더 프로젝트

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/Americas-life-expect-bars-1.png" alt="(ref:Americas-life-expect-bars)" width="576" />
<p class="caption">(\#fig:Americas-life-expect-bars)(ref:Americas-life-expect-bars)</p>
</div>

그러나 막대나 점을 사용하든 관계없이 데이터 값의 순서에 주의해야 합니다. 그림 \@ref(fig:Americas-life-expect)과 \@ref(fig:Americas-life-expect-bars)에서는 국가가 기대 수명의 내림차순으로 정렬되어 있습니다. 대신 알파벳순으로 정렬하면 혼란스럽고 명확한 메시지를 전달하지 못하는 무질서한 점 구름이 됩니다(그림 \@ref(fig:Americas-life-expect-bad)).

(ref:Americas-life-expect-bad) 2007년 미주 국가의 기대 수명. 여기서 국가는 알파벳순으로 정렬되어 점이 무질서한 점 구름을 형성합니다. 이로 인해 그림을 읽기 어려우므로 "나쁨"으로 표시할 가치가 있습니다. 데이터 출처: 갭마인더 프로젝트

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/Americas-life-expect-bad-1.png" alt="(ref:Americas-life-expect-bad)" width="576" />
<p class="caption">(\#fig:Americas-life-expect-bad)(ref:Americas-life-expect-bad)</p>
</div>

지금까지의 모든 예는 막대의 끝점이나 점의 배치를 통해 위치 눈금을 따라 양을 나타냈습니다. 매우 큰 데이터 세트의 경우 결과 그림이 너무 복잡해지므로 이러한 옵션 중 어느 것도 적절하지 않을 수 있습니다. 그림 \@ref(fig:income-by-age-race-dodged)에서 이미 4개의 데이터 값으로 구성된 7개 그룹만으로도 복잡하고 읽기 쉽지 않은 그림이 될 수 있음을 보았습니다. 20개의 데이터 값으로 구성된 20개 그룹이 있다면 유사한 그림은 매우 혼란스러울 것입니다.

막대나 점을 통해 데이터 값을 위치에 매핑하는 대신 데이터 값을 색상에 매핑할 수 있습니다. 이러한 그림을 *히트맵*이라고 합니다. 그림 \@ref(fig:internet-over-time)은 이 접근 방식을 사용하여 1994년부터 2016년까지 23년 동안 20개국의 시간 경과에 따른 인터넷 사용자 비율을 보여줍니다. 이 시각화는 표시된 정확한 데이터 값을 결정하기 어렵게 만들지만(예: 2015년 미국의 정확한 인터넷 사용자 비율은 얼마인가?) 더 넓은 추세를 강조하는 데는 매우 효과적입니다. 어떤 국가에서 인터넷 사용이 일찍 시작되었고 어떤 국가에서 그렇지 않았는지, 그리고 데이터 세트가 다루는 마지막 해(2016년)에 어떤 국가의 인터넷 보급률이 높은지 명확하게 알 수 있습니다.

(ref:internet-over-time) 일부 국가의 시간 경과에 따른 인터넷 보급률. 색상은 해당 국가 및 연도의 인터넷 사용자 비율을 나타냅니다. 국가는 2016년 인터넷 사용자 비율별로 정렬되었습니다. 데이터 출처: 세계 은행

<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/internet-over-time-1.png" alt="(ref:internet-over-time)" width="754.285714285714" />
<p class="caption">(\#fig:internet-over-time)(ref:internet-over-time)</p>
</div>

이 장에서 논의된 다른 모든 시각화 접근 방식과 마찬가지로 히트맵을 만들 때 범주형 데이터 값의 순서에 주의해야 합니다. 그림 \@ref(fig:internet-over-time)에서 국가는 2016년 인터넷 사용자 비율별로 정렬됩니다. 이 순서는 영국, 일본, 캐나다, 독일이 미국보다 위에 배치되는데, 이는 이들 국가 모두 2016년에 미국보다 인터넷 보급률이 높기 때문입니다. 비록 미국이 더 이른 시기에 상당한 인터넷 사용을 보였음에도 불구하고 말입니다. 또는 국가를 인터넷 사용이 처음으로 20%를 초과한 연도별로 정렬할 수도 있습니다. 그림 \@ref(fig:internet-over-time2)에서 국가는 인터넷 사용이 처음으로 20%를 초과한 연도별로 정렬됩니다. 이 그림에서 미국은 위에서 세 번째 위치에 있으며 인터넷 사용이 시작된 시기에 비해 2016년 인터넷 사용량이 상대적으로 낮다는 점에서 두드러집니다. 이탈리아에서도 비슷한 패턴을 볼 수 있습니다. 반대로 이스라엘과 프랑스는 비교적 늦게 시작했지만 빠르게 성장했습니다.

(ref:internet-over-time2) 일부 국가의 시간 경과에 따른 인터넷 보급률. 국가는 인터넷 사용량이 처음으로 20%를 초과한 연도별로 정렬되었습니다. 데이터 출처: 세계 은행


<div class="figure" style="text-align: center">
<img src="visualizing_amounts_files/figure-html/internet-over-time2-1.png" alt="(ref:internet-over-time2)" width="754.285714285714" />
<p class="caption">(\#fig:internet-over-time2)(ref:internet-over-time2)</p>
</div>

그림 \@ref(fig:internet-over-time)과 \@ref(fig:internet-over-time2)는 모두 데이터의 유효한 표현입니다. 어떤 것이 선호되는지는 전달하려는 이야기에 따라 다릅니다. 이야기가 2016년 인터넷 사용에 관한 것이라면 그림 \@ref(fig:internet-over-time)이 더 나은 선택일 것입니다. 그러나 이야기가 인터넷의 초기 또는 후기 도입이 현재 사용량과 어떻게 관련되는지에 관한 것이라면 그림 \@ref(fig:internet-over-time2)가 더 바람직합니다.
